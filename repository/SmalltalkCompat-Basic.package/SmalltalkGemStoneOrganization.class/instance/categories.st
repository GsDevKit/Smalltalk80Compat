accessing
categories
  "Answer an Array of categories (names)."

  ^ categories
    ifNil: [ categories := self classOrganizer categories keys asArray sortAscending
        collect: [ :each | each asSymbol ] ]