as yet unclassified
next
	
	| current |
	
	self ifEmpty: [^self].
	current := self selectedItems last.
	
	( current = self shownLevel submorphs last )
		ifFalse:[
			self unselectItem.
			self selectItem: (self morphsOfCurrentLevel after: current)]
		ifTrue:[
			self shiftItemsForward].