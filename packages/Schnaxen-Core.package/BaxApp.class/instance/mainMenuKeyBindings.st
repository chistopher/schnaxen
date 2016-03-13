key bindings
mainMenuKeyBindings
	
	| dic | 
	dic := Dictionary newFrom: {
	$c 		-> 	[self].
	$0 		-> 	[self delete].
	$w		-> 	[self mainMenu last].
	$a		-> 	[self mainMenu dropLevel].
	$s		-> 	[self mainMenu next].
	$d		-> 	[self mainMenu expandItem].
	$e		-> 	[self mainMenu chooseItem].
	}.
	^dic