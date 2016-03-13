as yet unclassified
raum1x0

	| raum | 

	raum := BaxRaum new color: Color white.
	raum add: 'haus2' sized: (30@30) at: (30@30).
	raum add: 'stein' sized: 0@0 at: 45@59 withBlock: [:app| 
		app field changeRoomTo: 378@378.
		app field bax position: 200@200 + app position].

	raum addNPC: 'bax' at: 70@70. 
	raum addNPC: 'punk' at: 75@75. 
	raum addNPC: 'punk' at: 80@80 withBlock: [:app | app showStuff: 'this is a common rick', Character cr, 'in his natural habitat']. 
	raum addNPC: 'punk' at: 0@0 withBlock: [:app | app showStuff: 'this is a common rick', Character cr, 'in his natural habitat']. 
	raum addNPC: 'punk' at: 20@2 withBlock: [:app | app showStuff: 'this is a common rick', Character cr, 'in his natural habitat']. 

	raum add: 'mauer_vorn' sized: 5@5 at: 95@50.
	raum add: 'mauer_vorn' sized: 5@5 at: 90@50.
	raum add: 'mauer_seite' sized: 2.5@7.5 at: 97.5@52.5.

	raum add: 'stein' sized: (10@10) at: (5@80) withBlock: [:app| 
		app field changeRoomTo: 30@98.
		app field bax position: 500@500 + app position].

	raum add: 'stein' sized: (5@5) at: (15@80) withBlock: [:app| 
			app showStuff: 'You found the stone', Character cr, 'The baxens healed AF'.
			app healAllBaxens].

	^raum