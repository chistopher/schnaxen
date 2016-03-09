add
addNPC: aName at: aPosition withBlock: aBlock
	
	| NPC |
	
	NPC := BaxNPC new.
	NPC room: self.
		
	self addMorphBack: NPC.
	self obstacles add: NPC.
	NPC 
		position: (self position + aPosition);
		startStepping.

