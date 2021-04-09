{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  name = "fio-test-result";
  #src = src/jobs;
  shellHook = ''
    echo "running fio tests"
    ${fio}/bin/fio --output fio.$$.out src/jobs
  '';
}
