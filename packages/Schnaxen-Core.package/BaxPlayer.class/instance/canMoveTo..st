movement
canMoveTo: aRect

	^self field activeRaum submorphs 
		noneSatisfy: [ :submorph |
			(submorph = self) not and: [(submorph bounds withTop: (0.2 * submorph extent y + submorph position y)) intersects: aRect]]

	