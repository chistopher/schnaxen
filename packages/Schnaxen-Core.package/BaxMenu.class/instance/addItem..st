as yet unclassified
addItem: anAssociation
	
	| morph | 
	
	morph := ( self morphNumber: ( self levelMorphs at: self level ) size + 1 inListsized: self visibleItems vertical: self vertical not )
		listDirection: #leftToRight;
		color: Color gray;
		borderWidth: 1 * BaxApp magnification;
		layoutPolicy: TableLayout new;
		wrapCentering: #center;
		listCentering: #center;
		borderColor: Color transparent.
	morph 
		addMorph: (TextMorph new 
			contents: anAssociation key; 
			beAllFont: (StrikeFont
 				familyName: 'BitstreamVeraSans'
        			size:  self itemExtent y asInteger);
			center: morph center; 
			color: Color white).
		
	(self levelMorphs at: self level) add: morph. 

	