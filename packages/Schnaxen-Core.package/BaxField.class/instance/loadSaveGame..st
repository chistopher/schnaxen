initialization
loadSaveGame: aBaxSaveGame

	self 
		removeAllMorphs;
		background: (ImageMorph new position: self position);
		addMorph: self background.
		
	self 
		saveGame: aBaxSaveGame;
		bax: (self saveGame team first position: self position; location: 0@0);
		addMorph: self bax;
		enterRoomAt: (1@1).