key bindings
worldKeyBindings
	
	| dic | 
	dic := Dictionary newFrom: {
	$c 		-> 	[self openMenu ].
	$i		-> 	[self showStuff: 'hi dudes'].
	$v		-> 	[self startTestBattle].
	$z		-> 	[self baxens do: [:each| each gainXP: 10]].
	$e 		-> 	[self interact].
	$0 		-> 	[self delete].
	Character escape	-> 	[self openWindows removeLast. self activateMainMenu]}.
	dic addAll: self field bax keyBindings.
	^dic