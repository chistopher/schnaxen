initialization
startBattle

	| pos |

	pos := 54@2 * BaxApp magnification + self position.
	self baxens do: [:each| | fightmorph |
		fightmorph := each fightMorph.
		fightmorph position: pos.
		self addMorph: fightmorph. 
		pos := pos + (0@(fightmorph extent y +20))].
	
	
	pos := 2@2 * BaxApp magnification + self position.
	self enemies do: [:each| | fightmorph |
		fightmorph := each fightMorph.
		fightmorph position: pos.
		self addMorph: fightmorph. 
		pos := pos + (0@(fightmorph extent y +20))].
	
	self currentActor: self baxens first.
	self showStats.
	
	self fighterTurn: self currentActor
