as yet unclassified
moveInDirection: aVector

	| newBounds |
	
	newBounds := self bounds translateBy: (aVector * self moveRange).
	self direction:  aVector.
	self image: ((BaxPlayer imageFor: 'bax', aVector x, 'x', aVector y) scaledToSize: self extent).

	(self canMoveTo: newBounds) ifTrue: [
		self bounds: newBounds]