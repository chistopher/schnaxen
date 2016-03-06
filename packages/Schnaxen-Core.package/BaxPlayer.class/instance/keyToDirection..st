movement
keyToDirection: aSymbol

	^ (Dictionary newFrom: {
	$w 		-> 	(0 @ -1).
	$a 		-> 	(-1 @ 0).
	$s 		->	(0 @ 1).
	$d 		->	(1 @ 0)}) at: aSymbol 