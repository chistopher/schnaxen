rooms
room1x1

	self imageName: 'room1x1'.
	
	"bäume"
	1 to: 4 do: [ :i | self obstacles add: (BaxObject new
			fieldImageName: 'baum';
			sizeInField: 5@5;
			location: i * 11@3)].
	
	"mauern"
	0 to: 5 do: [ :i | self obstacles add: (BaxObject new
			fieldImageName: 'mauer_vorn';
			sizeInField: 4@4;
			location: (4*i)@10)].
	0 to: 2 do: [ :i | self obstacles add: (BaxObject new
		fieldImageName: 'mauer_seite';
		sizeInField: 2@6;
		location: 28@(i*4))].

	self obstacles add: (BaxObject new
		fieldImageName: 'mauer_vorn';
		sizeInField: 4@4;
		location: 24@10;
		addInteraction: #disappear).
		
	self obstacles add: (BaxNPC new
		baxName: 'levelPunk';
		fieldImageName: 'punk';
		sizeInField: 2@2;
		location: 40@14;
		addSpeech:  {'Farewell fellow adventurer'. 'finish this little talk with me', Character cr, 'and ur team gets a lvlUp'};
		addInteraction: #speak;
		actionFlag: #spokeToPunk).
		
	"item you can pick up"
	1 to: 5 do: [ :i | self obstacles add: (BaxItem new
		baxName: 'veryGr8ItemName', i;
		fieldImageName: 'bpmn_gatter';
		sizeInField: 1@1;
		location: (10*i)@20;
		addInteraction: #pickUp)].

	"changes the active bax"	
	self obstacles add: (BaxObject new
		fieldImageName: 'oneway';
		sizeInField: 5@5;
		location: 30@25;
		addInteraction: #changePlayer).
