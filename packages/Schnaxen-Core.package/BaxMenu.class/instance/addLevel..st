as yet unclassified
addLevel: anOrderedCollection

	| currentLevelSubmorphs |

	self level: self level +1.
	self levelMorphs add: OrderedCollection new.
	anOrderedCollection do: [:each| self addItem: each].
	
	currentLevelSubmorphs := self submorphs first submorphs at: self level.
	( 1 to: ( ( self morphsOfCurrentLevel ) size min: self visibleItems  ) ) do:[ :i |
		currentLevelSubmorphs addMorphBack: ( ( self morphsOfCurrentLevel ) at: i ).
		].
	
	self layoutChildrenOf: currentLevelSubmorphs vertical: self vertical not.
	
	self selectItem: self morphsOfCurrentLevel first next: true.
	