initialization
initialize

	super initialize.
	self color: Color gray.
	self extent: 700@700.

	self createMenu.
		
	
	
	enemies := OrderedCollection new.
	baxens := OrderedCollection new.
