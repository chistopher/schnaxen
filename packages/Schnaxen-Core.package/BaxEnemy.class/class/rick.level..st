as yet unclassified
rick: aName level: aNumber

	| enemy | 
	
	enemy := self new.
	^enemy 
		image: (BaxResources image: 'rick'size: 100@100);
		baxName: aName, '_lvl', aNumber;
		level: aNumber;
		xp: 1 + aNumber;
		maxHP: 2 + aNumber * aNumber;
		currentHP: 2 + aNumber * aNumber;
		dmg: 1+ aNumber.
		

	