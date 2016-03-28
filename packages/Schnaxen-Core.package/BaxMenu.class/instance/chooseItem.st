commands
chooseItem

	| contents |

	self ifEmpty: [^self].
	contents := self selectedItems last valueOfProperty: #itemContent.
	(contents isKindOf: OrderedCollection) ifTrue: [self addLevel: contents].
	(contents isKindOf: BlockClosure) ifTrue: [contents value]

	