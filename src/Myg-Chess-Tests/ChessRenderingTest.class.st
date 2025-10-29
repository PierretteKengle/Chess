Class {
	#name : 'ChessRenderingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
ChessRenderingTest >> testKnightRenderingOnBlackSquareWhenPieceIsBlack [
    | square piece |
    square := MyChessSquare black.
    piece  := MyKnight black.
    self assert: (square renderPiece: piece) = 'M'.
]

{ #category : 'tests' }
ChessRenderingTest >> testKnightRenderingOnBlackSquareWhenPieceIsWhite [
    | square piece |
    square := MyChessSquare black.
    piece  := MyKnight white.
    self assert: (square renderPiece: piece) = 'N'.
]

{ #category : 'tests' }
ChessRenderingTest >> testKnightRenderingOnWhiteSquareWhenPieceIsBlack [
    | square piece |
    square := MyChessSquare white.
    piece  := MyKnight black.
    self assert: (square renderPiece: piece) = 'm'.
]

{ #category : 'tests' }
ChessRenderingTest >> testKnightRenderingOnWhiteSquareWhenPieceIsWhite [
    | square piece |
    square := MyChessSquare white. "ou MyChessSquare color: #white selon implémentation"
    piece  := MyKnight white. "supposons des constructeurs/initialiseurs"
    self assert: (square renderPiece: piece) = 'n'. "ou la convention choisie"
]
