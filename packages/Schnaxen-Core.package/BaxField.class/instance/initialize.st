initialization
initialize 
	
	| player |
		
	super initialize.
	
	player := BaxPlayer new.
	self 
		extent: 700@700;
		addMorph: player;
		bax: player;
		activeRaum: (BaxRaum raumAt: (1@1));
		raumPos: (1@1).
	player field: self.
	



	