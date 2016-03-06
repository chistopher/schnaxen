as yet unclassified
showStuff: aString

	| morph |

	self infoBar removeAllMorphs.
	morph := TextMorph new.
	morph contents: aString.
	morph position: infoBar position.
	morph color: Color white.

	self infoBar addMorph: morph.