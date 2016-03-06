battle
changeToBattle

	self field visible: false.
	self keyBindings: self battleKeyBindings.
	self battle: self createBattle.
	self addMorph: self battle.
	self battle position: self position