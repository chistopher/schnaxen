as yet unclassified
dropLevel

	self ifEmpty: [^self].
	self level = 1 ifTrue: [^self].
	( self shownLevel ) removeAllMorphs.
	self levelMorphs removeLast.
	self selectedItems removeLast.
	self level: self level -1.