let sumOfSquares =
  (args:
    let
      # builtins.hasAtt: string -> set ->bool
      x = if builtins.hasAttr "x" args then args.x else 0;
      y = if builtins.hasAttr "y" args then args.y else 0;
    in (x * x) + (y * y)
  );
in 
  { 
    res03=sumOfSquares {x=3;};
    res30=sumOfSquares {y=3;};
  }
