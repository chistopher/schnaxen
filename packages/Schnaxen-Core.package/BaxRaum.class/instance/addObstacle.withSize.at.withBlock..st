add
addObstacle: aName withSize: anExtent at: aPosition withBlock: aBlock
	
	| ding |
	
	ding := ImageMorph new.
	ding image: ((BaxPlayer imageFor: (aName , '.png')) scaledToSize: anExtent).
	self addMorph: ding.
	self obstacles add: ding.
	ding position: (self position + aPosition).

	self addInteractableAt: (aPosition + (anExtent/2)) withBlock: aBlock.

