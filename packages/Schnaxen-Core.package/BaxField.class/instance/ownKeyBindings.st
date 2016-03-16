keyBindings
ownKeyBindings
	
	^ Dictionary newFrom: {
	$i		-> 	[self showStuff: 'hi dudes'].
	$v		-> 	[self startTestBattle].
	$z		-> 	[self baxens do: [:each| each gainXP: 10]].
	}