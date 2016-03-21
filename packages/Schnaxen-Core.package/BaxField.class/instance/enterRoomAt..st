room management
enterRoomAt: aPosition

	| room | 
	
	room := BaxRoom roomAt: aPosition.
	room obstacles add: self bax.
	"scale all obstacles including player and set their position"
	room obstacles do: [:each| 
		self reloadImageOf: each.
		self reposition: each]. 
	self 
		setBackground: room imageName;
		addAllMorphsFront: room obstacles reversed;
		activeRoom: room;
		roomPos: aPosition.
	

