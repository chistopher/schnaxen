menu
openResolutionMenu

	| resolutions current menuItems |
	
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
			self mainMenu clearMenu; bounds: BaxApp useableBounds.
			self openMainMenu])].
	
	self mainMenu fromList: menuItems withDepth: 1

 	
						
