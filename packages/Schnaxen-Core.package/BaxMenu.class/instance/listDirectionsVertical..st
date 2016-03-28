helper
listDirectionsVertical: aBoolean

	^aBoolean 
		ifTrue: [#topToBottom]
		ifFalse: [#leftToRight].
		
		