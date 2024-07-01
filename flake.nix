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
    tex-deps-builder = texlive-pkg: (texlive-pkg.combine {
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
        # only for demo
        
        biblatex
        biber
        # only for language examples
        
        haranoaji
        haranoaji-extra
        babel
        luatexja
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
    in rec {
      demo-pdflatex = pkgs.callPackage nix/default.nix {
        inherit self;
        nix-filter = inputs.nix-filter;
        tex-deps = tex-deps-builder pkgs.texlive;
        tex-directory = ".";
      };
      demo-pdflatex-montage =
        pkgs.runCommand "demo-pdflatex-montage" {
          src = ./scripts;
          buildInputs = [demo-pdflatex pkgs.nushell pkgs.imagemagickBig];
        } ''
          mkdir $out
          nu --no-history --no-config-file \
            $src/create_pngs.nu create-montage demo \
            --src-dir ${demo-pdflatex} --target-dir $out
        '';
      minimal-examples-pdflatex = pkgs.callPackage nix/default.nix {
        inherit self;
        nix-filter = inputs.nix-filter;
        tex-deps = tex-deps-builder pkgs.texlive;
        tex-directory = "minimal_examples";
      };
      minimal-examples-lualatex = pkgs.callPackage nix/default.nix {
        inherit self;
        nix-filter = inputs.nix-filter;
        tex-deps = tex-deps-builder pkgs.texlive;
        use-lualatex = true;
        tex-directory = "minimal_examples";
      };
      minimal-examples-pngs =
        pkgs.runCommand "minimal-examples-pngs" {
          src = ./scripts;
          buildInputs = [minimal-examples-lualatex pkgs.nushell pkgs.imagemagickBig];
        } ''
          mkdir $out
          nu --no-history --no-config-file \
            $src/create_pngs.nu convert-pdfs-to-pngs \
            --src-dir ${minimal-examples-lualatex} --target-dir $out --density 600

        '';
      compare-examples = pkgs.callPackage nix/default.nix {
        inherit self;
        nix-filter = inputs.nix-filter;
        tex-deps = tex-deps-builder pkgs.texlive;
        use-lualatex = true;
        tex-directory = "compare_examples";
      };
      # what is runCommand ?
      # just need to call command and provide the given input and output dir!
      compare-examples-montage =
        pkgs.runCommand "compare-examples-pdf" {
          src = ./scripts;
          buildInputs = [compare-examples pkgs.nushell pkgs.imagemagickBig];
        } ''
          mkdir $out
          nu --no-history --no-config-file \
            $src/create_pngs.nu create-montage compare_examples \
            --src-dir ${compare-examples} --target-dir $out
        '';
      multi-lang-examples = pkgs.callPackage nix/default.nix {
        inherit self;
        nix-filter = inputs.nix-filter;
        tex-deps = tex-deps-builder pkgs.texlive;
        use-lualatex = true;
        tex-directory = "multi_lang_examples";
      };
      multi-lang-examples-montage =
        pkgs.runCommand "multi-lang-examples-pdf" {
          src = ./scripts;
          buildInputs = [multi-lang-examples pkgs.nushell pkgs.imagemagickBig];
        } ''
          mkdir $out
          nu --no-history --no-config-file \
            $src/create_pngs.nu create-montage multi_lang_examples \
            --src-dir ${multi-lang-examples} --target-dir $out
        '';
      documentation-artifacts = pkgs.symlinkJoin {
        name = "documentation-artifacts";
        paths = [
          multi-lang-examples-montage
          compare-examples-montage
          demo-pdflatex
          demo-pdflatex-montage
          minimal-examples-pngs
          minimal-examples-lualatex
        ];
      };
    });
    devShells = eachSystem (
      system: let
        pkgs = pkgsFor.${system};
      in {
        default = pkgs.devshell.mkShell {
          packages = [
            (tex-deps-builder pkgs.texlive)
            pkgs.imagemagickBig
            pkgs.fd
          ];
        };
      }
    );
  };
}
