keyBindings
ownKeyBindings
	
	| dic | 
	dic := Dictionary newFrom: {
	$i		-> 	[self showStuff: 'hi dudes'].
	$v		-> 	[self startTestBattle].
	$z		-> 	[self baxens do: [:each| each gainXP: 10]].
	$e 		-> 	[self interact].
	}.
	dic addAll: self bax keyBindings.
	^dic