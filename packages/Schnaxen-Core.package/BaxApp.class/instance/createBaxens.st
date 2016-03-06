initialization
createBaxens

	self baxens: OrderedCollection new.
	
	baxens 
		add: (BaxFighter new level: 1);
		add: (BaxFighter new level: 1);
		add: (BaxFighter new level: 1);
		add: (BaxFighter new level: 1).
	
