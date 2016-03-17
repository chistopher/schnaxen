as yet unclassified
resize

	| items depth |

	self bounds: BaxApp useableBounds.
	items := self items.
	depth := self maxLevel.
	self clearMenu.
	self fromList: items withDepth: depth.
	
	
	
	