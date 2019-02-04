let
  james = {surname =dad.surname; age=26;};
  dad   = {surname ="fisher"; age=james.age + 28;};
in 
  {james =james; dad =dad;}
