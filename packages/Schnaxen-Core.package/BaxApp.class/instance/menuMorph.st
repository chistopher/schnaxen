menu
menuMorph

	| menu |
	menu := MenuMorph fromArray: {
		{'move up'.					#field}.
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
	menu submorphs do: [ :each | each target: self].
	^menu
	
	
						
