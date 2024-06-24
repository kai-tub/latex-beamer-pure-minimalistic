{
  lib,
  stdenvNoCC,
  nix-filter,
  coreutils,
  cntr,
  bash,
  findutils,
  version ? "git",
  tex-deps,
  breakpointHook,
}:
# https://nixos.wiki/wiki/TexLive
# https://flyx.org/nix-flakes-latex/
stdenvNoCC.mkDerivation rec {
  pname = "pure-minimalistic-minimal-examples";
  inherit version;

  src = nix-filter {
    root = ./..;
    include = [
      # Include the "src" path relative to the root
      (nix-filter.lib.matchExt "sty")
      (nix-filter.lib.matchExt "bib")
      "logos/"
      "minimal_examples/"
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
  buildPhase = ''
    export PATH="${lib.makeBinPath buildInputs}";
    mkdir -p .cache/texmf-var

    mv minimal_examples/* .

    env TEXMFHOME=.cache TEXMFVAR=.cache/texmf-var \
      latexmk -pdf -file-line-error -interaction=nonstopmode \
      *.tex
  '';

  installPhase = ''
    mkdir -p $out
    cp *.pdf $out/
  '';
}
