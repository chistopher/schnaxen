initialization
initialize 
				
	super initialize.
	
	self 
		createBaxens;
		bax: self baxens first;
		addMorph: self bax;
		activeRaum: (BaxRoom roomAt: (1@1));
		raumPos: (1@1).
	self keyBindings addAll: self bax ownKeyBindings.


		