as yet unclassified
interact

	self field activeRaum interactables do: [:each|
		(self field bax interactionArea containsPoint: (each relativePosition + self position))
			ifTrue: [each doStuff: self]]
		