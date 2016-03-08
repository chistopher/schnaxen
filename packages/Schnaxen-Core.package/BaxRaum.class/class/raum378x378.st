as yet unclassified
raum378x378

	| raum | 

	raum := BaxRaum new color: Color white.
	"Mauer oben"
	(0 to: 13) do: [:index|
		raum addObstacle: 'mauer_vorn' withSize: (50@50) at: (50*index@0)].
	
	"Mauer links"
	(0 to: 12) do: [:index|
		raum addObstacle: 'mauer_seite' withSize: (25@75) at: (0@(50*index+25))].
	
	"Mauer rechts"
	(0 to: 12) do: [:index|
		raum addObstacle: 'mauer_seite' withSize: (25@75) at: (675@(50*index+25))].
	
	"Mauer unten"
	(0 to: 13) do: [:index|
		raum addObstacle: 'mauer_vorn' withSize: (50@50) at: (50*index@650)].
	

	raum addObstacle: 'stein' withSize: (50@50) at: (325@325) withBlock: [:app| 
		app field changeRoomTo: 1@0.
		app field bax position: 350@500 + app position]..

	^raum
