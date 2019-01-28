let
    kfibs = k: l: m: if k==0 then m else kfibs (k - 1) m (l + m) ; 

    fib = k: kfibs k 1 1;

in 
   fib 2
