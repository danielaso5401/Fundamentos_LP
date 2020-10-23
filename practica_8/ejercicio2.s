
collatz: z
|i|

i:=z.
[ i > 1 ] whileTrue: [  
	((i%2=0)) ifTrue: [ i:=i // 2 ]
	ifFalse: [ i:=3 * i + 1 ].
	Transcript show: i asString.
	Transcript show: $- asString.
].

|obj result|
obj:=Class_Practica new.
result := obj collatz: 18.