let
  pkgs = import <nixpkgs> {};
  inherit (pkgs) stdenv netcdffortran gfortran;
  ex_name="fortan90_hello";
  FortranBinDerivation = stdenv.mkDerivation {
  name ="helloFortran";
  src =./HelloFortran_src_dir;
  buildInputs = [ netcdffortran gfortran ];
  buildPhase=''
        gfortran hello.F90;
        echo "############ finished building ###############"
  '';
  installPhase=''
	mv a.out ${ex_name}
	chmod +x ${ex_name}
        mkdir -p "$out/bin"
	mv ${ex_name} "$out/bin/"
    
  '';
  };
in FortranBinDerivation
