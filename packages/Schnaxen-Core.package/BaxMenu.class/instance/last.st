as yet unclassified
last
	
	| current next |
	
	self ifEmpty: [^self].
	current := self selectedItems last.
	next := self morphsOfCurrentLevel before: current
		ifAbsent: [
			next := self morphsOfCurrentLevel last].
	self unselectItem.
	self selectItem: next next: false.
	 