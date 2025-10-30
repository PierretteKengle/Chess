Class {
	#name : 'MyKnight',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyKnight >> id [
	
	^ 'N'
]

{ #category : 'rendering' }
MyKnight >> renderPieceOn: aSquare [

	^ aSquare renderKnight: self
]

{ #category : 'rendering' }
MyKnight >> renderTable [
    ^ Dictionary newFrom: {
        true -> (Dictionary newFrom: {
            #black -> 'N'.
            #white -> 'n'
        }).
        false -> (Dictionary newFrom: {
            #black -> 'M'.
            #white -> 'm'
        })
    }
]

{ #category : 'rendering' }
MyKnight >> symbolOnSquareColor: aColor [
    | colorKey |
    colorKey := (aColor respondsTo: #isBlack) 
        ifTrue: [ aColor isBlack ifTrue: [ #black ] ifFalse: [ #white ] ]
        ifFalse: [ aColor ]. 

    ^ ((self renderTable at: self isWhite) 
        at: colorKey 
        ifAbsent: [ '?' ])
]

{ #category : 'rendering' }
MyKnight >> targetSquaresLegal: aBoolean [

	^ {
		  (square right ifNotNil: [ :p | p right ifNotNil: #up ]).
		  (square right ifNotNil: [ :p | p right ifNotNil: #down ]).
		  (square left ifNotNil: [ :p | p left ifNotNil: #up ]).
		  (square left ifNotNil: [ :p | p left ifNotNil: #down ]).
		  (square up ifNotNil: [ :p | p up ifNotNil: #left ]).
		  (square up ifNotNil: [ :p | p up ifNotNil: #right ]).
		  (square down ifNotNil: [ :p | p down ifNotNil: #left ]).
		  (square down ifNotNil: [ :p | p down ifNotNil: #right ]) }
		  select: [ :s |
			  s notNil and: [ s hasPiece not or: [ s contents color ~= color ] ] ]
]
