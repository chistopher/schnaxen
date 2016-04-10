rooms
room1x0
	
	self obstacles add: (BaxObject new fieldImageName: 'stein'; sizeInField: 2@2; location: 14@18; 
		addInteraction: #changeRoom;
		actionArgument: {378@378 . 29@30}). "ugly fix to add an interaction @ the door"
	self obstacles add: (BaxObject new fieldImageName: 'haus2'; sizeInField: 10@10; location: 10@10).
	

	self obstacles add: (BaxEnemy new location: 40@20; 
		fieldImageName: 'cat'; 
		baxName: 'fightercat'; 
		fightImageName: 'cat1x0'; 
		fightImageSize: 20@20;
		addInteraction: #fight). 

	self obstacles add: (BaxEnemy new location: 20@20; 
		fieldImageName: 'punk'; 
		baxName: 'fightercat'; 
		fightImageName: 'punk1x0'; 
		fightImageSize: 20@20;
		addInteraction: #fight). 
