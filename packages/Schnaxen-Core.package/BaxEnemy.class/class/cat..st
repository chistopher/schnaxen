as yet unclassified
cat: aName

	| enemy | 
	
	enemy := self new.
	^enemy 
		type: 'cat';
		fightImage: 'cat1x0' size: 100@100;
		baxName: aName;
		level: 1;
		maxHP: 3;
		currentHP: 3;
		dmg: 1.
		

	