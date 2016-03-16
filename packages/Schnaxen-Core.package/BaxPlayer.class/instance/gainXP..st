fighting
gainXP: aNumber

	self xp: self xp + aNumber.
	
	[self xp >= self requiredXP] 
		whileTrue: [self levelUp]