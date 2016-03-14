as yet unclassified
unbindRoom

	self field removeMorph: self field activeRaum.
	(self field activeRaum obstacles includes: self field bax) ifTrue:[
		self field activeRaum obstacles remove: self field bax]