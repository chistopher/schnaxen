raumCache
raum2x1

	| raum | 

	raum := Morph new color: Color transparent.
	raum extent: 0@0.
	self add: 'kaktus' withSize: (200@400) at: (300@300) on: raum.
	^raum

	