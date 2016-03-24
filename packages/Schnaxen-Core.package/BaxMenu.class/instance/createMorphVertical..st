as yet unclassified
createMorphVertical: aBoolean

	| morph |

	aBoolean
		ifTrue:[
			morph := Morph new
				listDirection: #topToBottom.]
		ifFalse:[
			morph := Morph new
				listDirection: #leftToRight.].
			
	^morph 
		hResizing: #spaceFill;
		vResizing: #spaceFill.
		