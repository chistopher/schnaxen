add
addObstacle: aName withSize: anExtent at: aPosition
	
	| ding |
	
	ding := ImageMorph new.
	ding image: ((BaxPlayer imageFor: aName) scaledToSize: anExtent).
	self addMorph: ding.
	self obstacles add: ding.
	ding position: (self position + aPosition).

