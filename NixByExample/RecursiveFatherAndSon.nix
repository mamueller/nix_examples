#syntactic sugar for the (recursive) let expression in Father and son
rec {
  james = { surname=dad.surname; age=26;};
  dad   = { surname="fisher"; age=james.age + 28;};
}
