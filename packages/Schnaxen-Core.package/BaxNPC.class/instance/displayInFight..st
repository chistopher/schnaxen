fighting
displayInFight: aMorph

	aMorph 
		center: self fightMorph center;
		bottom: self fightMorph top.
	
	self fightMorph addMorph: aMorph.
	[ | duration | 
		duration := 1000. 
		[duration > 0] whileTrue: [ | stepTime |
			stepTime := 100.
			(Delay forMilliseconds: stepTime) wait. 
			duration := duration - stepTime.
			aMorph position: aMorph position -(0@5)].
		aMorph delete] fork.