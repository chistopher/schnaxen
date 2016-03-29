rooms
room1x0
	
	self obstacles add: (BaxObject new fieldImageName: 'stein'; sizeInField: 2@2; location: 14@18; addInteraction: [:this| | field |
		field := this owner.
		field changeRoomTo: 378@378.
		field bax location: 29@30.
		field reposition: field bax.]). "ugly fix to add an interaction @ the door"
	self obstacles add: (BaxObject new fieldImageName: 'haus2'; sizeInField: 10@10; location: 10@10).
	

	self obstacles add: (BaxEnemy new location: 40@20; 
		fieldImageName: 'cat'; 
		baxName: 'fightercat'; 
		fightImageName: 'cat1x0'; 
		fightImageSize: 20@20;
		addInteraction: [:this| this owner changeToBattleVs: {this}]). 

	self obstacles add: (BaxEnemy new location: 20@20; 
		fieldImageName: 'punk'; 
		baxName: 'fightercat'; 
		fightImageName: 'punk1x0'; 
		fightImageSize: 20@20;
		addInteraction: [:this| this owner changeToBattleVs: {this}]). 
