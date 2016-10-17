accessing
at: key
  "Answer the value associated with the key."

  ^ (self symbolList objectNamed: key) ifNil: [ self errorKeyNotFound: key ]