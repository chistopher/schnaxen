key bindings
worldKeyBindings
	
	| dic | 
	dic := Dictionary newFrom: {
	$c 		-> 	[self openMenu ].
	$i		-> 	[self showStuff: 'hi dudes'].
	$v		-> 	[self changeToBattle ].
	$e 		-> 	[self interact]
	}.
	dic addAll: self field bax keyBindings.
	^dic