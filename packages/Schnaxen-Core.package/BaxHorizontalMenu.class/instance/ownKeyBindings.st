keyBindings
ownKeyBindings	
	
	^ Dictionary newFrom: {
	$e		-> 	[self chooseItem].
	$w		-> 	[self dropLevel].
	$a		-> 	[self last].
	$s		-> 	[self expandItem].
	$d		-> 	[self next].
	} 