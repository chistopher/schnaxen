interaction
performAction

	self perform: self action.
	self actionFlag ifNotNil: [
		self actionFlag: self actionFlag.
		self actionFlag: nil]