story
startRoomSpawnPortal

	| startRoom portal |

	startRoom := self roomAt: 50@50.
	portal := BaxObject new fieldImageName: 'portal'; sizeInField: 6@6; location: 29@2; 
		addInteraction: #changeRoom;
		actionArgument: {1@1 . 30@15}.

	self field 
		addMorph: portal;
		reloadImageOf: portal;
		reposition: portal.
	
	startRoom obstacles add: portal.

