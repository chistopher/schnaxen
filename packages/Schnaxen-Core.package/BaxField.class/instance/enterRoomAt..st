room management
enterRoomAt: aPosition

	| room | 
	
	room := BaxRoom roomAt: aPosition.
	room obstacles do: [:each| "scale all obstacles and set their position"
		each image: (BaxResources image: each fieldImageName size: each sizeInField * BaxApp magnification);
		position: each location * BaxApp magnification + self position].
	self setBackground: room imageName;
		addAllMorphsFront: room obstacles reversed;
		activeRoom: room;
		roomPos: aPosition.

