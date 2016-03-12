as yet unclassified
rick: aName

	| enemy | 
	
	enemy := self new.
	^enemy 
		image: (BaxResources image: 'rick' size: 50@50);
		baxName: aName;
		level: 1;
		maxHP: 3;
		currentHP: 3;
		dmg: 1.
		

	