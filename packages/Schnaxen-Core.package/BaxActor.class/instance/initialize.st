initialization
initialize

	super initialize.
	
	self image: self defaultImage.
	self skills: OrderedCollection new.
	self skills add: #attack:.
	self xp: 0.