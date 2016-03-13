add
add: aName sized: anExtent at: aPosition
	
	| ding |
	
	ding := BaxObject new.
	ding image: (BaxResources image: aName size: BaxApp appSize * anExtent / (BaxApp aspectRatio *10)).
	self addMorph: ding.
	self obstacles add: ding.
	ding position: (BaxApp appSize * aPosition / (BaxApp aspectRatio *10)) + self position.
	^ding
