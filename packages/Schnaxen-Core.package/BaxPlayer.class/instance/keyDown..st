as yet unclassified
keyDown: anEvent

	"Handle a keystroke event.  The default response is to let my eventHandler, if any, handle it."
	
	| key |
	
	key := anEvent keyCharacter.
	key = $W ifTrue: [ self position: (self position - (0@50)) ].
	key = $A ifTrue: [ self position: (self position - (50@0)) ].
	key = $S ifTrue: [ self position: (self position + (0@50)) ].
	key = $D ifTrue: [ self position: (self position + (50@0)) ].
