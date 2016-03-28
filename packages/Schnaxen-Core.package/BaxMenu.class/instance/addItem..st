building
addItem: anAssociation
	
	| morph | 
	
	morph := Morph new
		listDirection: #leftToRight;
		color: Color gray;
		borderWidth: 1 * BaxApp magnification;
		layoutPolicy: TableLayout new;
		wrapCentering: #center;
		listCentering: #center;
		borderColor: Color transparent;
		hResizing: #spaceFill;
		vResizing: #spaceFill.

	morph 
		setProperty: #itemName toValue: anAssociation key;
		setProperty: #itemContent toValue: anAssociation value.

	morph 
		addMorph: (TextMorph new 
			contents: anAssociation key; 
			beAllFont: ( StrikeFont
 				familyName: 'BitstreamVeraSans'
        			size:  BaxApp magnification );
			center: morph center; 
			color: Color white).
		
	(self levelMorphs at: self level) add: morph. 

	