as yet unclassified
imageFor: aFileName

	| pathPrefix slash |

	slash := FileDirectory slash.
	pathPrefix := '.', slash ,'schnaxen', slash, 'images', slash.

	imageCache ifNil: [imageCache := Dictionary new].
	^imageCache at: aFileName ifAbsentPut: [
		Form fromFileNamed: pathPrefix, aFileName]
			