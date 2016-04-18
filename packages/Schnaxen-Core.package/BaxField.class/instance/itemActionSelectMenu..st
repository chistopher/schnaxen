menu
itemActionSelectMenu: aBaxItem
	
	| menu giveList owner |
	
	menu := BaxMenu new.
	menu 
		visibleItems: 4;
		extent: self extent / 4;
		topRight: self topRight;
		color: Color yellow.

	"yeah thats pretty much it :)"
	owner := self saveGame team detect: [:each| each inventory includes: aBaxItem].
	
	giveList := OrderedCollection new.
	self saveGame team do: [ :each | 
		giveList add: (each baxName -> [
			owner inventory remove: aBaxItem.
			each inventory add: aBaxItem.
			menu owner close.
			self openSubWindow: self itemMenu])].
	
	menu fromList: {
		'show'	->	[menu owner openSubWindow: (self itemViewFor: aBaxItem). menu close].
		'give'	->	giveList.
		'drop' 	-> 	[owner inventory remove: aBaxItem.
					aBaxItem location: (self bax location + (0@self bax sizeInField y)).
					self activeRoom obstacles add: aBaxItem. 
					self addMorph: aBaxItem inFrontOf: self bax.
					self reposition: aBaxItem.
					menu owner close.
					self openSubWindow: self itemMenu].
		'back'	->	[menu close]}.
				
	^menu