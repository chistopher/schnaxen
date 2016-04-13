accessing
keyMap

	^ keyMap ifNil: [keyMap := self defaultKeyMap]