accessing
useableBounds

	^ useableBounds ifNil: [0@0 extent: self minAppSize]