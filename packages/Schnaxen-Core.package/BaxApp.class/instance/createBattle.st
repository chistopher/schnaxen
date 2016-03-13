battle
createBattle
	
	self battle: BaxBattle new. 
	self addMorph: self battle.
	self battle 
		app: self;
		baxens: self baxens;
		position: self field position.