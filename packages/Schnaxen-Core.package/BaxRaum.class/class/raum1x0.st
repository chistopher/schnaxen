as yet unclassified
raum1x0

	| raum | 

	raum := BaxRaum new color: Color white.
	raum addObstacle: 'haus' withSize: (400@300) at: (200@200).
	raum addInteractableAt: 400@490 withBlock: [:app| 
		app field changeRoomTo: 378@378.
		app field bax position: 200@200 + app position].

	raum addObstacle: 'stein' withSize: (50@50) at: (438@500) withBlock: [:app| app showStuff: 'fuck u wrong'].
	raum 
		addObstacle: 'stein' 
		withSize: (50@50) at: (500@10) 
		withBlock: [:app| 
			app showStuff: 'You found the stone', Character cr, 'The baxens healed AF'.
			app healAllBaxens].

	raum addObstacle: 'stein' withSize: (80@200) at: (100@450).
	^raum