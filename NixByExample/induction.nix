let

  # induction a -> (a->int->a) -> n ->a
  induction = base: comb: n:  if n==0 then base
                                      else (comb (induction base comb (n - 1)) n);
  
  eAt = builtins.elemAt;
  sum = x: y: (x+y);
  prod = x: y: x*y;
  fibList= l: n: l ++ [ ((eAt l (n +1)) + (eAt l n)) ]; 
in { 
  s4= induction 0 sum 4;
  fact4= induction 1 prod 4;
  #fibs= induction [ 1 1 ] fibList 4;
  fibs0= fibList  [ 1 1 ] 0;
  fibs1= fibList  [ 1 1 2 ] 1;
  fibs2= fibList  [ 1 1 2 3] 2;
  ind0= induction [ 1 1 ] fibList 0;
  ind1= induction [ 1 1 ] 1;
  ind2= induction [ 1 1 ] 2;
}

