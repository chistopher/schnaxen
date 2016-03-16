turns
win
	
	| rewardXP | 
	 
	rewardXP := (self enemies collect: [ :each | each xp]) sum.
	self owner showStuff: 'ya fightaz won and got dem ', rewardXP, 'xp, bruh', Character cr.
	
	self livingFighter do: [ :each | each gainXP: rewardXP].
	
	self close.
	


	
	