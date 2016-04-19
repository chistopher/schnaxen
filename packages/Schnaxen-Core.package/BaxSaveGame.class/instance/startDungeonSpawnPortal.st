story
startDungeonSpawnPortal

	| room portal |

	room := self roomAt: 1000@1000.
	portal := BaxObject new fieldImageName: 'portal'; sizeInField: 6@6; location: 29@2; 
		addInteraction: #changeRoom;
		actionArgument: {1@1 . 30@15}.

	self field 
		addMorph: portal;
		reloadImageOf: portal;
		reposition: portal.
	
	room obstacles add: portal.

