as yet unclassified
fromList: anOrderedCollection
	
	| theFullAlignmentMorph |
	
	self items: anOrderedCollection.
	self maxLevel: (self maxDepthOf: anOrderedCollection).
	
	theFullAlignmentMorph := ( self createMorphVertical: self vertical not )
		layoutPolicy: ProportionalLayout new;
		bounds: self bounds;
		color: Color transparent.
		
	( 1to: self maxLevel ) do:[ :i |
		theFullAlignmentMorph addMorphBack: ( ( self createMorphVertical: self vertical )
			layoutPolicy: ProportionalLayout new;
			color: Color transparent )
		].
	self layoutChildrenOfFirstLevel: theFullAlignmentMorph vertical: self vertical.
	
	self addMorph: theFullAlignmentMorph.
	self addLevel: anOrderedCollection.

	 