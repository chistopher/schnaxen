as yet unclassified
selectItem: aMorph next: aBoolean

	| currentLevelSubmorphs index |

	currentLevelSubmorphs := self submorphs first submorphs at: self level.
	index := (currentLevelSubmorphs submorphs) indexOf: aMorph.
	" if the index is not 0 the item is already in the List and doesnt have to be loaded into the currentLevelSubmorphs "
	( index = 0 )
		ifTrue:[
			aBoolean
				ifTrue:[
					currentLevelSubmorphs removeMorph: ( currentLevelSubmorphs submorphs first ).
					currentLevelSubmorphs addMorphBack: aMorph.
					]
				ifFalse:[
					currentLevelSubmorphs removeMorph: ( currentLevelSubmorphs submorphs last ).
					currentLevelSubmorphs addMorph: aMorph.
					].
				self layoutChildrenOf: currentLevelSubmorphs vertical: self vertical not.
			].	
		
	self selectedItems add: aMorph.
	aMorph color: Color red.
	