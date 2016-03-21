as yet unclassified
moveInDirection: aVector

	| newBounds |
	
	newBounds := self bounds translateBy: (aVector * self moveRange).
	self direction:  aVector.
	self owner reloadImageOf: self.

	((self owner contains: newBounds) and: [self canMoveTo: newBounds])
		ifTrue: [
			self location: self location + self direction.
			self owner reposition: self "reposition me in my field"]