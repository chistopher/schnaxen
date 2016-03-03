as yet unclassified
keyStroke: anEvent

	"Handle a keystroke event.  The default response is to let my eventHandler, if any, handle it."

	| key |
	
	key := anEvent keyCharacter.
	(self keyBindings at: key ifAbsent: []) value.
	
			

	

	
