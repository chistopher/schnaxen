raumCache
raum0x1

	| raum | 

	raum := BaxRaum new bild: (BaxPlayer imageFor: 'see.png').
	raum addObstacle: 'kaktus' withSize: (400@400) at: (200@200).
	^raum

	