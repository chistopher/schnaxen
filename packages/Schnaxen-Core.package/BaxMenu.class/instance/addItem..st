building
addItem: anAssociation
	
	| morph | 
	
	morph := Morph new
		listDirection: #leftToRight;
		color: Color gray;
		borderWidth: (self extent x min: self extent y) / 40; "need a gr8 computation here based on extent, visibleItems, maxLevel and vertical"
		borderColor: Color transparent;
		layoutPolicy: TableLayout new;
		wrapCentering: #center;
		listCentering: #center;
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

	