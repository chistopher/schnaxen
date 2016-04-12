turns
win
	
	| rewardXP | 
	 
	rewardXP := (self enemies collect: [ :each | each xp]) sum.
	self livingFighter do: [ :each | each gainXP: rewardXP].

	self enemies do: [ :each | "active defeat flags of all beaten enemies"
		each defeatFlag ifNotNil: [
			each signalFlag: each defeatFlag.
			each defeatFlag: nil]].

	self close.
	


	