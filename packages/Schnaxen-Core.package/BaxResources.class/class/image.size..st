as yet unclassified
image: aName size: aPoint

	| pathPrefix slash subDic |

	slash := FileDirectory slash.
	pathPrefix := '.', slash ,'schnaxen', slash, 'images', slash.
	imageCache ifNil: [imageCache := Dictionary new].
	subDic := imageCache at: aName ifAbsentPut: Dictionary new.

	^subDic at: aPoint ifAbsentPut: [
		(Form fromFileNamed: pathPrefix, aName, '.png') scaledToSize: aPoint]