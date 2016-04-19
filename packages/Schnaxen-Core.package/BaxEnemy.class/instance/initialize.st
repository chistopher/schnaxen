initialization
initialize

	super initialize.
	self
		deleteAfterDefeat: true;
		maxHP: 1;
		currentHP: maxHP;
		dmg: 1.