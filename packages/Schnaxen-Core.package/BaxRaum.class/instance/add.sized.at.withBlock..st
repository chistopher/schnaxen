add
add: aName sized: anExtent at: aPosition withBlock: aBlock
	
	^self interactables add: ((self add: aName sized: anExtent at: aPosition) block: aBlock)

