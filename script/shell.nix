# shell.nix for nix-shell
# Overrideable ghc version by passing `compiler` argument
# Example:
# $ nix-shell shell.nix --argstr compiler ghc7103
#
# To list avaliable ghc version:
# $ nix-env -qaPA nixos.haskell.compiler

{ pkgs ? import <nixpkgs> {}, compiler ? "default" }:

with pkgs;

let
  hpkgs = if compiler == "default"
          then haskellPackages
          else haskell.packages.${compiler};

  ghc = with hpkgs;
    ghcWithPackages (ps: with ps; [
    scalpel
    tagsoup
  ]);

  hstools = with hpkgs;
  [
    hie86
    doctest
  ];

  py3deps = with python3Packages; python3.buildEnv.override {
    extraLibs = [
      beautifulsoup4
      requests
    ];
  };

  py3tools = with python3Packages; [
      jedi
      python-language-server
  ];
in
  mkShell {
    name = "${compiler}-sh";

    buildInputs = [
      ghc hstools
      py3deps py3tools
    ];

    shellHook = ''
      eval "$(egrep ^export "$(type -p ghc)")"
      export PS1="\[\033[1;32m\][$name:\W]\n$ \[\033[0m\]"
      export GHCRTS='-M1G'
    '';
}
