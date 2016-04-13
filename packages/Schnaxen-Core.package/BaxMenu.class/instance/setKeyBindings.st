keyBindings
setKeyBindings

	self keyBindings: (Dictionary newFrom: {
		#b	-> 	[self close]}).
	self vertical 
		ifTrue: [self keyBindings addAll: self verticalKeyBindings]
		ifFalse: [self keyBindings addAll: self horizontalKeyBindings]
