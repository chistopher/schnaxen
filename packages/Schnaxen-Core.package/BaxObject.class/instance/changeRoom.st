actions
changeRoom
"this expects the actionArgument to be {roomCoords . playerLocation}"

	| field |
	
	field := self owner.
	field changeRoomTo: self actionArgument first.
	field bax location: self actionArgument second.
	field reposition: field bax.