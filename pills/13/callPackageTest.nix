let 
  add = {a ? 3, b } : a + b ;
  values = { a = 3; b = 5; c = 10; };
  callPackageTest = set: f: f (builtins.intersectAttrs ( builtins.functionArgs f) set);
in 
  callPackageTest values add

