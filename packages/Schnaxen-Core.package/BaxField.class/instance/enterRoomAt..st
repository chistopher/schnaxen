room management
enterRoomAt: aPosition

	| room | 
	
	room := self saveGame roomAt: aPosition.
	"scale all obstacles including player and set their position"
	room obstacles do: [:each| 
		self reloadImageOf: each.
		self reposition: each]. 
	self 
		setBackground: room imageName;
		addAllMorphsFront: room obstacles reversed;
		activeRoom: room;
		roomPos: aPosition.
		
	
	

