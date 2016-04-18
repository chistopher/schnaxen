rooms
room50x50
	
	self imageName: 'startroom'.

	
	1 to: 3 do: [ :i |
		self obstacles add: (BaxEnemy new location: (i*5+20)@15; 
			fieldImageName: 'cat'; 
			baxName: 'fightercat'; 
			fightImageName: 'cat1x0'; 
			fightImageSize: 20@20;
			xp: 2; currentHP: 10; maxHP: 10; dmg: 3;
			addInteraction: #fight)]. 

	1 to: 2 do: [ :i |
		self obstacles add: (BaxEnemy new location: (i*5+22)@25; 
			fieldImageName: 'cat'; 
			baxName: 'fightercat'; 
			fightImageName: 'cat1x0'; 
			fightImageSize: 20@20;
			xp: 2; currentHP: 10; maxHP: 10; dmg: 3;
			addInteraction: #fight)]. 

	self obstacles add: (BaxEnemy new location: 31@17; 
		fieldImageName: 'cat'; 
		baxName: 'fightercat'; 
		fightImageName: 'cat1x0'; 
		fightImageSize: 20@20;
		xp: 2; currentHP: 10; maxHP: 10; dmg: 3;
		addInteraction: #fight).

	1 to: 2 do: [ :i | 
		self obstacles add: (BaxObject new fieldImageName: 'torch_out'; sizeInField: 1@4; location: 10@(10*i+5); 
			addInteraction: #changeImage; actionArgument: 'torch_on'; actionFlag: (#startRoomTorch, i, #lit) asSymbol)].

	3 to: 4 do: [ :i | 
		self obstacles add: (BaxObject new fieldImageName: 'torch_out'; sizeInField: 1@4; location: 53@(10*i-15); 
			addInteraction: #changeImage; actionArgument: 'torch_on'; actionFlag: (#startRoomTorch, i, #lit) asSymbol)]

