menu
menuMorph

	| menu |
	menu := MenuMorph new.
	menu 
		defaultTarget: self;
		addList: {
		{'battle'.					#changeToBattle}.
		{'find again (g)'.				#field}.
		{'set search string (h)'.		#field}.
		#-.
		{'do again (j)'.				#field}.
		{'undo (z)'.					#field}.
		#-.
		{'copy (c)'.					#field}.
		{'cut (x)'.					#field}.
		{'change fokus back'.		#field}.
		{'paste...'.					#field}}.
	^menu
	
	
						
