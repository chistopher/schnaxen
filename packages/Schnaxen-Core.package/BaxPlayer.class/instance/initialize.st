initialization
initialize
	

	super initialize.
	self 
		inventory: OrderedCollection new;
		fieldImageName: 'bax';
		image: (BaxResources image: self fieldImageName size: self sizeInField * BaxApp magnification); 
		level: 1;
		maxHP: 10;
		currentHP: maxHP;
		dmg: 1;
		requiredXP: 10
	