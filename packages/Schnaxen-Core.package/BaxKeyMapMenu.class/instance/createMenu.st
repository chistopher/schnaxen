initialization
createMenu
	
	| menuItems |

	menuItems := OrderedCollection new.
	BaxApp keyMap associationsDo: [ :association | | menuItem character|
		character := association key.
		character shouldBePrintedAsLiteral ifFalse: [
			character := Character constantNameFor: character].
		menuItem := '#', association value, ' : ', character -> [
			self requestInputFor: association.
			self getFocus].
		menuItems add: menuItem].
	self fromList: menuItems sort
