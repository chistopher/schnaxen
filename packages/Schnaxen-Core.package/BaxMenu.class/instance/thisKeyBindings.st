keyBindings
thisKeyBindings
	
	" The keyBinding depends whenever the Menu is vertical aligned or horizontal "
	self vertical
		ifTrue:[
			^Dictionary newFrom: {
				$w		-> 	[self last].
				$a		-> 	[self dropLevel].
				$s		-> 	[self next].
				$d		-> 	[self expandItem].
				$e		-> 	[self chooseItem].}.]
		ifFalse:[
			^Dictionary newFrom: {
				$e		-> 	[self chooseItem].
				$w		-> 	[self dropLevel].
				$a		-> 	[self last].
				$s		-> 	[self expandItem].
				$d		-> 	[self next].}.].
