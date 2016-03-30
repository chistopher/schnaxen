menu
mainMenu

	| menuItems mainMenu |

	mainMenu := BaxMenu new.
	mainMenu 
		extent: self extent x / 2 @self extent y;
		topRight: self topRight;
		color: Color white;
		visibleItems: 5.

	menuItems := {
		('resume' -> [mainMenu close]).
		('resolution' -> [self owner openSubWindow: self owner resolutionMenu. mainMenu close]).
		('exit' -> [self owner openSubWindow: self owner mainMenu. self close])}.

	^ mainMenu fromList: menuItems