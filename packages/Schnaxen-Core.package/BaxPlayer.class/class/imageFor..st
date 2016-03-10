as yet unclassified
imageFor: anImageName

	| pathPrefix slash |

	slash := FileDirectory slash.
	pathPrefix := '.', slash ,'schnaxen', slash, 'images', slash.

	imageCache ifNil: [imageCache := Dictionary new].
	^imageCache at: anImageName ifAbsentPut: [
		Form fromFileNamed: pathPrefix, anImageName, '.png']
			