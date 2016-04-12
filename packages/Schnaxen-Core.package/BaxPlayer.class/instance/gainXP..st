fighting
gainXP: aNumber

	self xp: self xp + aNumber.
	
	[self xp >= self requiredXP] 
		whileTrue: [
			self xp: self xp - self requiredXP ceiling.
			self levelUp.
			]