defaults
defaultKeyMap
	
	"key names from Game Boy"
	^Dictionary newFrom: {
		$w		-> #up.
		$s		-> #down.
		$a		-> #left.
		$d		-> #right.
		$e		-> #a.
		$q		-> #b.
		Character space	-> #start.
		Character escape	-> #select.
	}