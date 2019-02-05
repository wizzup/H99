# writing using data61 `fp-course` as a template

{ nixpkgs ? import <nixpkgs> {}, compiler ? "default"}:
with nixpkgs;
with haskellPackages;

let
  inherit (nixpkgs) pkgs;

  drv = import ./default.nix { inherit nixpkgs compiler; };

  drvWithTools = haskell.lib.addBuildDepends drv [ cabal-install doctest ];
in
  if lib.inNixShell then drvWithTools.env else drvWithTools
