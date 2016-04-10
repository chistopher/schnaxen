actions
pickUp

	self owner bax takeItem: self.
	self owner activeRoom obstacles remove: self. 
	self owner removeMorph: self