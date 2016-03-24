turns
fighterTurn: aFighter

	self currentActor: aFighter.
	aFighter isDead ifTrue: [^self nextTurn].
	
	
	self openMenu.
	
	
	
	

	