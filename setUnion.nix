let 
  sumOfSquares= args': 
    let 
      args = {x=0;y=0;} // args'; 
    in
      let 
        x=args.x;
        y=args.y;
      in
      x * x + y *y; 

  sumOfSquares'= { x ? 0, y ? 0 }: (x *x + y *y);
in 
  {
    r30=sumOfSquares {x=3;};
    r03=sumOfSquares {y=3;};
    r30'=sumOfSquares' {x=3;};
    r03'=sumOfSquares' {y=3;};
  }
