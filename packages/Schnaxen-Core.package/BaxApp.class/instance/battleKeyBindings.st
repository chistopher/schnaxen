key bindings
battleKeyBindings

	| dic | 
	
	dic := Dictionary newFrom: {
	$x		-> 	[self battle nextTurn].
	$v		-> 	[self changeToWorld].
	}.
	dic addAll: self battle keyBindings.
	^dic