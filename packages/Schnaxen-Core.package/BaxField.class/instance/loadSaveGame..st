save/load
loadSaveGame: aBaxSaveGame

	self 
		removeAllMorphs;
		background: (ImageMorph new position: self position);
		addMorph: self background.
		
	self 
		saveGame: aBaxSaveGame;
		bax: self saveGame team first;
		addMorph: self bax;
		reposition: self bax;
		reloadImageOf: self bax;
		enterRoomAt: aBaxSaveGame roomPos.