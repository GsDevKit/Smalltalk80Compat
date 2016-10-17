accessing
includesKey: key
  "Answer whether the receiver has a key equal to the argument, key."

  ^ (self symbolList objectNamed: key) ~~ nil