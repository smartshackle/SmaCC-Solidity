generated
scan25X1X1X1
	self recordMatch: #(117).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $0
		ifTrue: [ ^ self scan18 ].
	currentCharacter == $1
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $2
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $6
		ifTrue: [ ^ self scan19 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $3 and: $5)
				or: [ (currentCharacter between: $7 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch