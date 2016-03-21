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
	
	raum obstacles add: (BaxObject new
		fieldImageName: 'mauer_vorn';
		sizeInField: 4@4;
		location: 20@10;
		addSpeech:  {
		'hallo'. 'ich bin eine', Character cr, 'Mauer'. 'jup das stimmt'. 'geh weg'};
		addInteraction: [:this| this sayStuff]).
		
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
