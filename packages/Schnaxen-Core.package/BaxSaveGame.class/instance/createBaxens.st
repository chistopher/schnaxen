initialization
createBaxens

	self team: OrderedCollection new.
	
	self team add: (BaxPlayer new 
		baxName: 'bax'; 
		fieldImageName: 'bax';
		fightImageName: 'bax-1x0').
	self team add: (BaxPlayer new 
		baxName: 'schnaxen'; 
		fieldImageName: 'schnaxen';
		fightImageName: 'schnaxen-1x0').
	self team add: (BaxPlayer new 
		baxName: 'unicorn'; 
		fieldImageName: 'unicorn';
		fightImageName: 'unicorn-1x0';
		sizeInField: 4@4).
	self team add: (BaxPlayer new 
		baxName: 'punk'; 
		fieldImageName: 'punk';
		fightImageName: 'punk-1x0').