as yet unclassified
rick: aName

	| enemy | 
	
	enemy := self new.
	^enemy 
		type: 'rick';
		fightImage: 'rick' size: 100@100;
		baxName: aName;
		level: 1;
		maxHP: 3;
		currentHP: 3;
		dmg: 1.
		

	