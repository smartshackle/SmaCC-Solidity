generated
scan48X3X1
	self recordMatch: #(115).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $4
		ifTrue: [ ^ self scan42 ].
	currentCharacter == $8
		ifTrue: [ ^ self scan44 ].
	('26' includes: currentCharacter)
		ifTrue: [ ^ self scan39 ].
	('37' includes: currentCharacter)
		ifTrue: [ ^ self scan41 ].
	('159' includes: currentCharacter)
		ifTrue: [ ^ self scan43 ].
	(('$0' includes: currentCharacter)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch