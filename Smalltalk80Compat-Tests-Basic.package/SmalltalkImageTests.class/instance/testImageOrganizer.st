tests
testImageOrganizer
  | st organization categories |
  st := SmalltalkImage new.
  organization := st organization.
  categories := organization categories.
  self assert: (categories includes: self class category asSymbol).
  self assert: ((organization listAtCategoryNamed: self class category)
        includes: self class name asSymbol).
  self
    assert: ((organization listAtCategoryNamed: self class category asString)
        includes: self class name asSymbol).
  self
    assert: ((organization listAtCategoryNamed: self class category asSymbol)
        includes: self class name asSymbol)