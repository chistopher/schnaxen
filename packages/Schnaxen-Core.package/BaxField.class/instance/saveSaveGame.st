save/load
saveSaveGame

	| rr |
	self saveGame team do: [:bix| bix location: self bax location].
	rr := ReferenceStream fileNamed: 'save.obj'.
	rr nextPut: self saveGame.
	rr close