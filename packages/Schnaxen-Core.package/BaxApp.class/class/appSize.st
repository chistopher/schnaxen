accessing
appSize

	^ appSize ifNil: [self minAppSize]