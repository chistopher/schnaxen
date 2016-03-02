as yet unclassified
add: aName withSize: anExtent at: aPosition on: aMorph
	
	| ding |
	
	ding := ImageMorph new.
	ding image: ((BaxPlayer imageFor: (aName , '.png')) scaledToSize: anExtent).
	aMorph addMorph: ding.
	ding position: (aMorph position + aPosition).



	