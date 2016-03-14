menu
openInGameMenu

	| menuItems |

	menuItems := OrderedCollection new.
	menuItems 
		add: ('mainMenu' -> [self openMainMenu]);
		add: ('change resolution' -> [self mainMenu bounds: self bounds; clearMenu. self openResolutionMenu]);
		add: ('exit' -> [self delete]).

	
	self openWindows add: (self mainMenu fromList: menuItems withDepth: 1)

	

 	
						
