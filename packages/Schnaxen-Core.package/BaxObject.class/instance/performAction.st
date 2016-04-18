interaction
performAction

	self perform: self action.
	self actionFlag ifNotNil: [
		self signalFlag: self actionFlag.
		self actionFlag: nil]