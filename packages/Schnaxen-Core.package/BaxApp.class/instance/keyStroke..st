event handling
keyStroke: anEvent

	BaxApp keyMap 
		at: anEvent keyCharacter
		ifPresent: [ :mappedKey | 
			(self currentFrontWindow keyBindings at: mappedKey ifAbsent: []) value].
	
			

	

	
