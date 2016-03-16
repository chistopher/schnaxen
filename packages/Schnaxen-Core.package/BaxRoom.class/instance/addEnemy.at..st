add
addEnemy: aName at: aPosition 
	
	| NPC |
	
	NPC := BaxEnemy perform: (aName, ':') asSymbol with: aName.
	NPC room: self.
	self addMorphBack: NPC.
	self obstacles add: NPC.
	self interactables add: NPC.
	^NPC 
		position: ((BaxApp appSize * aPosition / (BaxApp aspectRatio *10)) + self position);
		type: aName;
		block: [:app| app field changeToBattleVs: {NPC}];
		image: NPC defaultImage;
		startStepping.

