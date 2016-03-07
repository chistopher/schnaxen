battle
createBattle

	| battle | 
	
	battle := BaxBattle new. 
	battle 
		app: self;
		baxens: self baxens.
		
	battle enemies
		add: (BaxEnemy rick: 'rick1' level: 1); 
		add: (BaxEnemy rick: 'rick2' level: 1); 
		add: (BaxEnemy rick: 'rick3' level: 2).
		
	battle initActors.
	
	^battle