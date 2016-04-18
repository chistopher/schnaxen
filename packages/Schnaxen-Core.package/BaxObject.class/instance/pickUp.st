actions
pickUp

	self owner bax inventory add: self. "you make yourself be taken?"
	self owner activeRoom obstacles remove: self. 
	self owner removeMorph: self