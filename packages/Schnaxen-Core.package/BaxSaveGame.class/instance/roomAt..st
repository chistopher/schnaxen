rooms
roomAt: aPosition

	self roomCache ifNil: [self roomCache: Dictionary new].
	^self roomCache at: aPosition ifAbsentPut: [ 
		BaxRoom new perform: (Symbol newFrom: 'room', aPosition x, 'x',  aPosition y)]