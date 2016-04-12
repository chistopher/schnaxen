story-meta
activateFlag: aSymbol

	| affectedActions |

	affectedActions := self progressFlags select: [:each| 
		each value includes: aSymbol].
	affectedActions associationsDo: [:each| 
		self progressFlags at: each key put: (each value copyWithout: aSymbol).
		(self progressFlags at: each key) ifEmpty: [self perform: each key]]