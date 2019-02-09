let
  pkgs = import <nixpkgs> {};
  mkDerivation = import ./autotools.nix pkgs;
in mkDerivation {
  name ="hello";
  src =./HelloFortran.tgz;
  buildInputs = with pkgs; [ netcdffortran gfortran ];
}
