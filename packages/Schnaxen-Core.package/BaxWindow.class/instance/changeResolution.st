windows
changeResolution

	self resize.
	self subWindows do: [:each|
		each changeResolution]