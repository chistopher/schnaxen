as yet unclassified
room0x1

	| raum | 

	raum := BaxRoom new.
	raum imageName: 'see'.
	raum obstacles add: (BaxObject new fieldImageName: 'kaktus'; sizeInField: 20@20; location: 20@10).
	^raum
