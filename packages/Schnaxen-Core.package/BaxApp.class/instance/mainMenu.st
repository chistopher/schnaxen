menu
mainMenu

	| menuItems mainMenu |

	mainMenu := BaxMenu new.
	mainMenu 
		bounds: (BaxApp useableBounds insetBy: (BaxApp useableBounds extent * 0.1));
		color: Color transparent.

	menuItems := OrderedCollection new.
	menuItems 
		add: ('start game' -> [mainMenu close. self openSubWindow: self newField]);
		add: ('resolution' -> [mainMenu close. self openSubWindow: self resolutionMenu]);
		add: ('load' -> [|rr field|
			field := self newField.
			rr := ReferenceStream fileNamed: 'save.obj'.
			field loadSaveGame: rr next.
			rr close.
			mainMenu close. self openSubWindow: field]);
		add: ('scroll down' -> []);
		add: ('exit' -> [self delete]).

	^ mainMenu fromList: menuItems
