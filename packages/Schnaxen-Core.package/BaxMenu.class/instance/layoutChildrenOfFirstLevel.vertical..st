as yet unclassified
layoutChildrenOfFirstLevel: aMorph vertical: aBoolean

	aMorph submorphs do:[ :each |
				
		| index |		
		
		index := aMorph submorphs indexOf: each.
				
		aBoolean
			ifTrue:[
				each layoutFrame: (LayoutFrame fractions: ( ( index-1 / self maxLevel ) @ 0 corner: ( index / self maxLevel ) @ 1.0 ) ).
				]
			ifFalse:[
				each layoutFrame: (LayoutFrame fractions: (0 @ ( index-1 / self maxLevel ) corner: 1.0 @ ( index / self maxLevel ) ) ).
				].
		].
		