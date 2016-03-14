menu
fillMainMenu

	| menuItems |

	menuItems := OrderedCollection new.
	menuItems 
		add: ('start game' -> [self startGame]);
		add: ('change resolution' -> [self mainMenu bounds: self bounds; clearMenu. self openResolutionMenu]);
		add: ('exit' -> [self delete]).

	
	self mainMenu fromList: menuItems withDepth: 1

	

 	
						
