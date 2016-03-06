initialization
showStats

	| stats |
	
	stats := ''.
	baxens do: [ :each | stats := stats,
		'Fighter ', (baxens indexOf: each), Character cr,
		'Level: ', each level, Character cr,
		'HP: ', each currentHP, '/', each maxHP, Character cr, 
		'Damage ', each dmg , Character cr, Character cr].
	
	enemies do: [ :each | stats := stats,
		'Enemy ', (enemies indexOf: each), Character cr,
		'HP: ', each currentHP, '/', each maxHP, Character cr, Character cr].
	
	self app showStuff: stats.