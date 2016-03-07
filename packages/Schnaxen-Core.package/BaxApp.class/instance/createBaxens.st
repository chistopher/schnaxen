initialization
createBaxens

	self baxens: OrderedCollection new.
	
	baxens 
		add: ((BaxFighter baxNamed: 'bixen') app: self);
		add: ((BaxFighter baxNamed: 'schnaxen') app: self);
		add: ((BaxFighter baxNamed: 'schnixel') app: self);
		add: ((BaxFighter baxNamed: 'baxmeister') app: self)
	
