# fiblist:: Int -> []-> []
let 
  #head:: [a]->a
  head=builtins.head;
  #tail:: [a]->[a]
  tail=builtins.tail;
  fibList= n: l: if n==0 then l else  fibList (n -1) ([((head l) + (head (tail l)))] ++ l);
in
  fibList 3 [ 1 1 ]
  #fibList 2 [ 1 1 ]
  #fibList 0 [ 1 1 ]
  #fibList 1 [ 1 1 ]
