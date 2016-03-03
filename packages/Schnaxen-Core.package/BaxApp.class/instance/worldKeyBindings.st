key bindings
worldKeyBindings
	
	| dic | 
	dic := Dictionary newFrom: {
	$c 		-> 	[self openMenu ].
	$i		-> 	[self openMenu ].
	$v		-> 	[self changeToBattle ]
	}.
	dic addAll: self field bax keyBindings.
	^dic