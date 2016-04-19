rooms
room1000x1000
	
	self imageName: 'startroom'.

	0 to: 6 do: [:index|
		self obstacles add: (BaxObject new fieldImageName: 'mauer_vorn'; sizeInField: 4@4; location: 4*index@32)].
	9 to: 15 do: [:index|
		self obstacles add: (BaxObject new fieldImageName: 'mauer_vorn'; sizeInField: 4@4; location: 4*index@32)].

	self obstacles add: (BaxEnemy new location: 31@10; 
		fieldImageName: 'bix'; baxName: 'GiantBax'; fightImageName: 'bix1x0'; 
		sizeInField: 5@5; fightImageSize: 10@10;
		xp: 20; currentHP: 15; maxHP: 15; dmg: 5;
		addInteraction: #fight; defeatFlag: #beatTheGiantBax).


