raumCache
raum1x0

	| raum | 

	raum := BaxRaum new color: Color white.
	raum addObstacle: 'haus' withSize: (400@300) at: (200@200).
	raum addObstacle: 'stein' withSize: (50@50) at: (438@500).
	raum addObstacle: 'stein' withSize: (50@50) at: (500@10).
	raum addObstacle: 'stein' withSize: (80@200) at: (100@450).
	^raum

	