building
fromList: anOrderedCollection
	
	
	self 
		maxLevel: (self maxDepthOf: anOrderedCollection);
		listDirection: (self listDirectionsVertical: self vertical not);
		layoutPolicy: ProportionalLayout new.
		
	"create a Morph for every level"
	self maxLevel timesRepeat: [ | levelMorph | 
		levelMorph := Morph new 
			listDirection: (self listDirectionsVertical: self vertical);
			layoutPolicy: ProportionalLayout new;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			color: Color transparent.
		self addMorphBack: levelMorph].
	self layout: self submorphs max: self maxLevel vertical: self vertical not.
	
	self addLevel: anOrderedCollection.

	 