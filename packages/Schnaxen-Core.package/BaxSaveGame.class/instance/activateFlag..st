story
activateFlag: aSymbol

	| affectedActions |

	affectedActions := self progressFlags select: [:each| 
		each value includes: aSymbol].
	affectedActions associationsDo: [:each| 
		each value: (each value copyWithout: aSymbol).
		each value ifEmpty: [self perform: each key]]