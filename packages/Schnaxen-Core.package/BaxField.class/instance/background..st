accessing
background: anImage

	| imageMorph | 
	
	imageMorph := ImageMorph new. 
	imageMorph image: (anImage scaledToSize: self extent).
	self addMorphBack: imageMorph.
	imageMorph position: self position.
	background := imageMorph.