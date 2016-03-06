as yet unclassified
rick

	| enemy | 
	
	enemy := self new.
	^enemy 
		image: (BaxPlayer imageFor: 'rick.png');
		maxHP: 3;
		currentHP: 3;
		dmg: 1.
		

	