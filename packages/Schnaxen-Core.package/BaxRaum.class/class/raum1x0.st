as yet unclassified
raum1x0

	| raum | 

	raum := BaxRaum new color: Color white.
	raum addObstacle: 'haus2' withSize: (200@200) at: (200@200).
	raum addInteractableAt: 300@390 withBlock: [:app| 
		app field changeRoomTo: 378@378.
		app field bax position: 200@200 + app position].

	raum addNPC: 'rick' at: 50@50 withBlock: []. 
	raum addNPC: 'rick' at: 200@50 withBlock: []. 
	raum addNPC: 'rick' at: 300@100 withBlock: []. 
	raum addNPC: 'rick' at: 150@150 withBlock: []. 
	raum addNPC: 'rick' at: 550@300 withBlock: []. 

	raum addObstacle: 'stein' withSize: (50@50) at: (438@500) withBlock: [:app| app showStuff: 'fuck u wrong'].
	raum 
		addObstacle: 'stein' 
		withSize: (50@50) at: (500@10) 
		withBlock: [:app| 
			app showStuff: 'You found the stone', Character cr, 'The baxens healed AF'.
			app healAllBaxens].

	raum addObstacle: 'stein' withSize: (80@200) at: (100@450).
	^raum