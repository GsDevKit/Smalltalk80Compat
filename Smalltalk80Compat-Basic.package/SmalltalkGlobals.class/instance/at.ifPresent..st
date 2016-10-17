accessing
at: key ifPresent: aBlock
  "Lookup the given key in the globals. If it is present, answer the value of evaluating the given block with the value associated with the key. Otherwise, answer nil."

  ^ (self symbolList objectNamed: key)
    ifNotNil: [ :anObject | aBlock value: anObject ]