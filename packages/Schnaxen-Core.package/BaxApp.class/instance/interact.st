as yet unclassified
interact

	self field activeRaum interactables do: [:each|
		(self field bax interactionArea intersects: each bounds)
			ifTrue: [each doStuff: self]]
		