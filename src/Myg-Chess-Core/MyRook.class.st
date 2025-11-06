Class {
	#name : 'MyRook',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyRook >> id [
	^ 'R'
]

{ #category : 'rendering' }
MyRook >> renderPieceOn: aSquare [

	^ aSquare renderPiece: self
]

{ #category : 'rendering' }
MyRook >> renderTable [
    ^ Dictionary newFrom: {
        true -> (Dictionary newFrom: {
            #black -> 'R'.
            #white -> 'r'
        }).
        false -> (Dictionary newFrom: {
            #black -> 'T'.
            #white -> 't'
        })
    }
]

{ #category : 'rendering' }
MyRook >> symbolOnSquareColor: aColor [
    | colorKey |
    colorKey := (aColor isBlack) ifTrue: [ #black ] ifFalse: [ #white ].
    ^ ((self renderTable at: self isWhite)
        at: colorKey
        ifAbsent: [ '?' ])
]

{ #category : 'rendering' }
MyRook >> targetSquares [

	^ self upFile , self downFile , self leftFile , self rightFile
]

{ #category : 'rendering' }
MyRook >> targetSquaresLegal: aBoolean [

	^ (self upFileLegal: aBoolean) , (self downFileLegal: aBoolean)
	  , (self leftFileLegal: aBoolean) , (self rightFileLegal: aBoolean)
]
