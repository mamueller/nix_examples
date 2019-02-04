source $stdenv/setup 

PATH=$perl/bin:$PATH 

tar xvfz $src 3
cd hello-*
./configure --prefix=$out 4
make 5
make install
