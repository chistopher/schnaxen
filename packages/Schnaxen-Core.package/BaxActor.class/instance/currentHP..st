accessing
currentHP: anObject

	currentHP := anObject.
	
	self isDead ifTrue: [
		self image: (BaxResources image: 'rip' size: 50@50)]