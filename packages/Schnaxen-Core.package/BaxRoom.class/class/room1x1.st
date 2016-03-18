as yet unclassified
room1x1

	| raum | 

	raum := BaxRoom new.
	
	raum obstacles add: (BaxObject new
		fieldImageName: 'baum';
		sizeInField: 5@5;
		location: 40@20).
		
		
	^raum
