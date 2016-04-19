story
startDungeonOpenWall

	| room walls |

	room := self roomAt: 1000@1001.
	walls := room obstacles select: [ :item |
		item baxName = 'gateWall'].

	walls do: [ :item | "remove dem wallz"
		self field removeMorph: item.
		room obstacles remove: item.].
	

