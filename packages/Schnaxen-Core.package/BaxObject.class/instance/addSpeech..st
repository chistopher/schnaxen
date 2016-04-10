interaction
addSpeech: anOrderedCollection

	self changeDialog: anOrderedCollection.
	self speechBubble: (ImageMorph new
		image: (BaxResources image: 'speechbubble' size: 6@6 * BaxApp magnification)).	
	self speechBubble 
		addMorph: (TextMorph new contents: '');
		visible: false.
	self addMorph: self speechBubble.
	
	