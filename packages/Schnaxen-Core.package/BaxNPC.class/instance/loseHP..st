fighting
loseHP: aNumber

	self currentHP: currentHP - aNumber.
	
	self isDead ifTrue: [
		self fightMorph image: (BaxResources image: 'rip' size: 50@50)]