as yet unclassified
canMoveTo: aRect

	^self owner activeRoom obstacles, self owner activeRoom enemies noneSatisfy: [ :submorph |
		(submorph = self) not and: [
		submorph bounds  intersects: aRect]]