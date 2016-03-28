baxens
changeActiveBaxTo: aBaxPlayer

	(self baxens includes: aBaxPlayer) ifFalse: [^ self]. "the new player must be a baxen"
	
	aBaxPlayer "place new bax there were the last bixen was"
		location: self bax location;
		direction: self bax direction.
	self activeRoom obstacles "switch baxen for active room"
		remove: self bax;
		add: aBaxPlayer.
	self "swith baxen for me"
		removeMorph: self bax;
		addMorph: aBaxPlayer;
		reposition: aBaxPlayer;
		reloadImageOf: aBaxPlayer;
		bax: aBaxPlayer "actually do the switch"