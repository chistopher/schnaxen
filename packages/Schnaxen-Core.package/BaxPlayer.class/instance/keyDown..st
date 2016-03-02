as yet unclassified
keyDown: anEvent

	"Handle a keystroke event.  The default response is to let my eventHandler, if any, handle it."
	
	| key newBounds vertex newRaumPos|
	
	key := anEvent keyCharacter.
	key = $W ifTrue: [ vertex := 0@50 negated ].
	key = $A ifTrue: [ vertex := 50 negated @0].
	key = $S ifTrue: [ vertex := 0@50 ].
	key = $D ifTrue: [ vertex := 50@0 ].
	
	vertex ifNotNil: [
		newBounds := self bounds translateBy: vertex.
		vertex := (vertex x clampLow: -1 high: 1)@(vertex y clampLow: -1 high: 1).
		newRaumPos := self field raumPos + vertex.
		(self canMoveTo: newBounds)
			ifTrue: [
				(self isInField: newBounds)
					ifTrue: [
						self bounds: newBounds]
					ifFalse: [
						self changeRoomTo: newRaumPos with: vertex]]]
	
