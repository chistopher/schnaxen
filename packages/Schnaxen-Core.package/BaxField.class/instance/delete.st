as yet unclassified
delete 
	
	"field doesnt get garbage collected if my activeRaum stores me as owner
"
	super delete.
	self removeMorph: self activeRaum 