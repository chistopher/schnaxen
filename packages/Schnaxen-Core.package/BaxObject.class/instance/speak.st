actions
speak

	(self speechPointer >= self speechArray size) 
		ifTrue: [
			self resetDialog.
			self actionFlag ifNotNil: [
				self owner saveGame activateFlag: self actionFlag.
				self actionFlag: nil]]
		ifFalse: [
			self speechPointer: self speechPointer +1.
			self speechBubble submorphs first 
				contents: (self speechArray at: self speechPointer);
				center: self speechBubble center.
			self speechBubble 
				center: self center;
				bottom: self top;
				visible: true].