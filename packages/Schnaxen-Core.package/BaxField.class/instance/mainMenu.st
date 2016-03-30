menu
mainMenu

	| menuItems mainMenu |

	mainMenu := BaxMenu new.
	mainMenu 
		extent: self extent x / 2 @self extent y;
		topRight: self topRight;
		color: Color white.

	menuItems := {
		('resume' -> [mainMenu close]).
		('characters' -> [self openSubWindow: self characterMenu]).
		('items' -> [self openSubWindow: self itemMenu]).
		('resolution' -> [self owner openSubWindow: self owner resolutionMenu. mainMenu close]).
		('exit' -> [self owner openSubWindow: self owner mainMenu. self close])}.

	^ mainMenu fromList: menuItems