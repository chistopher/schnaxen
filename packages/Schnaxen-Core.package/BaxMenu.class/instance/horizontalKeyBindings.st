keyBindings
horizontalKeyBindings
	
	^Dictionary newFrom: {
		#a			-> 	[self chooseItem].
		#up		-> 	[self dropLevel].
		#left		-> 	[self last].
		#down		-> 	[self expandItem].
		#right		-> 	[self next]}
