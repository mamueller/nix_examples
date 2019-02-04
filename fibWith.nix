with (import ./streams.nix);
let 
  fibsFrom = n: m: {
    head = n;
    tail = fibsFrom m (n + m);
  };
  fibs =fibsFrom 1 1;
in 
  elemAt fibs 30
