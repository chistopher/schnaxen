as yet unclassified
close

	super close.
	self baxens do: [:each | self removeMorph: each fightMorph].

	self enemies do: [ :each | "active defeat flags of all beaten enemies"
		each defeatFlag ifNotNil: [
			each signalFlag: each defeatFlag.
			each defeatFlag: nil]].

	self enemies do: [:each | "remove enemies from field"
		self removeMorph: each fightMorph.
		(each isDead and: [each owner isNil not and: [each deleteAfterDefeat]])
			ifTrue: [
				each owner activeRoom obstacles remove: each.
				each owner removeMorph: each]].

	
	