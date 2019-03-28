# load this file into nix-repl by
# with l=(import ./fix.nix) 
let
    fix = f: let fixpoint = f fixpoint; in fixpoint;
    myfunc = s: { a=1; b=s.a+1; c=s.b+2;};
    pkgs= self: { a=3; b=4; c=self.a + self.b;};
    overrides = {a=1;b=2;};
    newpkgs = pkgs ( newpkgs // overrides );
in {
  res1= newpkgs;
  res2= newpkgs // overrides;
  res3= fix myfunc;
}

