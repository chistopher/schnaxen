initialization
initialize 
				
	super initialize.
	self roomCache: Dictionary new.
	self roomPos: 1@1.
	self createBaxens.
	self createProgressFlags