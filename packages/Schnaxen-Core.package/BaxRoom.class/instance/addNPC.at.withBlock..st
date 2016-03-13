add
addNPC: aName at: aPosition withBlock: aBlock
	
	^self interactables add: ((self addNPC: aName at: aPosition) block: aBlock)

