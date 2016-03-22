menu
characterMenu
	
	| menu column |
	
	menu := BaxWindow new.
	menu 
		extent: self extent;
		position: self position;
		color: Color yellow.
		
	column := AlignmentMorph newColumn
		bounds: menu bounds;
		borderColor: Color white; 
		borderWidth: 0.25 * BaxApp magnification;
		layoutInset: 0.
		
	menu addMorph: column.
	.
	baxens do: [ :each | | row temp |
	
		row := AlignmentMorph newRow 
			listCentering: #justified;
			wrapCentering: #center;
			color: Color gray;
			borderColor: Color white; 
			borderWidth: 0.25 * BaxApp magnification.
				
		"name"	
		row addMorphBack: (TextMorph new 
			contents: each baxName;
			wrapOnOff;
			extent: 10@5 * BaxApp magnification;
			color: Color white;
			beAllFont: (StrikeFont familyName: 'BitstreamVeraSans' size: 5 * BaxApp magnification)).
				
		"level, xp and hp"
		temp := AlignmentMorph new
			listDirection: #topToBottom; 
			vResizing: #shrinkWrap; hResizing: #shrinkWrap; wrapCentering: #center;
			color: Color transparent.
		temp addMorphBack: (TextMorph new 
			contents: (Text fromString: 'Level: ', each level);
			color: Color white;
			beAllFont: (StrikeFont familyName: 'BitstreamVeraSans' size: 3 * BaxApp magnification)).
		temp addMorphBack: (TextMorph new 
			contents: (Text fromString: 'XP: ', each xp, '/', each requiredXP ceiling);
			color: Color blue;
			beAllFont: (StrikeFont familyName: 'BitstreamVeraSans' size: 1 * BaxApp magnification)).	
		temp addMorphBack: (TextMorph new 
			contents: (Text fromString: 'HP: ', each currentHP, '/', each maxHP);
			color: Color red;
			beAllFont: (StrikeFont familyName: 'BitstreamVeraSans' size: 1 * BaxApp magnification)).
		row addMorphBack: temp.		

		"image"	
		row addMorphBack: each fightMorph. 	
			
		column addMorphBack: row.
		].	
		
	^menu 