menu
startGame

	self field ifNil: [self newGame].
	self openSubWindow: self field.