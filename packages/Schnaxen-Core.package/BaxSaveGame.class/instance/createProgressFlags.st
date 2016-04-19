story-meta
createProgressFlags
"specifies the flags needed to cause a specific action."

	self progressFlags: (Dictionary newFrom: {
		#foundHidden378			->	{#entered378x378}.
		#reveiveLevelFromPunk	-> 	{#spokeToPunk}.

		#startDungeonSpawnPortal	-> 	{#beatTheGiantBax}.
		#startDungeonOpenWall 	-> 	{#startRoomTorch1lit. #startRoomTorch2lit. #startRoomTorch3lit. #startRoomTorch4lit.}.
		
	})