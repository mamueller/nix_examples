let 
  pkgs = import <nixpkgs> {};
  #ft = pkgs.stdenv.mkDerivation {
  ft = pkgs.mkShell {
    name = "fiotest";
    src = ./src;
    buildInputs = [pkgs.fio];
    shellHook = ''
      echo "running fio tests"
      fio src/jobs
    '';
};
in ft
