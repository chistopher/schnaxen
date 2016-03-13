as yet unclassified
fromList: anOrderedCollection withDepth: aNumber
	
	self items: anOrderedCollection.
	self maxLevel: aNumber.
	self addLevel: anOrderedCollection.