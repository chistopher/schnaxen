building
addLevel: anOrderedCollection

	"create structure for new level"
	self level: self level +1.
	self levelMorphs add: OrderedCollection new.
	anOrderedCollection do: [:each| self addItem: each].
	
	"show the first n items of this newly ceated level"
	(1 to: (self lastLevelItems size min: self visibleItems)) do: [ :index |
		self lastLevelMorph addMorphBack: (self lastLevelItems at: index)].
	self layout: self lastLevelMorph submorphs max: self visibleItems vertical: self vertical.
	self selectItem: self lastLevelItems first.
	