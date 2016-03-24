turns
fighterTurn: aFighter

	self currentActor: aFighter.
	aFighter isDead ifTrue: [^self endTurn].
	
	
	self openMenu.
	
	
	
	

	