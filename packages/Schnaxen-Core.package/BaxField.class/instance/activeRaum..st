accessing
activeRaum: anObject

	activeRaum ifNotNil: [self removeMorph: activeRaum].
	activeRaum := anObject.
	self addMorph: activeRaum.
	self color: activeRaum color.
	activeRaum position: self position.