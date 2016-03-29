movement
canMoveTo: aRect
	
	| obstacles |
	
	obstacles := self owner activeRoom obstacles, {self owner bax}.

	^obstacles noneSatisfy: [ :submorph |
		submorph passable not and: [
		(submorph = self) not and: [
		submorph bounds  intersects: aRect]]]