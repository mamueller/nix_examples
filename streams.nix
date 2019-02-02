let
  cons    = head: tail: { head = head; tail =tail; };
  iterate = step: head: cons head (iterate step (step head)); 
  map     = f: {head, tail} : cons (f head) (map f tail);
  elemAt  = l: i: if i == 0 then l.head
                            else elemAt l.tail (i - 1);

in {
  iterate = iterate;
  map     = map;
  elemAt  = elemAt;
}
