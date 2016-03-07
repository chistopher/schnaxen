turns
nextTurn

	self fighterActs
		ifTrue: [
			currentActor = baxens last 
				ifTrue: [self enemyTurn: enemies first]
				ifFalse: [self fighterTurn: (baxens after: currentActor)]]
		ifFalse: [
			currentActor = enemies last 
				ifTrue: [self fighterTurn: baxens first]
				ifFalse: [self enemyTurn: (enemies after: currentActor)]]
