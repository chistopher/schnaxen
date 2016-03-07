as yet unclassified
dropLevel

	self ifEmpty: [^self].
	self level = 1 ifTrue: [^self].
	self morphsOfCurrentLevel do: [:each| self removeMorph: each].
	self levelMorphs removeLast.
	self selectedItems removeLast.
	self level: self level -1.