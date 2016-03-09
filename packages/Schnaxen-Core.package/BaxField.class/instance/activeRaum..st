accessing
activeRaum: anObject

	activeRaum ifNotNil: [
		self removeMorph: activeRaum.
		activeRaum obstacles remove: self bax].
	background ifNotNil: [
		self removeMorph: background.
		background := nil].
	activeRaum := anObject.
	self addMorph: activeRaum;
		color: activeRaum color.	
	activeRaum position: self position.
	activeRaum	obstacles add: self bax.
	activeRaum bild ifNotNil: [
		self background: self activeRaum bild]