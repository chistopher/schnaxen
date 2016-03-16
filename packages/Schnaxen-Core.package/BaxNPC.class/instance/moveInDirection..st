as yet unclassified
moveInDirection: aVector

	| newBounds |
	
	newBounds := self bounds translateBy: (aVector * self moveRange).
	self direction:  aVector.
	self image: (BaxResources image: self type, aVector x, 'x', aVector y size: self extent).

	(self canMoveTo: newBounds) ifTrue: [
		self bounds: newBounds]