turns
win
	
	| rewardXP | 
	 
	self keyBindings at: $e put: [self close].

	rewardXP := (self enemies collect: [ :each | each xp]) sum.
	self livingFighter do: [ :each | each gainXP: rewardXP].

	self enemies do: [ :each | "active defeat flags of all beaten enemies"
		each defeatFlag ifNotNil: [
			each signalFlag: each defeatFlag.
			each defeatFlag: nil]].

	self menuBar addMorph: (TextMorph new 
		contents: (Text fromString: 'Ya ain`t losing no battle, bruh! Yo fightaz got dem ', rewardXP, ' XP.', Character cr, 'Gotta keep it up');
		beAllFont: (StrikeFont familyName: 'BitstreamVeraSans' size: 3 * BaxApp magnification);
		topLeft: self menuBar topLeft)
	


	