commands
next
	
	| current |
	
	self ifEmpty: [^self].
	current := self selectedItems last.
	
	( current = self lastLevelMorph submorphs last )
		ifFalse:[
			self unselectItem.
			self selectItem: (self lastLevelItems after: current)]
		ifTrue:[
			self shiftItemsForward].