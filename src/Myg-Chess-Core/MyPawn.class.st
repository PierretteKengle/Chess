Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPiece: self
]

{ #category : 'rendering' }
MyPawn >> renderTable [
    ^ Dictionary newFrom: {
        true -> (Dictionary newFrom: {
            #black -> 'P'.
            #white -> 'p'
        }).
        false -> (Dictionary newFrom: {
            #black -> 'O'.
            #white -> 'o'
        })
    }
]

{ #category : 'as yet unclassified' }
MyPawn >> symbolOnSquareColor: aColor [
    | colorKey |
    colorKey := (aColor isBlack) ifTrue: [ #black ] ifFalse: [ #white ].
    ^ ((self renderTable at: self isWhite)
        at: colorKey
        ifAbsent: [ '?' ])
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

	^ (self isWhite
		   ifTrue: [ { square up } ]
		   ifFalse: [ { square down } ]) select: [ :s |
		  s notNil and: [
			  s hasPiece not or: [ s contents color ~= color ] ] ]
]
