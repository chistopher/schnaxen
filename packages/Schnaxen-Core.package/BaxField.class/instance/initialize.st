initialization
initialize 
	
	| player |
		
	super initialize.
	
	player := BaxPlayer new.
	self 
		addMorph: player;
		bax: player;
		activeRaum: (BaxRaum raumAt: (1@1));
		raumPos: (1@1).
	player field: self.
	



	