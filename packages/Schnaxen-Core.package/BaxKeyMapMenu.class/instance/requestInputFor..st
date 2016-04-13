input
requestInputFor: anAssociation

	self requestedAssociation: anAssociation.
	self addMorph: (TextMorph new 
		autoFit: false;
		contents: 'enter new Key for ', anAssociation value;
		color: Color white;
		backgroundColor: Color black;
		beAllFont: (StrikeFont familyName: 'BitstreamVeraSans' size: 2 * BaxApp magnification);
		extent: self extent / 2;
		center: self center)