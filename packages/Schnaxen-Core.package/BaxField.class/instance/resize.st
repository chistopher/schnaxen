as yet unclassified
resize

	BaxRoom clearRoomCache. "coz rooms are just 4 one resolution"	
	self 
		bounds: BaxApp useableBounds;
		activeRaum: (BaxRoom roomAt: self raumPos).
	self bax image: self bax defaultImage.
	self bax position: self position "just a fix"
		
