key bindings
battleKeyBindings

	^ Dictionary newFrom: {
	$y		-> 	[self changeToWorld ].
	$x		-> 	[self changeToWorld ].
	$v		-> 	[self changeToWorld ].
	} 