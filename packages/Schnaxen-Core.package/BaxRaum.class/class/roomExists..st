as yet unclassified
roomExists: aPos

	^self respondsTo: (Symbol newFrom: 'raum', aPos x, 'x', aPos y)