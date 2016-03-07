as yet unclassified
chooseItem

	| item value |
	
	self ifEmpty: [^self].
	item := self selectedItems first.
	value := self valueForItem: item in: self items.

	[self selectedItems last = item] whileFalse: [
		item := selectedItems after: item.
		value := self valueForItem: item in: value.
		].
	
	(value isKindOf: OrderedCollection) ifTrue: [self addLevel: value].
	(value isKindOf: BlockClosure) ifTrue: [value value]

	