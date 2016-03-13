add
add: aName sized: anExtent at: aPosition
	
	| ding |
	
	ding := BaxObject new.
	ding image: (BaxResources image: aName size: (BaxField fieldSize * anExtent)/100.0).
	self addMorph: ding.
	self obstacles add: ding.
	ding position: (BaxField fieldSize * aPosition / 100.0) + self position.
	^ding
