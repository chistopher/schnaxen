as yet unclassified
last
	
	| current |
	
	self ifEmpty: [^self].
	current := self selectedItems last.
	
	( current = self shownLevel submorphs first )
		ifFalse:[
			self unselectItem.
			self selectItem:  (self morphsOfCurrentLevel before: current)]
		ifTrue:[
			self shiftItemsBack.]
	 