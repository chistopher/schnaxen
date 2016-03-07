battle
changeToBattle

	self field visible: false.
	self battle: self createBattle.
	self addMorph: self battle.
	self battle position: self position.
	self keyBindings: self battleKeyBindings.

	"here it goes"
	self battle fighterTurn: battle currentActor