let 
  max= x: y:
  let 
    attempt =builtins.tryEval (
      assert builtins.isInt x;
      assert builtins.isInt y;
      if x < y  then y
                else x
    );
  in
    if attempt.success  then attempt.value
                        else throw "max: int -> int -> int";
in 
  max 5 "six"
