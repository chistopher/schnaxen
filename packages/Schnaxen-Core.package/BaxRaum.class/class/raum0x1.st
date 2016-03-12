as yet unclassified
raum0x1

	| raum | 

	raum := BaxRaum new bild: (BaxResources image: 'see' size: 700@700).
	raum add: 'kaktus' sized: (400@400) at: (200@200).
	^raum
