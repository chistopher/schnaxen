as yet unclassified
room30x98

	| raum | 

	raum := BaxRoom new color: Color white.
	"Mauer oben"
	(0 to: 13) do: [:index|
		raum add: 'mauer_vorn' sized: (50@50) at: (50*index@0)].
	
	"Mauer links"
	(0 to: 12) do: [:index|
		raum add: 'mauer_seite' sized: (25@75) at: (0@(50*index+25))].
	
	"Mauer rechts"
	(0 to: 12) do: [:index|
		raum add: 'mauer_seite' sized: (25@75) at: (675@(50*index+25))].
	
	"Mauer unten"
	(0 to: 13) do: [:index|
		raum add: 'mauer_vorn' sized: (50@50) at: (50*index@650)].

	raum add: 'rick' sized: 100@100 at: 50@50 withBlock: [:app| app changeToBattleVs: {BaxEnemy rick: 'MegaRick'}].
	raum add: 'rick' sized: 100@100 at: 500@100 withBlock: [:app| app changeToBattleVs: {BaxEnemy rick: 'MegaRick'}].
	

	raum add: 'stein' sized: (50@50) at: (325@325) withBlock: [:app| 
		app field changeRoomTo: 1@0.
		app field bax position: 350@500 + app position].

	^raum
