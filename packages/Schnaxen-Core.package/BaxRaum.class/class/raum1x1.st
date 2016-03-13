as yet unclassified
raum1x1

	| raum | 

	raum := BaxRaum new color: Color blue.
	raum add: 'baum' sized: (10@10) at: (30@30).
	raum add: 'baum' sized: (5@5) at: (50@50).
	raum add: 'stein' sized: (10@10) at: (80@10).
	raum add: 'kaktus' sized: (16@40) at: (5@50).
	^raum
