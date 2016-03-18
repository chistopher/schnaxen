as yet unclassified
close

	super close.
	self baxens do: [:each | self removeMorph: each fightMorph].
	self enemies do: [:each | 
		self removeMorph: each fightMorph.
		each isDead ifTrue: [
			each owner ifNotNil: [
				each owner activeRoom enemies remove: each.
				each owner removeMorph: each]]].
	