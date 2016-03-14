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
			BaxRoom clearRoomCache. "coz rooms are just 4 one resolution"
			self mainMenu bounds: BaxApp useableBounds.
			self removeMorph: self openWindows last.
			self openWindows removeLast.
			self fillMainMenu.
			self activateMainMenu.
			])].
	
	self hideAllSubmorphs.
	menu := BaxVerticalMenu new 
		bounds: self bounds; 
		fromList: menuItems withDepth: 1.
	self addMorph: menu.
	self openWindows add: menu.

 	
						
