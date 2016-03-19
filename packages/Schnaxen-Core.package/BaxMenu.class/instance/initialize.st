as yet unclassified
initialize
	
	super initialize.
	self 
		color: Color white;
		level: 0;
		levelMorphs: OrderedCollection new;
		selectedItems: OrderedCollection new;
		clipSubmorphs: true