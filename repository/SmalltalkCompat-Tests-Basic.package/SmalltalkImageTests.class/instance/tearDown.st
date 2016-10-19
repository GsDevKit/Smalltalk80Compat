running
tearDown
  super tearDown.
  UserGlobals
    removeKey: self nameOfClassThatDoesNotExist asSymbol
    ifAbsent: [  ]