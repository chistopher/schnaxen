fighting
changeToBattleVs: aCollection

	| battle | 
	
	battle := BaxBattle new. 
	battle
		bounds: self bounds; 
		baxens: self baxens;
		enemies: aCollection.
	
	self openSubWindow: battle.
	battle startBattle