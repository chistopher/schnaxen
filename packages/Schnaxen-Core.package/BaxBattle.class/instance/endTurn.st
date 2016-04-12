turns
endTurn
	
	self menuBar clearMenu.
	self livingFighter ifEmpty: [^self lose].
	self livingEnemies ifEmpty: [^self win].
	
	self addAlarm: #nextTurn after: 100.
	
	

	
	
	
	
	

	