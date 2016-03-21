room management
leaveCurrentRoom

	self activeRoom obstacles remove: self bax. "player leaves room"
	self removeAllMorphsIn: self activeRoom obstacles "remove everything that came from old room"
