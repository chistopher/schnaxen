as yet unclassified
addLevel: anOrderedCollection

	self level: self level +1.
	self levelMorphs add: OrderedCollection new.
	anOrderedCollection do: [:each| self addItem: each].
	self selectItem: self morphsOfCurrentLevel first
	