geometry
itemExtent

	self maxLevel 
		ifNil: [^70@15]
		ifNotNil: [^ (self extent x - (self gap x * 2)) @ ((self extent y - self gap y) / self visibleItems - self gap y) ceiling]