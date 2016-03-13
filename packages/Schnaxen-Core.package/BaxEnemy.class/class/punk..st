as yet unclassified
punk: aName

	| enemy | 
	
	enemy := self new.
	^enemy 
		image: (BaxResources image: 'punk1x0' size: 100@100);
		type: 'punk';
		baxName: aName;
		level: 1;
		maxHP: 3;
		currentHP: 3;
		dmg: 1.
		

	