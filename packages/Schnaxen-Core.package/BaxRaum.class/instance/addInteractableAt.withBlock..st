add
addInteractableAt: aPosition withBlock: aBlock
	
	| ding |
	
	ding := BaxInteractable new.
	ding relativePosition:  aPosition.
	ding block: aBlock.
	self interactables add: ding.

