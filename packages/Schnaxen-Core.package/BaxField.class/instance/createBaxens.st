initialization
createBaxens

	self baxens: OrderedCollection new.
	
	self baxens 
		add: (BaxPlayer new baxName: 'bixen');
		add: (BaxPlayer new baxName: 'schnaxen');
		add: (BaxPlayer new baxName: 'schnixel');
		add: (BaxPlayer new baxName: 'baxmeister')