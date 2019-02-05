# writing using data61 `fp-course` as a template

{ nixpkgs ? import <nixpkgs> {}, compiler ? "default" }:

let
  inherit (nixpkgs) pkgs;

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  H99 = haskellPackages.callPackage ./H99.nix {};
  modified-H99 = pkgs.haskell.lib.overrideCabal H99 (drv: {
    # Dodgy fun times, make sure that
    # - the tests compile
    # - the tests failing doesn't cause the build to fail
    checkPhase = "true";
  });
in
  modified-H99

