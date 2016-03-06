key bindings
battleKeyBindings

	^ Dictionary newFrom: {
	$c		-> 	[self battle showStats].
	$x		-> 	[self changeToWorld ].
	$v		-> 	[self changeToWorld ].
	} 