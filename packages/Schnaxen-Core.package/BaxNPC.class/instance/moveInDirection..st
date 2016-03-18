as yet unclassified
moveInDirection: aVector

	| newBounds |
	
	newBounds := self bounds translateBy: (aVector * self moveRange).
	self direction:  aVector.
	self image: (BaxResources image: self fieldImageName size: self extent).

	((self owner contains: newBounds) and: [self canMoveTo: newBounds])
		ifTrue: [self bounds: newBounds]