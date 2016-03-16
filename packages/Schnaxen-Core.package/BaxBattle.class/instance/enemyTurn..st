turns
enemyTurn: anEnemy
	
	| target | 
	
	self currentActor: anEnemy.
	anEnemy isDead ifTrue: [^self nextTurn].

	target := self livingFighter atRandom.
	
	anEnemy attack: target.
	
	self owner showStuff: anEnemy baxName, ' attacks ', target baxName, Character cr.
	self owner showMoreStuff: target baxName, ' lost ', anEnemy dmg, 'HP'
	


	
	