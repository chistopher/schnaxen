as yet unclassified
room378x378

	| raum | 

	raum := BaxRoom new color: Color white.
	"Mauer oben"
	(0 to: 19) do: [:index|
		raum add: 'mauer_vorn' sized: (8@8) at: (8*index@0)].
	
	"Mauer links"
	(0 to: 7) do: [:index|
		raum add: 'mauer_seite' sized: (4@12) at: (0@(8*index+4))].
	
	raum add: 'stein' sized: (10@10) at: (80@40) withBlock: [:field| 
		field changeRoomTo: 1@0.
		field bax position: 0@0 + field position].

	^raum
