menu
characterMenu
	
	| menu num menuList |
	
	menu := BaxMenu new.
	menu 
		extent: self extent;
		position: self position;
		color: Color yellow.
		
	menuList := OrderedCollection new.
	baxens do: [ :each |
		 menuList add: (each baxName -> [])].
	menu fromList: menuList.	
		
		
	.num := 1.
	baxens do: [ :each | | temp menuItem |
	
		menuItem := (menu levelMorphs at: 1) at: num.
		menuItem listCentering: #justified.
		menuItem submorphs first
			wrapOnOff;
			extent: 15 @ 5 * BaxApp magnification.
				
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
			color: Color green;
			beAllFont: (StrikeFont familyName: 'BitstreamVeraSans' size: 1 * BaxApp magnification)).
		menuItem addMorphBack: temp.		

		"image"	
		menuItem addMorphBack: each fightMorph. 	
	
	
		num := num +1.
		].	
		
	^menu 