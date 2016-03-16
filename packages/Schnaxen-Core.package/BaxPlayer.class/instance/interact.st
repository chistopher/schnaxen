interaction
interact

	self owner activeRaum interactables do: [:each|
		(self interactionArea intersects: each bounds)
			ifTrue: [each doStuff: self owner owner]]