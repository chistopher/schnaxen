as yet unclassified
showStats

	| stats |
	
	stats := ''.
	baxens do: [ :each | stats := stats,
		'Name: ', each baxName, Character cr,
		'Level: ', each level, Character cr,
		'HP: ', each currentHP, '/', each maxHP, Character cr, 
		'Damage ', each dmg , Character cr, Character cr].
	
	stats := stats, Character cr, Character cr, Character cr.
	
	enemies do: [ :each | stats := stats,
		'Enemy ', each baxName, Character cr,
		'HP: ', each currentHP, '/', each maxHP, Character cr, Character cr].
	
	self app showStuff: stats.