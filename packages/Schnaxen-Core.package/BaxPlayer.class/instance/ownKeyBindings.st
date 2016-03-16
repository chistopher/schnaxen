keyBindings
ownKeyBindings

	^ Dictionary newFrom: {
	$e 		-> 	[self interact].
	$w 		-> 	[self moveInDirection: (self directions at: 1)].
	$a 		-> 	[self moveInDirection: (self directions at: 2)].
	$s 		->	[self moveInDirection: (self directions at: 3)].
	$d 		->	[self moveInDirection: (self directions at: 4)]
	} 