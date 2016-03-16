initialization
initialize 
		
	self bax: (BaxPlayer new field: self).
		
	super initialize.
	
	self createBaxens.
	
	self 
		addMorph: self bax;
		activeRaum: (BaxRoom roomAt: (1@1));
		raumPos: (1@1).


		