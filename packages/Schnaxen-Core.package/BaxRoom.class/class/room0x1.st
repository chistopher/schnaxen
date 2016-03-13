as yet unclassified
room0x1

	| raum | 

	raum := BaxRoom new bild: (BaxResources image: 'see' size: BaxApp appSize).
	raum add: 'kaktus' sized: (50@50) at: (25@25).
	^raum
