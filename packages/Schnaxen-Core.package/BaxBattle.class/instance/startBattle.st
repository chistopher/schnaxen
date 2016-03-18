initialization
startBattle

	| pos |

	pos := self position + (500@20).
	self baxens do: [:each| | fightmorph |
		fightmorph := each fightMorph.
		fightmorph position: pos.
		self addMorph: fightmorph. 
		pos := pos + (0@(fightmorph extent y +20))].
	
	
	pos := self position + 20.
	self enemies do: [:each| | fightmorph |
		fightmorph := each fightMorph.
		fightmorph position: pos.
		self addMorph: fightmorph. 
		pos := pos + (0@(fightmorph extent y +20))].
	
	self currentActor: self baxens first.
	self showStats.
	
	self fighterTurn: self currentActor
