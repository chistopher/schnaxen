add
add: aName sized: anExtent at: aPosition
	
	| ding |
	
	ding := BaxObject new.
	ding image: (BaxResources image: aName size: anExtent).
	self addMorph: ding.
	self obstacles add: ding.
	ding position: (self position + aPosition).
	^ding
