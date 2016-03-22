menu
mainMenu

	| menuItems mainMenu |

	mainMenu := BaxVerticalMenu new.
	mainMenu 
		extent: self extent x / 2 @self extent y;
		topRight: self topRight;
		color: Color white.

	menuItems := {
		('resume' -> [mainMenu close]).
		('characters' -> [self openSubWindow: self characterMenu]).
		('resolution' -> [self owner openSubWindow: self owner resolutionMenu. mainMenu close]).
		('do nothing' -> []).
		('exit' -> [self close])}.

	^ mainMenu fromList: menuItems withDepth: 1