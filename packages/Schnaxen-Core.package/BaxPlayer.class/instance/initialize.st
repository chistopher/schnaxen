initialization
initialize
	

	super initialize.
	self image: self defaultImage.
	self fightImage: 'bax-1x0' size: 100@100.
	self 
		level: 1;
		maxHP: 10;
		currentHP: maxHP;
		dmg: 1;
		requiredXP: 10.
	