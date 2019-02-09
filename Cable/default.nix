let
  pkgs = import <nixpkgs> {};
  mkDerivation = import ./autotools.nix pkgs;
in mkDerivation {
  name ="cable";
  src =./cable2.0-trunk.tgz;
  buildInputs = with pkgs; [ mksh gfortran netcdffortran ];
}
