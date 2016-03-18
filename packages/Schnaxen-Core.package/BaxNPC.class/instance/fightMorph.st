fighting
fightMorph

	^ fightMorph ifNil: [
		fightMorph := ImageMorph new 		
				image: (BaxResources image: self fightImageName size: self fightImageSize * BaxApp magnification)]