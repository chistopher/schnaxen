keyBindings
keyBindings	
	
	^ Dictionary newFrom: {
	$c		-> 	[self showStats].
	$e		-> 	[self enemyActs ifTrue: [self nextTurn]. self menuBar chooseItem].
	$w		-> 	[self menuBar dropLevel].
	$a		-> 	[self menuBar last].
	$s		-> 	[self menuBar expandItem].
	$d		-> 	[self menuBar next].
	} 