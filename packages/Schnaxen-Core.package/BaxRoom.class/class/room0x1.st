as yet unclassified
room0x1

	| raum | 

	raum := BaxRoom new.
	raum imageName: 'bix hintergrund 1'.
	raum obstacles add: (BaxObject new fieldImageName: 'tree2'; sizeInField: 10@10; location: 10@20).
	
	raum obstacles add: (BaxNPC new fieldImageName: 'wikibax'; sizeInField: 3@3; location: 30@16;
		addSpeech:  {'Arbeit, Arbeit?'. 'Noch mehr Arbeit?'. 'Ich geh dann mal?'. 'Riiichtig!'};
		addInteraction: [:this| this sayStuff]).
		
	raum obstacles add: (BaxNPC new fieldImageName: 'bixtan'; sizeInField: 3@3; location: 34@16;
		addSpeech:  {'Arbeit, Arbeit?'. 'Noch mehr Arbeit?'. 'Ich geh dann mal?'. 'Riiichtig!'};
		addInteraction: [:this| this sayStuff]).
		
	raum obstacles add: (BaxNPC new fieldImageName: 'unicorn'; sizeInField: 4@4; location: 40@7).
	
	^raum
