accessing
currentHP: anObject

	currentHP := anObject.
	
	self isDead ifTrue: [
		self image: (BaxPlayer imageFor: 'rip.png')]