as yet unclassified
canMoveTo: aRect

	^self owner activeRoom obstacles noneSatisfy: [ :submorph |
		submorph passable not and: [
			(submorph = self) not and: [
				submorph bounds  intersects: aRect]]]