{
  description = "Nix related tooling for a command line interface for audible. With the CLI you can download your Audible books, cover, chapter files & conver them.";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    systems.url = "github:nix-systems/x86_64-linux";
    flake-compat.url = "https://flakehub.com/f/edolstra/flake-compat/1.tar.gz";
    nix-filter.url = "github:numtide/nix-filter";
    devshell.url = "github:numtide/devshell";
  };
  outputs = {
    self,
    nixpkgs,
    systems,
    ...
  } @ inputs: let
    eachSystem = nixpkgs.lib.genAttrs (import systems);
    pkgsFor = eachSystem (system: (nixpkgs.legacyPackages.${system}.extend inputs.devshell.overlays.default));
    tex-minimal-deps-builder = texlive-pkg: (texlive-pkg.combine {
      inherit
        (texlive-pkg)
        scheme-small
        beamer
        latex-bin
        latexmk
        silence
        appendixnumberbeamer
        fira
        fontaxes
        mwe
        noto
        csquotes
        fontspec
        infwarerr
        kvoptions
        # without \RequirePackage{lmodern} and without cm-super
        
        # Otherwise I was getting errors: 3/bin/pdflatex (file ecss0800): Font ecss0800 at 600 not found
        
        # https://tex.stackexchange.com/questions/267675/pdftex-error-pdflatex-file-ecbx0800-font-ecbx0800-at-600-not-found
        
        cm-super
        ;
    });
  in {
    formatter = eachSystem (system: pkgsFor.${system}.alejandra);
    checks = eachSystem (system: self.packages.${system});
    # should probably be call package
    packages = eachSystem (system: let
      pkgs = pkgsFor.${system};
    in {
      default = pkgs.callPackage nix/minimal_examples.nix {
        nix-filter = inputs.nix-filter;
        tex-deps = tex-minimal-deps-builder pkgs.texlive;
      };
    });
    devShells = eachSystem (
      system: let
        pkgs = pkgsFor.${system};
      in {
        default = pkgs.devshell.mkShell {
          packages = [
            (tex-minimal-deps-builder pkgs.texlive)
          ];
        };
      }
    );
  };
}
