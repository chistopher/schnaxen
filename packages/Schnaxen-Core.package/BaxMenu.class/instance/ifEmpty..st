helper
ifEmpty: aBlock

	^self isEmpty ifTrue: [aBlock value]