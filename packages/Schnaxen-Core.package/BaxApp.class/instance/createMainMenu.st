initialization
createMainMenu

	self mainMenu: BaxVerticalMenu new.
	self addMorph: self mainMenu.
	self mainMenu bounds: BaxApp useableBounds.
	self openWindows add: self mainMenu.