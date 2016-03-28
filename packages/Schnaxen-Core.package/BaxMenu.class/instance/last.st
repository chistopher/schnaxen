commands
last
	
	| current |
	
	self ifEmpty: [^self].
	current := self selectedItems last.
	
	( current = self lastLevelMorph submorphs first )
		ifFalse:[
			self unselectItem.
			self selectItem:  (self lastLevelItems before: current)]
		ifTrue:[
			self shiftItemsBack.]
	 