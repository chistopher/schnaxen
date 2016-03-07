menu
openMenu
	
	| menuItems skills enemies |
	
	skills := OrderedCollection new.
	currentActor skills do: [ :skill |
		enemies := OrderedCollection new.
		self livingEnemies do: [ :enemy |
			enemies add: (enemy baxName -> [self doSkill: skill on: enemy. self endTurn])].
		skills add: (skill -> enemies).
		].

	menuItems := OrderedCollection new.
	menuItems 
		add: ('skills' -> skills);
		add: ('skip Turn' -> [self endTurn]).
	self menuBar 
		fromList: menuItems;
		addTitle: currentActor baxName.


	
	
	
	
	

	