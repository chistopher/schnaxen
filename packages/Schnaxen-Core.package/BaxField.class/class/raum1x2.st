raumCache
raum1x2

	| raum | 

	raum := BaxRaum new color: Color red.
	raum addObstacle: 'stein' withSize: (500@500) at: (100@100).
	^raum

	