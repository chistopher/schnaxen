accessing
activeRaum: anObject

	activeRaum ifNotNil: [
		self removeMorph: activeRaum].
	background ifNotNil: [
		self removeMorph: background.
		background := nil].
	activeRaum := anObject.
	self addMorph: activeRaum.
	activeRaum position: self position.
	self color: activeRaum color.
	activeRaum bild ifNotNil: [
		self background: self activeRaum bild]