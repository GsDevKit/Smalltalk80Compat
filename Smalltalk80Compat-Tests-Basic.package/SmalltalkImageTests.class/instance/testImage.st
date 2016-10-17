tests
testImage
  | st sentinel |
  sentinel := Object new.
  st := SmalltalkImage new.
  self assert: (st at: 'Object') = Object.
  self assert: (st at: #'Object') = Object.
  self
    should: [ st at: self nameOfClassThatDoesNotExist ]
    raise: (ErrorSymbols at: #'rtErrKeyNotFound').
  self
    assert: (st at: self nameOfClassThatDoesNotExist ifAbsent: [ true ]) == true.
  self assert: (st at: 'Object' ifAbsentPut: [ self assert: false ]) == Object.
  self
    assert:
      (st at: self nameOfClassThatDoesNotExist ifAbsentPut: [ sentinel ]) == sentinel.
  self assert: (UserGlobals at: self nameOfClassThatDoesNotExist) == sentinel.
  self
    assert:
      (UserGlobals at: self nameOfClassThatDoesNotExist asSymbol) == sentinel.
  self
    assert: (st at: #'Object' ifPresent: [ :class | class == Object ]) == true