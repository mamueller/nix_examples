let
  pkgs = import <nixpkgs> {};
  mkDerivation = import ./autotools.nix pkgs;
in mkDerivation {
  name ="helloFortran";
  #src =./HelloFortran_src_dir;
  src =./HelloFortran_src_dir.tgz;
  buildInputs = with pkgs; [ netcdffortran gfortran ];
}
