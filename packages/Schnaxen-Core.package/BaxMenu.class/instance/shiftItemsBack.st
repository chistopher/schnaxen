as yet unclassified
shiftItemsBack
	
	| current array |
	
	current := self selectedItems last.
	self unselectItem.
	
	( current = self morphsOfCurrentLevel first )
		ifFalse:[
			array := self shownLevel submorphs asOrderedCollection.
			array removeLast.
			array addFirst: ( self morphsOfCurrentLevel before: current ).
			self selectItem: array first]
		ifTrue:[
			array := self morphsOfCurrentLevel
				copyFrom: (self morphsOfCurrentLevel size - self visibleItems + 1 max: 1) to: self morphsOfCurrentLevel size.
			self selectItem: array last].
	self showItems: array on: self shownLevel.

	 