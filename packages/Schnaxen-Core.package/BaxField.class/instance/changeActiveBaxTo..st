baxens
changeActiveBaxTo: aBaxPlayer

	(self saveGame team includes: aBaxPlayer) ifFalse: [^ self]. "the new player must be a baxen"
	
	aBaxPlayer "place new bax there were the last bixen was"
		location: self bax location;
		direction: self bax direction.
	self "swith baxen for me"
		removeMorph: self bax;
		addMorph: aBaxPlayer;
		reposition: aBaxPlayer;
		reloadImageOf: aBaxPlayer;
		bax: aBaxPlayer "actually do the switch"