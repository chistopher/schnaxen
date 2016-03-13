as yet unclassified
roomAt: aPosition

	roomCache ifNil: [roomCache := Dictionary new].
	^roomCache at: aPosition ifAbsentPut: [ 
		self perform: (Symbol newFrom: 'room', aPosition x, 'x',  aPosition y)]