windows
close

	self owner subWindows removeLast. "you may not be the last one everytime. gonna look into it"
	self owner removeMorph: self.