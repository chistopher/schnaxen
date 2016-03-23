as yet unclassified
maxDepthOf: anOrderedCollection
	
	(anOrderedCollection isKindOf: BlockClosure)
	ifTrue: [^0]
	ifFalse: [^(( anOrderedCollection collect: [ :each | self maxDepthOf: each value ] ) max + 1)]
	
	 