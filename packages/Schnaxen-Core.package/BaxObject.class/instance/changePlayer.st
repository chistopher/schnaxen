actions
changePlayer

	self owner changeActiveBaxTo: (self owner saveGame team after: self owner bax ifAbsent: [self owner saveGame team first])