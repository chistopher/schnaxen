rooms
room378x378

	"Mauer oben"
	(0 to: 15) do: [:index|
		self obstacles add: (BaxObject new fieldImageName: 'mauer_vorn'; sizeInField: 4@4; location: 4*index@0)].
	
	"Mauer links"
	(0 to: 7) do: [:index|
		self obstacles add: (BaxObject new fieldImageName: 'mauer_seite'; sizeInField: 2@6; location: 0@(4*index+2))].

	"Mauer rechts"
	(0 to: 7) do: [:index|
		self obstacles add: (BaxObject new fieldImageName: 'mauer_seite'; sizeInField: 2@6; location: 62@(4*index+2))].

	"Mauer unten"
	(0 to: 15) do: [:index|
		self obstacles add: (BaxObject new fieldImageName: 'mauer_vorn'; sizeInField: 4@4; location: 4*index@32)].
	
	self obstacles add: (BaxNPC new fieldImageName: 'cat'; sizeInField: 10@10; location: 30@16; 
		addInteraction: #changeRoom;
		actionArgument: {1@0 . 14@20})