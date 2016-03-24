skills
kick: anActor
	
	(Morph new imageForm offset: 0 @ 0) 
		slideFrom: self fightMorph center
		to: anActor fightMorph center
		nSteps: 10
		delay: 50.	
	anActor loseHP: self dmg * 3.	
		
	
	
	