generated
scan52X3X1
	self recordMatch: #(115).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $0
		ifTrue: [ ^ self scan42 ].
	currentCharacter == $1
		ifTrue: [ ^ self scan43 ].
	currentCharacter == $2
		ifTrue: [ ^ self scan39 ].
	currentCharacter == $3
		ifTrue: [ ^ self scan41 ].
	currentCharacter == $4
		ifTrue: [ ^ self scan44 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $5 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch