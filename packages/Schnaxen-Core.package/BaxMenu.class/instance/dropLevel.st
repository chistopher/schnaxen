commands
dropLevel

	self level <= 1 ifTrue: [^self].
	self lastLevelMorph removeAllMorphs.
	self levelMorphs removeLast.
	self selectedItems removeLast.
	self level: self level -1.