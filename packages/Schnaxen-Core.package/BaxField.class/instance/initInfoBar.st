debugging
initInfoBar

	| textMorph |
	
	self infoBar ifNotNil: [self removeMorph: self infoBar].
	self infoBar: Morph new.
	self addMorph: self infoBar.
	
	self infoBar position: self topRight.
	self infoBar extent: (300@ self extent y).
	self infoBar color: Color yellow.
	
	textMorph := TextMorph new.
	textMorph position: self infoBar position.
	
	self infoBar addMorph: textMorph