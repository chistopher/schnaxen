as yet unclassified
resize

	BaxRoom clearRoomCache. "coz rooms are just 4 one resolution"	
	self 
		bounds: BaxApp useableBounds;
		changeRoomTo: self roomPos.
		
	"they will be created next time they are needed"
	self baxens do: [:each| each fightMorph: nil]
