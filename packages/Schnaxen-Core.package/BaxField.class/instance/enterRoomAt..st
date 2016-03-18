room management
enterRoomAt: aPosition

	| room | 
	
	room := BaxRoom roomAt: aPosition.
	room obstacles, room interactables, room enemies do: [:each| "scale all obstacles and set their position"
		each image: (BaxResources image: each fieldImageName size: each sizeInField * BaxApp magnification);
		position: each location * BaxApp magnification + self position].
	self setBackground: room imageName;
		addAllMorphsFront: (room obstacles, room interactables, room enemies) reversed;
		activeRoom: room;
		roomPos: aPosition.

