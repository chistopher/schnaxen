raumCache
raum1x2

	| raum | 

	raum := Morph new color: Color red.
	raum extent: 0@0.
	self add: 'stein' withSize: (500@500) at: (100@100) on: raum.
	^raum

	