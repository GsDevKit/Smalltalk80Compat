running
setUp
  super setUp.
  UserGlobals
    removeKey: self nameOfClassThatDoesNotExist asSymbol
    ifAbsent: [  ]