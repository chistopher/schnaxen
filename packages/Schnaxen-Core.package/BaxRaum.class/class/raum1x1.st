as yet unclassified
raum1x1

	| raum | 

	raum := BaxRaum new color: Color blue.
	raum addObstacle: 'baum' withSize: (100@150) at: (200@200).
	raum addObstacle: 'baum' withSize: (200@300) at: (438@317).
	raum addObstacle: 'stein' withSize: (50@50) at: (500@10).
	raum addObstacle: 'kaktus' withSize: (80@200) at: (100@450).
	^raum
