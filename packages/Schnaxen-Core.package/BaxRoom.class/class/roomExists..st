as yet unclassified
roomExists: aPos

	^self respondsTo: (Symbol newFrom: 'room', aPos x, 'x', aPos y)