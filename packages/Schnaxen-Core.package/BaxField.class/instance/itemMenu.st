menu
itemMenu
	
	| menu menuList num |
	
	menu := BaxMenu new.
	menu 
		visibleItems: 10;
		extent: self extent;
		position: self position;
		color: Color white.
	
	"create Menu for all items"
	menuList := OrderedCollection new.
	((baxens collect: [:bix| bix inventory]) concatenation) do: [ :each |
		 menuList add: (each baxName -> [])].
	menuList ifNotEmpty: [menu fromList: menuList].

	"add some images in this menu"
	num:= 1.
	((baxens collect: [:bix| bix inventory]) concatenation) do: [ :each | |morph|
		morph:=(menu levelMorphs at: menu level) at: num.
		morph addMorphBack: each.
		num := num +1].

	^menu 