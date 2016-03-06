battle
changeToWorld

	self field visible: true.
	self keyBindings: self worldKeyBindings.
	self removeMorph: self battle.
	self battle: nil.