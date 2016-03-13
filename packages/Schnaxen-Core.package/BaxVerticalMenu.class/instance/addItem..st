as yet unclassified
addItem: anAssociation
	
	| morph | 
	
	morph := Morph new.
	morph 
		color: Color gray;
		extent: self itemExtent;
		position: (self itemExtent + self gap) * ((self level-1) @ (self levelMorphs last size)) + self position + self gap.
	morph addMorph: (StringMorph new contents: anAssociation key; center: morph center; color: Color white).
	self addMorph: morph.
	(self levelMorphs at: self level) add: morph. 