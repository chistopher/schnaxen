as yet unclassified
room2x2

	| raum | 

	raum := BaxRoom new.
	raum imageName: 'room2x2'.


	raum obstacles add: (BaxNPC new fieldImageName: 'cat'; sizeInField: 10@10; location: 30@16).
	
	^raum
