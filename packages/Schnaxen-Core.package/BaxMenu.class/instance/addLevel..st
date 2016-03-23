as yet unclassified
addLevel: anOrderedCollection

	| currentLevelSubmorphs |

	self level: self level +1.
	self levelMorphs add: OrderedCollection new.
	anOrderedCollection do: [:each| self addItem: each].
	self selectItem: self morphsOfCurrentLevel first.
	
	currentLevelSubmorphs := self submorphs first submorphs at: self level.
	( 1 to: ( ( self levelMorphs at: self level ) size min: self visibleItems  ) ) do:[ :i |
		currentLevelSubmorphs addMorphBack: ( ( self levelMorphs at: self level ) at: i ).
		]
	