raumCache
raum1x1

	| raum | 

	raum := Morph new color: Color yellow.
	self add: 'baum' withSize: (100@150) at: (200@200) on: raum.
	self add: 'baum' withSize: (200@300) at: (438@317) on: raum.
	self add: 'stein' withSize: (50@50) at: (500@10) on: raum.
	self add: 'kaktus' withSize: (80@200) at: (100@450) on: raum.
	^raum

	