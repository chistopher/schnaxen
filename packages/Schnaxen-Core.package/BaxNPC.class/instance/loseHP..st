fighting
loseHP: aNumber

	self currentHP: currentHP - aNumber.

	self displayInFight: (TextMorph new 
		contents: aNumber asString; 
		beAllFont: (StrikeFont
 			familyName: 'BitstreamVeraSans'
        		size:  4 * BaxApp magnification);
		color: Color red).
	
	self isDead ifTrue: [ | oldCenter | 
		oldCenter := self fightMorph center.
		self fightMorph image: (BaxResources image: 'rip' size: 50@50); center: oldCenter]