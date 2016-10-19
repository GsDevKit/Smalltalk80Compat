accessing
listAtCategoryNamed: categoryName
  "Answer the array of elements associated with the name, categoryName."

  ^ ((self categoryDictionary at: categoryName asSymbol otherwise: #())
    select: [ :each | | obj |
      obj := GsSession currentSession symbolList objectNamed: each name asString.
      obj ~~ nil and: [ obj isBehavior ] ]) collect: [ :ea | ea name ]