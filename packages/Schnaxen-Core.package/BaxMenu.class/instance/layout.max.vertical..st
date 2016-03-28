helper
layout: anOrderedCollection max: aNumber vertical: aBoolean

	anOrderedCollection do: [ :each | | index origin corner |		
		index := anOrderedCollection indexOf: each.	
		origin := 0@(index-1/aNumber).
		corner := 1@(index/aNumber).
		aBoolean ifFalse: [
			origin := origin transposed.
			corner := corner transposed].
		each layoutFrame: (LayoutFrame fractions: (origin corner: corner))]