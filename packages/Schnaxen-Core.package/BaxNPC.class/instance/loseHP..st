fighting
loseHP: aNumber

	| dmgNumber |
	
	self currentHP: currentHP - aNumber.
	
	dmgNumber := TextMorph new 
		contents: aNumber asString; 
		beAllFont: (StrikeFont
 			familyName: 'BitstreamVeraSans'
        		size:  4 * BaxApp magnification);
		center: self fightMorph center;
		bottom: self fightMorph top; 
		color: Color red.
	
	self fightMorph addMorph: dmgNumber.
	dmgNumber addAlarm: #delete after: 1000.
	[ | duration | 
		duration := 0. 
		[duration < 1000] whileTrue: [
			(Delay forMilliseconds: 100) wait. 
			duration := duration + 100.
			dmgNumber position: dmgNumber position -(0@5)]] fork.
	
	self isDead ifTrue: [
		self fightMorph image: (BaxResources image: 'rip' size: 50@50)]