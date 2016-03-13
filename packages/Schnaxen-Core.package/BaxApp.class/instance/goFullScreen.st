initialization
goFullScreen

	Project current fullScreenOn.
	self 
		openInWorld;
		position: 0@0;
		extent: self world extent.
	BaxField fieldSize: (self world extent x min: self world extent y)@(self world extent x min: self world extent y).
		
	