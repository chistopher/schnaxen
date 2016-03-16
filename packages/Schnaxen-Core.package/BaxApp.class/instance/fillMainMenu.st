menu
fillMainMenu

	| menuItems |

	menuItems := OrderedCollection new.
	menuItems 
		add: ('start game' -> [self startGame]);
		add: ('change resolution' -> [self openSubWindow: self resolutionMenu]);
		add: ('exit' -> [self delete]).

	self mainMenu clearMenu.
	self mainMenu fromList: menuItems withDepth: 1

	

 	
						
