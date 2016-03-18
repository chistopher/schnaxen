initialization
initialize

	super initialize.
	self direction: 0@1.
	self skills add: #attack:.
	self xp: 0.
	self sizeInField: 2@2.
	self fieldImageName: 'bax'.
	self fightImageSize: 6@6.
	self fightImageName: 'bax-1x0'.