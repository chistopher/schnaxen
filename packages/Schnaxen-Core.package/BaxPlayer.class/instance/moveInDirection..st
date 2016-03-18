movement
moveInDirection: aVector

	| newBounds newRaumPos |
		
	newBounds := self bounds translateBy: (aVector * self moveRange).
	self direction:  aVector.
	newRaumPos := self owner roomPos + direction.
	self image: (BaxResources image: self fieldImageName size: self extent).

	(self canMoveTo: newBounds) ifFalse: [^self].

	(self owner contains: newBounds) ifTrue: [
		^self bounds: newBounds].

	(BaxRoom roomExists: newRaumPos) ifTrue: [
		self owner changeRoomTo: newRaumPos.
		self position: ((self owner extent - self extent) * direction negated + self position)]