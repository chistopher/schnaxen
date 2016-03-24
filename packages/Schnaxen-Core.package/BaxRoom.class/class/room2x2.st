as yet unclassified
room2x2

	| raum | 

	raum := BaxRoom new.
	raum imageName: 'room2x2'.


	raum obstacles add: (BaxNPC new fieldImageName: 'schnaxen'; sizeInField: 2@2; location: 10@16;
		addSpeech:  {'Arbeit, Arbeit?'. 'Noch mehr Arbeit?'. 'Ich geh dann mal?'. 'Riiichtig!'};
		addInteraction: [:this| this sayStuff]).
	raum obstacles add: (BaxNPC new fieldImageName: 'schnaxen'; sizeInField: 4@4; location: 20@16;
		addSpeech:  {'Arbeit, Arbeit?'. 'Noch mehr Arbeit?'. 'Ich geh dann mal?'. 'Riiichtig!'};
		addInteraction: [:this| this sayStuff]).
	raum obstacles add: (BaxNPC new fieldImageName: 'schnaxen'; sizeInField: 10@10; location: 50@15;
		level: 1;
		maxHP: 20;
		currentHP: 20;
		dmg: 3;
		xp: 20;
		baxName: 'GigaBax'; 
		fightImageName: 'schnaxen0x1'; 
		fightImageSize: 20@20;
		addInteraction: [:this| this owner changeToBattleVs: {this}]).
	
	^raum
