helper
valueForItem: aMorph in: anArray

	
	^(Dictionary newFrom: anArray) at: (self keyOfMorph: aMorph)