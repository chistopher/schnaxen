initialization
initialize
	
	super initialize.
	self 
		color: Color white;
		level: 0;
		levelMorphs: OrderedCollection new;
		selectedItems: OrderedCollection new;
		visibleItems: 5;
		vertical: true.
		
	self keyBindings addAll: self thisKeyBindings.
		