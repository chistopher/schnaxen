key bindings
ownKeyBindings
	
	| dic | 
	dic := Dictionary newFrom: {
	$w		-> 	[self mainMenu last].
	$a		-> 	[self mainMenu dropLevel].
	$s		-> 	[self mainMenu next].
	$d		-> 	[self mainMenu expandItem].
	$e		-> 	[self mainMenu chooseItem].
	}.
	^dic