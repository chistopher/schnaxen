interaction
interact

	self owner activeRoom obstacles do: [:each|
		(self interactionArea intersects: each bounds) ifTrue: [
			each interactable 
				ifTrue: [
					each doStuff: self owner "the field"] 
				ifFalse: [
					(each isKindOf: BaxEnemy) ifTrue: [
						self owner changeToBattleVs: {each}]]]]