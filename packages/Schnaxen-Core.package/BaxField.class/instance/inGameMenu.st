menu
inGameMenu

	| menuItems menu |

	menu := BaxMenu new.
	menu 
		extent: self extent x / 2 @self extent y;
		topRight: self topRight;
		color: Color white;
		visibleItems: 5.
	menu keyBindings add: ($q -> [menu close]).

	menuItems := {
		('characters' -> [self openSubWindow: self characterMenu]).
		('items' -> [self openSubWindow: self itemMenu])}.

	^ menu fromList: menuItems