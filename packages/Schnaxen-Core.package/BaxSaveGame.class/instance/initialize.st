initialization
initialize 
				
	super initialize.
	self roomCache: Dictionary new.
	self roomPos: 50@50.
	self createBaxens.
	self createProgressFlags