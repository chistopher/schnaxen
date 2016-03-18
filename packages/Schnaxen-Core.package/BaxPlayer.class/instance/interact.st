interaction
interact

	self owner activeRoom interactables do: [:each|
		(self interactionArea intersects: each bounds)
			ifTrue: [each doStuff: self owner "the field"]].
		
	self owner activeRoom enemies do: [:each|
		(self interactionArea intersects: each bounds)
			ifTrue: [self owner changeToBattleVs: {each}]]