as yet unclassified
moveInDirection: aVector

	| newBounds |
	
	newBounds := self bounds translateBy: (aVector * self moveRange).
	self direction:  aVector.

	(self canMoveTo: newBounds) ifTrue: [
		self bounds: newBounds]