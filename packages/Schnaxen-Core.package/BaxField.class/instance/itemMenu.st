menu
itemMenu
	
	| menu menuList |
	
	menu := BaxMenu new.
	menu 
		visibleItems: 10;
		extent: self extent;
		position: self position;
		color: Color white.
	
	"create Menu for all items"
	menuList := OrderedCollection new.
	self saveGame team do: [ :each | |items|
		each inventory 
			ifEmpty: [items := {(each baxName, ' has no items' -> [])} asOrderedCollection]
			ifNotEmpty: [items := OrderedCollection new].
		each inventory do: [:item| 
			"items add: (item baxName -> [self openSubWindow: (self itemViewFor: item)])"
			items add: (item baxName -> [menu openSubWindow: (self itemActionSelectMenu: item)])].
		menuList add: (each baxName -> items)].

	^menu fromList: menuList.
 