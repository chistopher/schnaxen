as yet unclassified
addItem: anAssociation
	
	| morph | 
	
	morph := Morph new.
	morph 
		color: Color gray;
		extent: self itemExtent;
		position: (self itemExtent + self gap) * ((self level-1) @ (self levelMorphs last size)) + self position + self gap.
	morph addMorph: (TextMorph new 
		contents: anAssociation key; 
		beAllFont: (StrikeFont
 			familyName: 'BitstreamVeraSans'
        		size:  self itemExtent y asInteger);
		center: morph center; 
		color: Color white).
	self addMorph: morph.
	(self levelMorphs at: self level) add: morph. 