let 
  add = {a ? 3, b } : a + b ;
  values = { a = 3; b = 5; c = 10; };
  callPackageTest1 = set: f: f (builtins.intersectAttrs ( builtins.functionArgs f) set);
  callPackageTest2 = set: f: overrides: f ((builtins.intersectAttrs ( builtins.functionArgs f) set) // overrides);
in 
  { 
    v1 = callPackageTest1 values add;
    v2 = callPackageTest2 values add { b = 12; };
  }

