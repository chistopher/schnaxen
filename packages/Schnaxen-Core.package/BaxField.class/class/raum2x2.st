raumCache
raum2x2

	| raum | 

	raum := BaxRaum new color: Color yellow.
	raum addObstacle: 'baum' withSize: (300@450) at: (200@125).
	^raum

	