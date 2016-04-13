keyBindings
ownKeyBindings
	
	^ Dictionary newFrom: {
	#start		-> 	[self openSubWindow: self inGameMenu].
	#select 	->	[self openSubWindow: self mainMenu].
	#b			-> 	[self saveGame team do: [:each| each gainXP: 10]].
	#a 			-> 	[self bax interact].
	#up 		-> 	[self bax moveInDirection: (self bax directions at: 1)].
	#left 		-> 	[self bax moveInDirection: (self bax directions at: 2)].
	#down 		->	[self bax moveInDirection: (self bax directions at: 3)].
	#right 		->	[self bax moveInDirection: (self bax directions at: 4)]
	}