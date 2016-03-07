key bindings
worldKeyBindings
	
	| dic | 
	dic := Dictionary newFrom: {
	$c 		-> 	[self openMenu ].
	$i		-> 	[self showStuff: 'hi dudes'].
	$v		-> 	[self changeToBattle ].
	$z		-> 	[self baxens do: [:each| each gainXP: 10]].
	$e 		-> 	[self interact]
	}.
	dic addAll: self field bax keyBindings.
	^dic