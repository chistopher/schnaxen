as yet unclassified
showItems: anOrderedCollection on: aMorph

	aMorph removeAllMorphs.
	
	self layoutOf: anOrderedCollection vertical: self vertical not.
	
	aMorph addAllMorphs: anOrderedCollection.