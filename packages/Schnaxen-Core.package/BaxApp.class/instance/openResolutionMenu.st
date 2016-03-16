menu
openResolutionMenu

	| resolutions current menuItems menu |
	
	resolutions := OrderedCollection new.
	current := BaxApp minAppSize.
	[current <= self extent] whileTrue: [
		resolutions add: current.
		current := current + BaxApp minAppSize].

	menuItems := OrderedCollection new.
	resolutions reverse do: [:each| menuItems add: ('', each -> [
			BaxApp appSize: each. 
			BaxApp useableBounds: (((self extent - each) / 2) extent: each).
			self field ifNotNil: [self field resize]. "resize field"
			self mainMenu bounds: BaxApp useableBounds. "resize main menu"
			self fillMainMenu.
			self removeMorph: self openWindows last.
			self openWindows removeLast.
			])].
	
	menu := BaxVerticalMenu new 
		bounds: self bounds; 
		fromList: menuItems withDepth: 1.
	self addMorph: menu.
	self openWindows add: menu.

 	
						
