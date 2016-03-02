raumCache
raumAt: aPosition

	raumCache ifNil: [raumCache := Dictionary new].
	^raumCache at: aPosition ifAbsentPut: [ 
		self perform: (Symbol newFrom: 'raum', aPosition x, 'x',  aPosition y)]


	