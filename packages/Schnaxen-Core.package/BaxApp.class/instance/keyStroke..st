as yet unclassified
keyStroke: anEvent

	"Handle a keystroke event.  The default response is to let my eventHandler, if any, handle it."

	| key |
	
	key := anEvent keyCharacter.
	self openWindows ifNotNil: [self openWindows ifNotEmpty: [(self openWindows last keyBindings at: key ifAbsent: []) value.]]
	
			

	

	
