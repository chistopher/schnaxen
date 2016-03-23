as yet unclassified
morphNumber: anIndex inListsized: aSize vertical: aBoolean

	| morph |

	aBoolean
		ifTrue:[
			morph := Morph new
				listDirection: #topToBottom;
				layoutFrame: (LayoutFrame fractions: ( ( anIndex-1 / aSize ) @ 0 corner: ( anIndex / aSize ) @ 1.0 ) ).]
		ifFalse:[
			morph := Morph new
				listDirection: #leftToRight;
				layoutFrame: (LayoutFrame fractions: (0 @ ( anIndex-1 / aSize ) corner: 1.0 @ ( anIndex / aSize ) ) ).].
			
	^morph 
		hResizing: #spaceFill;
		vResizing: #spaceFill.
		