fighting
levelUp

	self 
		requiredXP: self requiredXP * 0.2 + self requiredXP;
		level: self level + 1;
		maxHP: self maxHP + self level atRandom;
		currentHP: self maxHP;
		dmg: self dmg + 2 atRandom.
	
	self level = 2 ifTrue: [
		self skills add: #kick:].