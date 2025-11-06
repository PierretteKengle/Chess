Class {
	#name : 'MyBishop',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyBishop >> id [
	
	^ 'B'
]

{ #category : 'rendering' }
MyBishop >> renderPieceOn: aSquare [

	^ aSquare renderPiece: self
	
]

{ #category : 'rendering' }
MyBishop >> renderTable [
    ^ Dictionary newFrom: {
        true -> (Dictionary newFrom: {
            #black -> 'B'.
            #white -> 'b'
        }).
        false -> (Dictionary newFrom: {
            #black -> 'V'.
            #white -> 'v'
        })
    }
]

{ #category : 'as yet unclassified' }
MyBishop >> symbolOnSquareColor: aColor [
    | colorKey |
    colorKey := (aColor respondsTo: #isBlack)
        ifTrue: [ aColor isBlack ifTrue: [ #black ] ifFalse: [ #white ] ]
        ifFalse: [ aColor ].

    ^ ((self renderTable at: self isWhite)
        at: colorKey
        ifAbsent: [ '?' ])
]

{ #category : 'rendering' }
MyBishop >> targetSquaresLegal: aBoolean [

	^ (self upRightDiagonalLegal: aBoolean)
	  , (self upLeftDiagonalLegal: aBoolean)
	  , (self downRightDiagonalLegal: aBoolean)
	  , (self downLeftDiagonalLegal: aBoolean)
]
