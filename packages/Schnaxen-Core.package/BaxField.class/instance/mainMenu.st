menu
mainMenu

	| menuItems mainMenu |

	mainMenu := BaxVerticalMenu new.
	mainMenu 
		extent: self extent x / 2 @self extent y;
		position: self topCenter;
		color: Color blue.

	menuItems := {
		('resume' -> [mainMenu close]).
		('resolution' -> [self owner openSubWindow: self owner resolutionMenu. mainMenu close]).
		('do nothing' -> []).
		('scroll down' -> []).
		('exit' -> [self close])}.

	^ mainMenu fromList: menuItems withDepth: 1