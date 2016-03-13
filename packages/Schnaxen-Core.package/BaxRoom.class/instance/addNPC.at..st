add
addNPC: aName at: aPosition 
	
	| NPC |
	
	NPC := BaxNPC new.
	NPC room: self.
	self addMorphBack: NPC.
	self obstacles add: NPC.
	^NPC 
		position: ((BaxApp appSize * aPosition / (BaxApp aspectRatio *10)) + self position);
		baxType: aName;
		image: NPC defaultImage;
		startStepping.

