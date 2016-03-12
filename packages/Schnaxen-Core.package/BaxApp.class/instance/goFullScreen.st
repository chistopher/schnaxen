initialization
goFullScreen

	"Display fullScreenMode: true."
	Project current fullScreenOn.
	self 
		openInWorld;
		position: 0@0;
		extent: self world extent.
		
	