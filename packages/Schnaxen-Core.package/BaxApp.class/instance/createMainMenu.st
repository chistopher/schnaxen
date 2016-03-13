menu
createMainMenu

	self mainMenu: BaxVerticalMenu new.
	self addMorph: self mainMenu.
	self mainMenu bounds: self bounds.