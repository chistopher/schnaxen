movement
changeRoomTo: aPos with: aVector

	(BaxField respondsTo: (Symbol  newFrom: 'raum', aPos x, 'x', aPos y))
		ifTrue: [self field activeRaum: (BaxField raumAt: aPos).
				self field raumPos: aPos.
				self position: ((self field extent - self extent) * aVector negated + self position)] 