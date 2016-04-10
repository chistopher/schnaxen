interaction
interact

	"asArray to copy the collection coz the executing block might change obstacles of active room"
	self owner activeRoom obstacles asArray do: [:each| 
		(self interactionArea intersects: each bounds) ifTrue: [
			each interactable ifTrue: [
				each doStuff "just do it urself"]]]