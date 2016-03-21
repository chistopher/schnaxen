interaction
addSpeech: anOrderedCollection

	self speechArray: (anOrderedCollection collect: [:string| Text fromString: string]).
	self speechPointer: 0.
	self speechBubble: (ImageMorph new
		image: (BaxResources image: 'speechbubble' size: 6@6 * BaxApp magnification)).	
	self speechBubble 
		addMorph: TextMorph new;
		visible: false.
	self addMorph: self speechBubble.
	
	