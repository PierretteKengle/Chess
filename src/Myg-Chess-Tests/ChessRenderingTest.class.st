Class {
	#name : 'ChessRenderingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
ChessRenderingTest >> testBishopRenderingOnBlackSquareWhenPieceIsBlack [
    | square piece |
    square := MyChessSquare black.
    piece := MyBishop black.
    self assert: (square renderPiece: piece) equals: 'V'.
]

{ #category : 'tests' }
ChessRenderingTest >> testBishopRenderingOnBlackSquareWhenPieceIsWhite [
    | square piece |
    square := MyChessSquare black.
    piece := MyBishop white.
    self assert: (square renderPiece: piece) equals: 'B'.
]

{ #category : 'tests' }
ChessRenderingTest >> testBishopRenderingOnWhiteSquareWhenPieceIsBlack [
    | square piece |
    square := MyChessSquare white.
    piece := MyBishop black.
    self assert: (square renderPiece: piece) equals: 'v'.
]

{ #category : 'tests' }
ChessRenderingTest >> testBishopRenderingOnWhiteSquareWhenPieceIsWhite [
    | square piece |
    square := MyChessSquare white.
    piece := MyBishop white.
    self assert: (square renderPiece: piece) equals: 'b'.

]

{ #category : 'tests' }
ChessRenderingTest >> testKingRenderingOnBlackSquareWhenPieceIsBlack [
    | square piece |
    square := MyChessSquare black.
    piece := MyKing black.
    self assert: (square renderPiece: piece) equals: 'L'.


]

{ #category : 'tests' }
ChessRenderingTest >> testKingRenderingOnBlackSquareWhenPieceIsWhite [
    | square piece |
    square := MyChessSquare black.
    piece := MyKing white.
    self assert: (square renderPiece: piece) equals: 'K'.


]

{ #category : 'tests' }
ChessRenderingTest >> testKingRenderingOnWhiteSquareWhenPieceIsBlack [
    | square piece |
    square := MyChessSquare white.
    piece := MyKing black.
    self assert: (square renderPiece: piece) equals: 'l'.


]

{ #category : 'tests' }
ChessRenderingTest >> testKingRenderingOnWhiteSquareWhenPieceIsWhite [
    | square piece |
    square := MyChessSquare white.
    piece := MyKing white.
    self assert: (square renderPiece: piece) equals: 'k'.
]

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

{ #category : 'tests' }
ChessRenderingTest >> testPawnRenderingOnBlackSquareWhenPieceIsBlack [
    | square piece |
    square := MyChessSquare black.
    piece := MyPawn black.
    self assert: (square renderPiece: piece) equals: 'O'.




]

{ #category : 'tests' }
ChessRenderingTest >> testPawnRenderingOnBlackSquareWhenPieceIsWhite [
    | square piece |
    square := MyChessSquare black.
    piece := MyPawn white.
    self assert: (square renderPiece: piece) equals: 'P'.


]

{ #category : 'tests' }
ChessRenderingTest >> testPawnRenderingOnWhiteSquareWhenPieceIsBlack [
    | square piece |
    square := MyChessSquare white.
    piece := MyPawn black.
    self assert: (square renderPiece: piece) equals: 'o'.


]

{ #category : 'tests' }
ChessRenderingTest >> testPawnRenderingOnWhiteSquareWhenPieceIsWhite [
    | square piece |
    square := MyChessSquare white.
    piece := MyPawn white.
    self assert: (square renderPiece: piece) equals: 'p'.
]

{ #category : 'tests' }
ChessRenderingTest >> testQueenRenderingOnBlackSquareWhenPieceIsBlack [
    | square piece |
    square := MyChessSquare black.
    piece := MyQueen black.
    self assert: (square renderPiece: piece) equals: 'W'.


]

{ #category : 'tests' }
ChessRenderingTest >> testQueenRenderingOnBlackSquareWhenPieceIsWhite [
    | square piece |
    square := MyChessSquare black.
    piece := MyQueen white.
    self assert: (square renderPiece: piece) equals: 'Q'.


]

{ #category : 'tests' }
ChessRenderingTest >> testQueenRenderingOnWhiteSquareWhenPieceIsBlack [
    | square piece |
    square := MyChessSquare white.
    piece := MyQueen black.
    self assert: (square renderPiece: piece) equals: 'w'.


]

{ #category : 'tests' }
ChessRenderingTest >> testQueenRenderingOnWhiteSquareWhenPieceIsWhite [
    | square piece |
    square := MyChessSquare white.
    piece := MyQueen white.
    self assert: (square renderPiece: piece) equals: 'q'.
]

{ #category : 'tests' }
ChessRenderingTest >> testRookRenderingOnBlackSquareWhenPieceIsBlack [
    | square piece |
    square := MyChessSquare black.
    piece := MyRook black.
    self assert: (square renderPiece: piece) equals: 'T'.


]

{ #category : 'tests' }
ChessRenderingTest >> testRookRenderingOnBlackSquareWhenPieceIsWhite [
    | square piece |
    square := MyChessSquare black.
    piece := MyRook white.
    self assert: (square renderPiece: piece) equals: 'R'.


]

{ #category : 'tests' }
ChessRenderingTest >> testRookRenderingOnWhiteSquareWhenPieceIsBlack [
    | square piece |
    square := MyChessSquare white.
    piece := MyRook black.
    self assert: (square renderPiece: piece) equals: 't'.


]

{ #category : 'tests' }
ChessRenderingTest >> testRookRenderingOnWhiteSquareWhenPieceIsWhite [
    | square piece |
    square := MyChessSquare white.
    piece := MyRook white.
    self assert: (square renderPiece: piece) equals: 'r'.
]
