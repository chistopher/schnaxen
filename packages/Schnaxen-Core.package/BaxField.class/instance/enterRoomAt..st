room management
enterRoomAt: aPosition

	self saveGame roomPos: aPosition.
	self 
		setBackground: self activeRoom imageName;
		addAllMorphsFront: self activeRoom obstacles reversed.
	"scale all obstacles and set their position"
	self activeRoom obstacles do: [:each| 
		self reloadImageOf: each.
		self reposition: each]. 

	self activeRoom enterFlag ifNotNil: [ "activate enter flag"
		self saveGame activateFlag: self activeRoom enterFlag.
		self activeRoom enterFlag: nil.].
		
	
		
	
	

