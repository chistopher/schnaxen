turns
endBattle

	self baxens do: [:each | self removeMorph: each].
	self baxens: nil.
	self enemies: nil.
	self currentActor: nil.
	self app changeToWorld.
	self app: nil.
	


	
	