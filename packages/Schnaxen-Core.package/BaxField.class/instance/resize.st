as yet unclassified
resize

	BaxRoom clearRoomCache. "coz rooms are just 4 one resolution"	
	self 
		bounds: BaxApp useableBounds;
		enterRoomAt: self roomPos.
	self infoBar position: self topRight. "debug shit"

	"resize all obstacles and the player"
		
