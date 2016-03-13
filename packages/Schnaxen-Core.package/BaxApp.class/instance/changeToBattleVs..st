battle
changeToBattleVs: aCollection

	self field visible: false.
	self createBattle.
	self battle enemies: aCollection.
	self battle initActors.

	self keyBindings: self battleKeyBindings.

	"here it goes"
	self battle startBattle