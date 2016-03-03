raumCache
raum2x2

	| raum | 

	raum := Morph new color: Color yellow.
	raum extent: 0@0.
	self add: 'baum' withSize: (300@450) at: (200@125) on: raum.
	^raum

	