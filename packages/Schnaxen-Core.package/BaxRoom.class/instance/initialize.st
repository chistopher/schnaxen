initialization
initialize

	super initialize.
	self obstacles: OrderedCollection new.
	self interactables: OrderedCollection new.
	self extent: 0@0.