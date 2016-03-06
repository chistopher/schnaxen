battle
createBattle

	| battle | 
	
	battle := BaxBattle new. 
	battle 
		color: Color white;
		app: self;
		baxens: self baxens.
		
	battle enemies
		add: BaxEnemy rick; 
		add: BaxEnemy rick; 
		add: BaxEnemy rick.
		
	battle initActors.
	
	^battle