
#type stream a U nil {head=a, tail=stream a;}
# implement a linked list which is a recursive data type (a linked list or link chain)
# a link in the chain consists of a value and a reference to the next link in the chain
let
  streamElemAt= s: i:
  if i == 0   then s.head
            else streamElemAt s.tail (i -1);
  factorialFrom = val: n: {
    head = val;
    tail = factorialFrom (val*(n +1)) (n +1);
  };
  factorial = factorialFrom 1 0;
in
  streamElemAt factorial 5
