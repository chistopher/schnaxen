interaction
interact

	self owner activeRoom obstacles do: [:each|
		(self interactionArea intersects: each bounds) ifTrue: [
			each interactable ifTrue: [
				each doStuff: each "just do it urself"]]]