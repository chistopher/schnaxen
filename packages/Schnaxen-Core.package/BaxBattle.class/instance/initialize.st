initialization
initialize

	super initialize.
	self color: Color gray.
	self extent: BaxApp appSize.

	self createMenu.
		
	
	
	enemies := OrderedCollection new.
	baxens := OrderedCollection new.
