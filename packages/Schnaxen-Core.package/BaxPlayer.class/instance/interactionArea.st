interaction
interactionArea
	
	^ (self bounds insetBy: (self extent x * 0.25)) translateBy: (self direction * (self extent * 0.75)) 