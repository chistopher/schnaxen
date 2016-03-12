movement
moveInDirection: aVector

	| newBounds newRaumPos |
	
	newBounds := self bounds translateBy: (aVector * self moveRange).
	self direction:  aVector.
	newRaumPos := self field raumPos + direction.
	self image: (BaxResources image: 'bax', aVector x, 'x', aVector y size: self extent).

	(self canMoveTo: newBounds) ifFalse: [^self].

	(self field contains: newBounds) ifTrue: [
		^self bounds: newBounds].

	(BaxRaum roomExists: newRaumPos) ifTrue: [
		self changeRoomTo: newRaumPos.
		self position: ((self field extent - self extent) * direction negated + self position)]