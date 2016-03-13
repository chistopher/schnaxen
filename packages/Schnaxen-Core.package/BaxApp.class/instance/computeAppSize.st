initialization
computeAppSize

	"make sure to clip the size to a multiple of 64@36 which is the minimum 16/9 resolution we support"
	| size |
	size := self world extent - (self world extent \\ (BaxApp aspectRatio *4)).
	BaxApp appSize: size.

	
		
	