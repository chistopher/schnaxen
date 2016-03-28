building
shiftItemsBack
	
	| current array |
	
	current := self selectedItems last.
	self unselectItem.
	
	(current = self lastLevelItems first)
		ifFalse:[
			array := self lastLevelMorph submorphs asOrderedCollection.
			array removeLast.
			array addFirst: ( self lastLevelItems before: current ).
			self selectItem: array first]
		ifTrue:[
			array := self lastLevelItems last: (self visibleItems min: self lastLevelItems size).
			self selectItem: array last].

	self layout: array max: self visibleItems vertical: self vertical.
	self lastLevelMorph 
		removeAllMorphs;
		addAllMorphs: array.

	 