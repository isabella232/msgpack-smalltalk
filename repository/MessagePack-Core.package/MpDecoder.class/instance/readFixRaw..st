reading
readFixRaw: firstByte
	| size |
	self typeMapper isBytesAsString ifTrue: [^self readFixString: firstByte].
	size := (firstByte bitAnd: 2r11111).
	size = 0 ifTrue: [ ^ #[] ].
	^self readStream next: size