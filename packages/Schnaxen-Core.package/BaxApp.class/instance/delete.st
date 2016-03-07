as yet unclassified
delete 
	
	"field doesnt get garbage collected if activeRaum stores it as owner"
	super delete.
	self field removeMorph: self field activeRaum 