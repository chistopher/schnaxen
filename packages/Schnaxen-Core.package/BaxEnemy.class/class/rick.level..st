as yet unclassified
rick: aName level: aNumber

	| enemy | 
	
	enemy := self new.
	^enemy 
		image: ((BaxPlayer imageFor: 'rick') scaledToSize: 100@100);
		baxName: aName, '_lvl', aNumber;
		level: aNumber;
		xp: 1 + aNumber;
		maxHP: 2 + aNumber * aNumber;
		currentHP: 2 + aNumber * aNumber;
		dmg: 1+ aNumber.
		

	