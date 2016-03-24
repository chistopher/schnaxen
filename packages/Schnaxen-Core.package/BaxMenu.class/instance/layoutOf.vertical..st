as yet unclassified
layoutOf: anOrderedCollection vertical: aBoolean

	anOrderedCollection do:[ :each |
				
		| index |		
		
		index := anOrderedCollection indexOf: each.
				
		aBoolean
			ifTrue:[
				each layoutFrame: (LayoutFrame fractions: ( ( index-1 / self visibleItems ) @ 0 corner: ( index / self visibleItems ) @ 1.0 ) ).
				]
			ifFalse:[
				each layoutFrame: (LayoutFrame fractions: (0 @ ( index-1 / self visibleItems ) corner: 1.0 @ ( index / self visibleItems ) ) ).
				].
		].
		