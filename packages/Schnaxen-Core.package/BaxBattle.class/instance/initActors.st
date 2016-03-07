initialization
initActors

	| pos |

	self addAllMorphs: self baxens.
	self addAllMorphs: self enemies.
	
	pos := self position + 20.
	self enemies do: [ :each | each position: pos. pos := pos + (0@(each extent y +20))].
		
	pos := self position + (500@20).
	self baxens do: [ :each | each position: pos. pos := pos + (0@(each extent y +20))].
	
	self currentActor: self baxens first.
	self showStats.