as yet unclassified
room2x1

	| raum | 

	raum := BaxRoom new.
	"Mauer oben"
	(0 to: 15) do: [:index|
		raum obstacles add: (BaxObject new fieldImageName: 'mauer_vorn'; sizeInField: 4@4; location: 4*index@0)].

	"Mauer rechts"
	(0 to: 7) do: [:index|
		raum obstacles add: (BaxObject new fieldImageName: 'mauer_seite'; sizeInField: 2@6; location: 62@(4*index+2))].

	"Mauer unten"
	(0 to: 15) do: [:index|
		raum obstacles add: (BaxObject new fieldImageName: 'mauer_vorn'; sizeInField: 4@4; location: 4*index@32)].

	^raum
