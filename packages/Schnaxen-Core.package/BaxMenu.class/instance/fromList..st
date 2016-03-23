as yet unclassified
fromList: anOrderedCollection
	
	| theFullAlignmentMorph |
	
	self items: anOrderedCollection.
	self maxLevel: (self maxDepthOf: anOrderedCollection).
	
	theFullAlignmentMorph := ( self morphNumber: 1 inListsized: 1 vertical: self vertical not )
		layoutPolicy: ProportionalLayout new;
		bounds: self bounds;
		color: Color transparent.
		
	(1to: self maxLevel) do:[ :i |
		theFullAlignmentMorph addMorphBack: ( ( self morphNumber: i inListsized: maxLevel vertical: self vertical )
			layoutPolicy: ProportionalLayout new;
			color: Color transparent )
		].
	
	self addMorph: theFullAlignmentMorph.
	self addLevel: anOrderedCollection.

	 