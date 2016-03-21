movement
moveInDirection: aVector

	| newBounds|
		
	newBounds := self bounds translateBy: (aVector * self moveRange).
	(self owner contains: newBounds) 
		ifTrue: [
			super moveInDirection: aVector]
		ifFalse: [ |newRaumPos|
			newRaumPos := self owner roomPos + aVector.
			self direction:  aVector.
			self owner reloadImageOf: self.
			(BaxRoom roomExists: newRaumPos) ifTrue: [
				self owner changeRoomTo: newRaumPos.
				self location: ((BaxApp minAppSize - self sizeInField) *self direction negated + self location).
				self owner reposition: self "reposition me in my field"]].

