as yet unclassified
next
	
	| current next |
	
	self ifEmpty: [^self].
	current := self selectedItems last.
	next := self morphsOfCurrentLevel after: current ifAbsent: [^self].
	self unselectItem.
	self selectItem: next.
	 