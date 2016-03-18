initialization
initialize
	

	super initialize.
	self image: (BaxResources image: self fieldImageName size: self sizeInField * BaxApp magnification).
	self 
		level: 1;
		maxHP: 10;
		currentHP: maxHP;
		dmg: 1;
		requiredXP: 10
	