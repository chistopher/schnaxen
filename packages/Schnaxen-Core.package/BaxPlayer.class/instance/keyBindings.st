interaction
keyBindings

	^ Dictionary newFrom: {
	$w 		-> 	[self moveWithKey: $w].
	$a 		-> 	[self moveWithKey: $a].
	$s 		->	[self moveWithKey: $s].
	$d 		->	[self moveWithKey: $d]
	} 