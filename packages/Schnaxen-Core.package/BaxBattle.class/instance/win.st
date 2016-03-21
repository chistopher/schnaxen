turns
win
	
	| rewardXP | 
	 
	rewardXP := (self enemies collect: [ :each | each xp]) sum.
	
	self livingFighter do: [ :each | each gainXP: rewardXP].
	
	self close.
	


	
	