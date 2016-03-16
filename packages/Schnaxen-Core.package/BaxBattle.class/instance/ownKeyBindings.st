keyBindings
ownKeyBindings	
	
	| dic |
	
	dic := Dictionary newFrom: {
	$c		-> 	[self showStats].
	$q		-> 	[self enemyActs ifTrue: [self nextTurn]].
	}.
	^dic
	
	