as yet unclassified
canMoveTo: aRect

	^(self room contains: aRect) and: [
		self room obstacles noneSatisfy: [ :submorph |
			(submorph = self) not and: [
				(submorph bounds withTop: (0.2 * submorph extent y + submorph position y)) intersects: aRect]]]