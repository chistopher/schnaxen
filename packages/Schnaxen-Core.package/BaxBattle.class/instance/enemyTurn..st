turns
enemyTurn: anEnemy
	
	| target | 
	
	self currentActor: anEnemy.
	anEnemy isDead ifTrue: [^self nextTurn].

	target := self livingFighter atRandom.
	
	anEnemy attack: target.
	
	self app showStuff: anEnemy baxName, ' attacks ', target baxName, Character cr.
	self app showMoreStuff: target baxName, ' lost ', anEnemy dmg, 'HP'
	


	
	