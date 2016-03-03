as yet unclassified
keyBindings

	^ Dictionary newFrom: {
	$w 		-> 	[self moveInDirection: (0 @ -50)].
	$a 		-> 	[self moveInDirection: (-50 @ 0)].
	$s 		->	[self moveInDirection: (0 @ 50)].
	$d 		->	[self moveInDirection: (50 @ 0)]
	} 