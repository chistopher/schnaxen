menu
mainMenu

	| menuItems mainMenu |

	mainMenu := BaxVerticalMenu new.
	mainMenu 
		bounds: (BaxApp useableBounds insetBy: (BaxApp useableBounds extent * 0.1));
		color: Color transparent.

	menuItems := OrderedCollection new.
	menuItems 
		add: ('start game' -> [self openSubWindow: self newField]);
		add: ('resolution' -> [self openSubWindow: self resolutionMenu]);
		add: ('do nothing' -> []);
		add: ('scroll down' -> []);
		add: ('exit' -> [self delete]).

	^ mainMenu fromList: menuItems withDepth: 1
