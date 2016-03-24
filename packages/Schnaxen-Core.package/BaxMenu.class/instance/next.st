as yet unclassified
next
	
	| current next |
	
	self ifEmpty: [^self].
	current := self selectedItems last.
	next := self morphsOfCurrentLevel after: current
		ifAbsent: [
			next := self morphsOfCurrentLevel first].
	self unselectItem.
	self selectItem: next next: true.
	 