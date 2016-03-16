initialization
startBattle

	| pos |

	self baxens do: [:each| self addMorph: each fightMorph].
	
	self enemies do: [:each| self addMorph: each fightMorph].
	
	pos := self position + 20.
	self enemies do: [ :each | each fightMorph position: pos. pos := pos + (0@(each fightMorph extent y +20))].
		
	pos := self position + (500@20).
	self baxens do: [ :each | each fightMorph position: pos. pos := pos + (0@(each fightMorph extent y +20))].
	
	self currentActor: self baxens first.
	self showStats.
	
	self fighterTurn: self currentActor
