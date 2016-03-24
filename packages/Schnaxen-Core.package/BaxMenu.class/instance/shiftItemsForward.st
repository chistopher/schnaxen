as yet unclassified
shiftItemsForward

	| current array |
	
	current := self selectedItems last.
	self unselectItem.
	
	( current = self morphsOfCurrentLevel last )
		ifFalse:[
			array := self shownLevel submorphs asOrderedCollection.
			array removeFirst.
			array add: ( self morphsOfCurrentLevel after: current ).
			self selectItem: array last]
		ifTrue:[
			array := self morphsOfCurrentLevel copyFrom: 1 to: ( self visibleItems min: self morphsOfCurrentLevel size ).
			self selectItem: array first].
	self showItems: array on: self shownLevel.

	 