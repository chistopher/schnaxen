as yet unclassified
example1

	| player field |
	player := BaxPlayer new.
	field := self new.
	field 
		addMorph: player;
		bax: player;
		activeRaum: (self raumAt: (1@1));
		raumPos: (1@1).
	player field: field.
	player image: (player image magnifyBy: 0.5).
	
	^field