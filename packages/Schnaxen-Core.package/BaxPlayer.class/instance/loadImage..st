initialization
loadImage: aFileName
	
	| pathPrefix slash |

	slash := FileDirectory slash.
	pathPrefix := '.', slash ,'schnaxen', slash, 'images', slash.
	self image: (Form fromFileNamed: pathPrefix, aFileName)