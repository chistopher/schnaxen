as yet unclassified
raum1x0

	| raum | 

	raum := BaxRaum new color: Color white.
	raum add: 'haus2' sized: (200@200) at: (200@200).
	raum add: 'stein' sized: 0@0 at: 300@390 withBlock: [:app| 
		app field changeRoomTo: 378@378.
		app field bax position: 200@200 + app position].

	raum addNPC: 'rick' at: 50@50. 
	raum addNPC: 'rick' at: 200@50. 
	raum addNPC: 'rick' at: 300@100 withBlock: [:app | app showStuff: 'this is a common rick', Character cr, 'in his natural habitat']. 
	raum addNPC: 'rick' at: 150@150 withBlock: [:app | app showStuff: 'this is a common rick', Character cr, 'in his natural habitat']. 
	raum addNPC: 'rick' at: 550@300 withBlock: [:app | app showStuff: 'this is a common rick', Character cr, 'in his natural habitat']. 

	raum add: 'mauer_vorn' sized: 50@50 at: 650@100.
	raum add: 'mauer_vorn' sized: 50@50 at: 600@100.
	raum add: 'mauer_seite' sized: 25@75 at: 675@125.

	raum add: 'stein' sized: (50@50) at: (438@500) withBlock: [:app| 
		app field changeRoomTo: 30@98.
		app field bax position: 500@500 + app position].

	raum add: 'stein' sized: (50@50) at: (500@10) withBlock: [:app| 
			app showStuff: 'You found the stone', Character cr, 'The baxens healed AF'.
			app healAllBaxens].

	raum add: 'stein' sized: (80@200) at: (100@450).
	^raum