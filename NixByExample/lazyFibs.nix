#type stream a U nil {head=a, tail=stream a;}
# implement a linked list which is a recursive data type (a linked list or link chain)
# a link in the chain consists of a value and a reference to the next link in the chain
let
  streamElemAt= s: i:
  if i == 0   then s.head
            else streamElemAt s.tail (i -1);

  fibsFromStartValuePair = m: n: { 
    head = m;
    tail = fibsFromStartValuePair n (m + n);
  };
  fibs = fibsFromStartValuePair 1 1 ;
  
in
  streamElemAt fibs 2
