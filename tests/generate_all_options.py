import shutil
import argparse
import subprocess
from pathlib import Path
from typing import Optional

OPTIONS = {
    "Default": "",
    "MaxSlidesOption": "showmaxslides",
    "DarkModeOption": "darkmode",
}


def parse_args():
    parser = argparse.ArgumentParser(
        description="Test builder for all possible theme options."
    )
    parser.add_argument(
        "--build-command",
        type=str,
        default="latexmk -interaction=nonstopmode -file-line-error -pdf",
        help="Command which will be run in shell to build template document. The document will be appended to end of command!",
    )
    parser.add_argument(
        "--ci-mode",
        action="store_true",
        help="If set, build-command will be ignored and only the .tex files will be generated",
    )
    return parser.parse_args()


def build_tmp() -> Path:
    tmp = Path(__file__).parent / "tmp"
    tmp.mkdir(exist_ok=True)
    return tmp


def copy_source_files(src: Path, dst: Path):
    for theme_file in src.glob("*.sty"):
        shutil.copy(theme_file, dst)


def copy_logo_dir(src: Path, dst: Path):
    logos_path_name = "logos"
    logos_src = src / logos_path_name
    logos_dst = dst / logos_path_name
    # Make sure to always us up-to-date version
    shutil.rmtree(logos_dst, ignore_errors=True)
    shutil.copytree(
        logos_src, logos_dst,
    )


def build_documents(
    dst: Path, build_command: Optional[str] = None, template_name: str = "template.tex"
):
    cwd = Path(__file__).parent
    template_file = cwd / template_name
    template_code = template_file.read_text()
    cd_work_dir = f"cd {dst.absolute()}"

    for name, option in OPTIONS.items():
        test_file = dst / f"test_{name}.tex"
        target_code = template_code.replace(
            r"\usetheme[]{pureminimalistic}",
            rf"\usetheme[{option}]{{pureminimalistic}}",
        )
        test_file.write_text(target_code)

        if build_command is not None:
            subprocess.run(
                f"{cd_work_dir} && {build_command} {test_file.name}",
                shell=True,
                check=True,
            )


def main():
    args = parse_args()
    tmp_path = build_tmp()
    src_path = Path(__file__).parent / ".."
    src_path = src_path.resolve()
    copy_source_files(src_path, tmp_path)
    copy_logo_dir(src_path, tmp_path)
    if args.ci_mode:
        build_command = None
    else:
        build_command = args.build_command
    build_documents(tmp_path, build_command)


if __name__ == "__main__":
    main()
