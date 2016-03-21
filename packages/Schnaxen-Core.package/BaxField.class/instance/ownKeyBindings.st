keyBindings
ownKeyBindings
	
	^ Dictionary newFrom: {
	$v		-> 	[self startTestBattle].
	$z		-> 	[self baxens do: [:each| each gainXP: 10]].
	}