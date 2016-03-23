as yet unclassified
morphForLevel: aNumber

	self vertical ifTrue:[
		^AlignmentMorph newColumn
			layoutFrame: (LayoutFrame fractions: ( ( aNumber-1 / self maxLevel ) @ 0 corner: ( aNumber / self maxLevel ) @ 0 ) ).]
	ifFalse:[
		^AlignmentMorph newRow
			layoutFrame: (LayoutFrame fractions: (0 @ ( aNumber-1 / self maxLevel ) corner: 1.0 @ ( aNumber / self maxLevel ) ) ).]