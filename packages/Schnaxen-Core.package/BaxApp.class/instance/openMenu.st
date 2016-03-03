menu
openMenu

 	| menu |
	menu := self menuMorph.
	self addMorph: menu.
	menu position: ((self field extent x - menu extent x + self position x) @ self position y).
	self activeHand newKeyboardFocus: menu.
						
