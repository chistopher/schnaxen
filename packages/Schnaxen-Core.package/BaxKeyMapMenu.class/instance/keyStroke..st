input
keyStroke: anEvent

	BaxApp keyMap removeKey: self requestedAssociation key.
	BaxApp keyMap 
		at: anEvent keyCharacter
		put: self requestedAssociation value.
	self clearMenu. "including the request command morph"
	self createMenu.
	self owner getFocus.