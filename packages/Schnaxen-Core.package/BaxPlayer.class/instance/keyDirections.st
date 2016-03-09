movement
keyDirections

	^Dictionary newFrom: {
	$w 		-> 	(self directions at: 1).
	$a 		-> 	(self directions at: 2).
	$s 		->	(self directions at: 3).
	$d 		->	(self directions at: 4)}