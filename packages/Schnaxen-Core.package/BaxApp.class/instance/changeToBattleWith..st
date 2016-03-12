battle
changeToBattleWith: aBaxEnemy

	self field visible: false.
	self battle: self createBattle2.
	self battle enemies: {aBaxEnemy}.
	self battle initActors.
	self addMorph: self battle.
	self battle position: self position.
	self keyBindings: self battleKeyBindings.

	"here it goes"
	self battle fighterTurn: battle currentActor