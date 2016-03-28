keyBindings
ownKeyBindings
	
	^ Dictionary newFrom: {
	$v		-> 	[self startTestBattle].
	$z		-> 	[self baxens do: [:each| each gainXP: 10]].
		
	$e 		-> 	[self bax interact].
	$w 		-> 	[self bax moveInDirection: (self bax directions at: 1)].
	$a 		-> 	[self bax moveInDirection: (self bax directions at: 2)].
	$s 		->	[self bax moveInDirection: (self bax directions at: 3)].
	$d 		->	[self bax moveInDirection: (self bax directions at: 4)]
	}