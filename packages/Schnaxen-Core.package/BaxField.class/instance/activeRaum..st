accessing
activeRaum: anObject

	activeRaum ifNotNil: [self removeMorph: activeRaum].
	activeRaum := anObject.
	self addMorphBack: activeRaum.
	activeRaum bounds: self bounds