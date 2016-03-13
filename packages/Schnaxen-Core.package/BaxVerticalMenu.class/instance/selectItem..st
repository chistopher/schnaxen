as yet unclassified
selectItem: aMorph

	super selectItem: aMorph.
	
	aMorph top >= self bottom ifTrue: [
		self morphsOfCurrentLevel do: [:each|
			each position: each position x @ (each position y - (self itemExtent y + self gap y))]].
	
	aMorph bottom <= self top ifTrue: [
		self morphsOfCurrentLevel do: [:each|
			each position: each position x @ (each position y + (self itemExtent y + self gap y))]]
	
	