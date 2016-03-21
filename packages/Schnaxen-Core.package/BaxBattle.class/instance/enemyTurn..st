turns
enemyTurn: anEnemy
	
	| target | 
	
	self currentActor: anEnemy.
	anEnemy isDead ifTrue: [^self nextTurn].

	target := self livingFighter atRandom.
	
	anEnemy attack: target.
	


	
	