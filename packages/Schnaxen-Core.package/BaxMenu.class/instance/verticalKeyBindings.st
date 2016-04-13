keyBindings
verticalKeyBindings
	
	^Dictionary newFrom: {
		#up	-> 	[self last].
		#down	-> 	[self next].
		#left	-> 	[self dropLevel].
		#right	-> 	[self expandItem].
		#a		-> 	[self chooseItem]}
