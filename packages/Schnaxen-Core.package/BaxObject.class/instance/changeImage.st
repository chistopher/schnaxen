actions
changeImage 

	self fieldImageName: self actionArgument.
	self owner reloadImageOf: self.