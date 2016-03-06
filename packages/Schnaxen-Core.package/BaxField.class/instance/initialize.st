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
	player image: (player image scaledToSize: 50@50).
	



	