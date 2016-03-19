as yet unclassified
room1x0

	| raum | 

	raum := BaxRoom new.
	

	raum obstacles add: (BaxObject new fieldImageName: 'stein'; sizeInField: 2@2; location: 14@18; addInteraction: [:field| 
		field changeRoomTo: 378@378.
		field bax position: 30@30 * BaxApp magnification + field position]). "ugly fix to add an interaction @ the door"
	raum obstacles add: (BaxObject new fieldImageName: 'haus2'; sizeInField: 10@10; location: 10@10).
	

	raum obstacles add: (BaxEnemy new location: 40@20; 
		fieldImageName: 'cat'; 
		baxName: 'fightercat'; 
		fightImageName: 'cat1x0'; 
		fightImageSize: 20@20). 

	raum obstacles add: (BaxEnemy new location: 20@20; 
		fieldImageName: 'punk'; 
		baxName: 'fightercat'; 
		fightImageName: 'punk1x0'; 
		fightImageSize: 20@20). 
	"
	raum addEnemy: 'cat' at: 150@30. 
	raum addEnemy: 'cat' at: 140@30. 
	raum addEnemy: 'cat' at: 145@25. 
	raum addEnemy: 'cat' at: 70@30. 
	raum addEnemy: 'cat' at: 80@30. 
	raum addEnemy: 'cat' at: 85@25. 
	raum addEnemy: 'punk' at: 120@10. 
	raum addNPC: 'bax' at: 100@60 withBlock: [:field | field showStuff: 'this is a common rick', Character cr, 'in his natural habitat']. 

	raum add: 'mauer_vorn' sized: 5@5 at: 155@50.
	raum add: 'mauer_vorn' sized: 5@5 at: 150@50.
	raum add: 'mauer_seite' sized: 2.5@7.5 at: 157.5@52.5.

	raum add: 'stein' sized: (10@10) at: (5@70) withBlock: [:field | 
		field changeRoomTo: 30@98.
		field bax position: 500@500 + field position].

	raum add: 'stein' sized: (5@5) at: (15@70) withBlock: [:field| 
			field showStuff: 'You found the stone', Character cr, 'The baxens healed AF'.
			field healAllBaxens].
 	"
	^raum