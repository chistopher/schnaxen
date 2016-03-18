menu
resolutionMenu

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
			BaxApp magnification: BaxApp appSize x / BaxApp minAppSize x.
			self changeResolution.
			self currentFrontWindow close.
			])].
	
	^ BaxVerticalMenu new 
		bounds: self bounds; 
		fromList: menuItems withDepth: 1.
			
