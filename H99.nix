# generated using cabal2nix from H99.cabal (edit)

{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "H99";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base ];
  doHaddock = false;
  description = "Ninty-Nine Haskell Problems modernized";
  license = stdenv.lib.licenses.mit;
}
