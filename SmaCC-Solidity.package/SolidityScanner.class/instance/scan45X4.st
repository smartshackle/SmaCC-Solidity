generated
scan45X4
	self recordMatch: #(115).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $2
		ifTrue:
			[ ^ self scan45X4X1 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $0 and: $1)
				or: [ (currentCharacter between: $3 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch