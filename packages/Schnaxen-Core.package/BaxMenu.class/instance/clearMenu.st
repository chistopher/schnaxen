commands
clearMenu
	
	self 
		removeAllMorphs;
		level: 0;
		levelMorphs: OrderedCollection new;
		selectedItems: OrderedCollection new;
		maxLevel: nil.
	