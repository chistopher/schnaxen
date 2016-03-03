key bindings
changeToBattle

	self field visible: false.
	self keyBindings: self battleKeyBindings.
	self battle: (BaxBattle new color: Color brown).
	self addMorph: self battle.
	self battle position: self position