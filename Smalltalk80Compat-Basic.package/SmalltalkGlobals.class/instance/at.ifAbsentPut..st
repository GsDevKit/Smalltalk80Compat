accessing
at: aKey ifAbsentPut: aBlock
  "Return the global at the given key. 
	If key is not included in the receiver store the result 
	of evaluating aBlock as new value."

  ^ (self symbolList objectNamed: aKey) ifNil: [ | value |
      value := aBlock value.
      (self symbolList objectNamed: self defaultSymbolListName)
        at: aKey asSymbol
        put: value ] ifNotNil: [ :anObject | anObject ]