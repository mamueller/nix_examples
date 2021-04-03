{ pkgs ? import <nixpkgs> {} }:

let
  myapp = pkgs.python3Packages.buildPythonApplication {
    pname = "myapp";
    src = ./.;
    version = "0.1";
    propagatedBuildInputs = [ pkgs.python3Packages.flask pkgs.qemu];
  };
in
  myapp
#   pkgs.stdenv.mkDerivation {
#    name = "myapp_with_deps";
#    propagatedBuildInputs = [myapp ];#pkgs.which ];
#  }
