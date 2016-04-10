interaction
changeDialog: anOrderedCollection

	self speechArray: (anOrderedCollection collect: [:string| Text fromString: string]).
	self speechPointer: 0.
	