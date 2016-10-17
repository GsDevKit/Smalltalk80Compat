accessing
classOrganizer
  "Answer the classOrganizer"

  ^ classOrganizer ifNil: [ classOrganizer := ClassOrganizer new ]