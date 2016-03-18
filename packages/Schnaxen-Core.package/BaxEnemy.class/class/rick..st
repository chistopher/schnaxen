as yet unclassified
rick: aName

	| enemy | 
	
	enemy := self new.
	^enemy 
		fightImageName: 'cat1x0'; 
		baxName: aName;
		level: 1;
		maxHP: 3;
		currentHP: 3;
		dmg: 1.
		

	