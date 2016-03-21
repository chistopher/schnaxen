as yet unclassified
room1x1

	| raum | 

	raum := BaxRoom new.
	raum imageName: 'room1x1'.
	

	1 to: 4 do: [ :i |
		raum obstacles add: (BaxObject new
			fieldImageName: 'baum';
			sizeInField: 5@5;
			location: i * 11@3)].
	
		
		
	^raum
