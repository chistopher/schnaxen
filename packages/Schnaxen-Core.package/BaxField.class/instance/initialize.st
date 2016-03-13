initialization
initialize 
		
	super initialize.
	self 
		bax: (BaxPlayer new field: self);
		addMorph: self bax;
		activeRaum: (BaxRoom roomAt: (1@1));
		raumPos: (1@1).

		