initialization
initialize 
				
	super initialize.
	self roomCache: Dictionary new.
	self roomPos: self startRoomPos.
	self createBaxens.
	self createProgressFlags