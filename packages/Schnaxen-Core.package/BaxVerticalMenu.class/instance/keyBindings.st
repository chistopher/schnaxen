keyBindings
keyBindings
	
	^Dictionary newFrom: {
	$w		-> 	[self last].
	$a		-> 	[self dropLevel].
	$s		-> 	[self next].
	$d		-> 	[self expandItem].
	$e		-> 	[self chooseItem].}.