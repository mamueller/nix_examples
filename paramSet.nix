let 
  sumOfSquares =args: 
  let
      x=args.x;
      y=args.y;
  in
      x*x+y*y;
in 
  sumOfSquares {x=3; y=7;}
