menu
itemViewFor: aBaxItem
	
	| window image|
	
	window := BaxWindow new
		bounds: self bounds;
		color: Color gray.

 	image:= ImageMorph new
		image: (BaxResources image: aBaxItem fieldImageName size: (window extent * 0.5));
		center: window center.
	window addMorph: image.
	
	window addMorph: (TextMorph new 
			contents: (Text fromString: aBaxItem baxName);
			color: Color white;
			beAllFont: (StrikeFont familyName: 'BitstreamVeraSans' size: 3 * BaxApp magnification);
			bottomLeft: image topLeft).
	
	^ window