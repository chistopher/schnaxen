as yet unclassified
resize

	self bounds: BaxApp useableBounds.
	self setBackground: self activeRoom imageName.
	
	"resize all obstacles"
	self activeRoom obstacles do: [:each| 
		self reloadImageOf: each.
		self reposition: each].
	
	self  "resize player"
		reloadImageOf: self bax;
		reposition: self bax.

	"they will be created next time they are needed"
	self saveGame team do: [:each| each fightMorph: nil]
