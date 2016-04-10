room management
enterRoomAt: aPosition

	self saveGame roomPos: aPosition.
	"scale all obstacles and set their position"
	self activeRoom obstacles do: [:each| 
		self reloadImageOf: each.
		self reposition: each]. 
	self 
		setBackground: self activeRoom imageName;
		addAllMorphsFront: self activeRoom obstacles reversed.
		
	
		
	
	

