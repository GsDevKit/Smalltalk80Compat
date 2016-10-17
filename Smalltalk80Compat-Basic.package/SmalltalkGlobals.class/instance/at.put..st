accessing
at: aKey put: anObject
  "Set the value at key to be anObject.  If key is not found, create a
	new entry for key and set is value to anObject. Answer anObject."

  (self symbolList objectNamed: self defaultSymbolListName)
    at: aKey asSymbol
    put: anObject.
  ^ anObject