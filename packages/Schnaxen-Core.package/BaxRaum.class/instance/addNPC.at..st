add
addNPC: aName at: aPosition 
	
	| NPC |
	
	NPC := BaxNPC new.
	NPC room: self.
	self addMorphBack: NPC.
	self obstacles add: NPC.
	^NPC 
		position: (BaxField fieldSize * aPosition // 100) + self position;
		baxType: aName;
		startStepping.

