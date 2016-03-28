building
shiftItemsForward

	| current array |
	
	current := self selectedItems last.
	self unselectItem.
	
	(current = self lastLevelItems last)
		ifFalse:[
			array := self lastLevelMorph submorphs asOrderedCollection.
			array removeFirst.
			array add: ( self lastLevelItems after: current ).
			self selectItem: array last]
		ifTrue:[
			array := self lastLevelItems first: (self visibleItems min: self lastLevelItems size).
			self selectItem: array first].
	
	self layout: array max: self visibleItems vertical: self vertical.
	self lastLevelMorph 
		removeAllMorphs;
		addAllMorphs: array.

	 