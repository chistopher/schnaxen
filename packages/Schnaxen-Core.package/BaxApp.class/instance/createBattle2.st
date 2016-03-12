battle
createBattle2

	| battle | 
	
	battle := BaxBattle new. 
	battle 
		app: self;
		baxens: self baxens.

	
	^battle