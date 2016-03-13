turns
endTurn

	self livingFighter ifEmpty: [^self lose].
	self livingEnemies ifEmpty: [^self win].
	self menuBar clearMenu.
	self nextTurn.
	
	

	
	
	
	
	

	