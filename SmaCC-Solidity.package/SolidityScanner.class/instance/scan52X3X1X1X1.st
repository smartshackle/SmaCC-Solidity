generated
scan52X3X1X1X1
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $1
		ifTrue: [ ^ self scan45 ].
	currentCharacter == $2
		ifTrue: [ ^ self scan41 ].
	currentCharacter == $3
		ifTrue: [ ^ self scan43 ].
	currentCharacter == $4
		ifTrue: [ ^ self scan49 ].
	currentCharacter == $8
		ifTrue: [ ^ self scan42 ].
	(('$0' includes: currentCharacter)
		or: [ (currentCharacter between: $5 and: $7)
				or: [ currentCharacter == $9
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch