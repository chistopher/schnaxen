as yet unclassified
raum0x1

	| raum | 

	raum := BaxRaum new bild: (BaxResources image: 'see' size: BaxField fieldSize).
	raum add: 'kaktus' sized: (50@50) at: (25@25).
	^raum
