story
reveiveLevelFromPunk

	self team do: [:each| each levelUp].
	
	((self roomAt: self roomPos) obstacles select: [:each| each baxName = 'levelPunk']) do: [:levelPunk|
		levelPunk changeDialog: {'ain`t got no more of', Character cr, 'dem lvlz'} ]