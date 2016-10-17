accessing
at: aKey ifAbsentPut: aBlock
  "Return the global at the given key. 
	If key is not included in the receiver store the result 
	of evaluating aBlock as new value."

  ^ (self symbolList objectNamed: self defaultSymbolListName)
    ifNil: [ | value |
      value := aBlock value.
      self at: aKey put: value ]
    ifNotNil: [ :anObject | anObject ]