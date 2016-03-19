as yet unclassified
resize

	BaxRoom clearRoomCache. "coz rooms are just 4 one resolution"	
	self 
		bounds: BaxApp useableBounds;
		changeRoomTo: self roomPos.

	self bax image: (BaxResources image: self bax fieldImageName size: self bax sizeInField * BaxApp magnification);
		position: self bax location * BaxApp magnification + self position

	"resize all obstacles and the player"
		
