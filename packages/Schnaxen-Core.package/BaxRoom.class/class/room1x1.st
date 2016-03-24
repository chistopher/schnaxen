as yet unclassified
room1x1

	| raum | 

	raum := BaxRoom new.
	raum imageName: 'room1x1'.
	
	"bäume"
	1 to: 4 do: [ :i | raum obstacles add: (BaxObject new
			fieldImageName: 'baum';
			sizeInField: 5@5;
			location: i * 11@3)].
	
	"mauern"
	0 to: 5 do: [ :i | raum obstacles add: (BaxObject new
			fieldImageName: 'mauer_vorn';
			sizeInField: 4@4;
			location: (4*i)@10)].
	0 to: 2 do: [ :i | raum obstacles add: (BaxObject new
		fieldImageName: 'mauer_seite';
		sizeInField: 2@6;
		location: 28@(i*4))].

	raum obstacles add: (BaxObject new
		fieldImageName: 'mauer_vorn';
		sizeInField: 4@4;
		location: 24@10;
		addInteraction: [:this| this owner activeRoom obstacles remove: this. this delete]).
		
	raum obstacles add: (BaxNPC new
		fieldImageName: 'punk';
		sizeInField: 2@2;
		location: 40@14;
		addSpeech:  {'Farewell fellow noob'. 'geh weg'};
		addInteraction: [:this| this sayStuff]).
		
	raum obstacles add: (BaxNPC new
		fieldImageName: 'bix';
		sizeInField: 4@4;
		location: 10@20;
		addSpeech:  {'Arbeit, Arbeit?'};
		addInteraction: [:this| this sayStuff]).
		

	^raum
