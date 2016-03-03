movement
moveInDirection: aVector

	| newBounds newRaumPos direction |
	
	newBounds := self bounds translateBy: aVector.
	direction := (aVector x clampLow: -1 high: 1)@(aVector y clampLow: -1 high: 1).
	newRaumPos := self field raumPos + direction.
	(self canMoveTo: newBounds)
		ifTrue: [
			(self isInField: newBounds)
				ifTrue: [
					self bounds: newBounds]
				ifFalse: [
					self changeRoomTo: newRaumPos with: direction]]