turns
enemyTurn: anEnemy
	
	| target | 
	
	self currentActor: anEnemy.
	anEnemy isDead ifTrue: [^self endTurn].

	target := self livingFighter atRandom.
	
	anEnemy attack: target.
	
	self endTurn
	


	
	