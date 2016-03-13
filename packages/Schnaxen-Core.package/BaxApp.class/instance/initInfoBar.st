initialization
initInfoBar

	| textMorph |
	
	self infoBar: Morph new.
	self addMorph: self infoBar.
	
	self infoBar position: self field topRight.
	self infoBar extent: (300@ self extent y).
	self infoBar color: Color black.
	
	textMorph := TextMorph new.
	textMorph position: infoBar position.
	textMorph color: Color white.
	
	self infoBar addMorph: textMorph