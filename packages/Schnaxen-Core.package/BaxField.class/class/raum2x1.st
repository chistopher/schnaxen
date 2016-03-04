raumCache
raum2x1

	| raum | 

	raum := BaxRaum new color: Color transparent.
	raum addObstacle: 'kaktus' withSize: (200@400) at: (300@300).
	^raum

	