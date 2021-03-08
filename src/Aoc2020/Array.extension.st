Extension { #name : #Array }

{ #category : #'*Aoc2020' }
Array >> day01a [
	self withIndexDo: [: first : index |
		(self allButFirst: index) do: [: second |
			first+second = 2020 ifTrue: [ ^ first*second ]
		]
   ]
]

{ #category : #'*Aoc2020' }
Array >> day01b [
	self withIndexDo: [: first : index1 |
		(self allButFirst: index1) withIndexDo: [: second : index2 |
			(self allButFirst: index1+index2) do: [: third |
				first+second+third = 2020 ifTrue: [ ^ first*second*third ]
			]
		]
   ]
]
