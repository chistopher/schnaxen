room management
leaveCurrentRoom

	self removeAllMorphsIn: self activeRoom obstacles, self activeRoom interactables, self activeRoom enemies
