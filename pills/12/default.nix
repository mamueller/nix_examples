let
  nixpkgs = import <nixpkgs> {};
 #  inherit (nixpkgs) stdenv libpng libjpeg libwebp libtiff libXpm expat yacc libtool fontconfig gd gts libdevil flex pango gettext autoreconfHook pkgconfig xorg cairo bzip2 which;
  mySpecialDerivation = import ./autotools.nix nixpkgs;
in 
  #nixpkgs.stdenv.mkDerivation {
  #  name="hello"; 
  #  src= ./hello-2.10.tar.gz;
  #  buildInputs= with nixpkgs; [gnutar gzip gnumake gcc binutils-unwrapped coreutils gawk gnused gnugrep patchelf findutils pkgconf ];
  #}

  {
  hello = import ./hello.nix { mkDerivation = mySpecialDerivation; };
  graphviz= import ./graphviz.nix {
    inherit (nixpkgs) stdenv  fetchFromGitLab  autoreconfHook  pkgconfig  cairo  expat  flex   fontconfig  gd  gettext  gts  libdevil  libjpeg  libpng  libtool  pango   yacc  fetchpatch  xorg ApplicationServices; };
}
