
let
  streamElemAt= s: i:
  if i == 0   then s.head
            else streamElemAt s.tail (i -1);
  factorialFrom = val: n: {
    head = val;
    tail = factorialFrom (val*(n + 1)) (n + 1) ;
  };
  factorial = factorialFrom 1 0;
in 
  (import ./streams.nix).elemAt factorial 5
