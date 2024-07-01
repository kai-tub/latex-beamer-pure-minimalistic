{
  self,
  lib,
  stdenvNoCC,
  nix-filter,
  coreutils,
  findutils,
  version ? "git",
  tex-deps,
  use-lualatex ? false,
  use-pdflatex ? true,
  tex-directory ? "minimal_examples",
}:
# https://nixos.wiki/wiki/TexLive
# https://flyx.org/nix-flakes-latex/
stdenvNoCC.mkDerivation rec {
  pname = "pure-minimalistic-${tex-directory}";
  inherit version;

  src = nix-filter {
    root = ./..;
    include = [
      # Include the "src" path relative to the root
      (nix-filter.lib.matchExt "sty")
      (nix-filter.lib.matchExt "bib")
      "logos/"
      "${tex-directory}/"
    ];
  };

  # phases = ["unpackPhase" "buildPhase" "installPhase"];

  buildInputs = [
    tex-deps
    coreutils
    findutils
    # cntr is kinda broken. Requires these utils to be available
    # in buildinputs
    # cntr
    # breakpointHook
    # bash
  ];

  # TODO: Figure out how to wrap this in a shellchecker and with correct flags
  # -pretex="\pdfvariable suppressoptionalinfo 512\relax" \ # lualatex
  buildPhase =
    ''
      export PATH="${lib.makeBinPath buildInputs}";
      mkdir -p .cache/texmf-var
    ''
    + lib.optionalString (tex-directory != ".") ''
      mv ${tex-directory}/* .
    ''
    + ''
      env TEXMFHOME=.cache TEXMFVAR=.cache/texmf-var \
        SOURCE_DATE_EPOCH=${builtins.toString self.lastModified or 0} \
        latexmk \
        -file-line-error -interaction=nonstopmode \
        -pdf \
    ''
    + lib.optionalString use-pdflatex ''
      -usepretex='\pdftrailerid{}' \
    ''
    + lib.optionalString use-lualatex ''
      -lualatex \
      -usepretex='\pdfvariable suppressoptionalinfo 512\relax' \
    ''
    + ''
      *.tex
    '';

  installPhase = ''
    mkdir -p $out
    cp *.pdf $out/
  '';
}
