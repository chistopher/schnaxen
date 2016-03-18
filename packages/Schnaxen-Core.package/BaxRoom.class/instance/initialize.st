initialization
initialize

	super initialize.
	
	self obstacles: OrderedCollection new.
	self interactables: OrderedCollection new.
	self enemies: OrderedCollection new. 
	self imageName: 'blanc'.