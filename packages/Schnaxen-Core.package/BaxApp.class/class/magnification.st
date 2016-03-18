accessing
magnification

	^ magnification ifNil: [self appSize x / self minAppSize x]