collatz2: z
|i contador|
contador:=0.
i:=z.
Transcript show: i asString.
[ i > 1 ] whileTrue: [  
	((i%2=0)) ifTrue: [ i:=i // 2 ]
	ifFalse: [ i:=3 * i + 1 ].
	contador:=contador+1
].

[ contador > 0 ] whileTrue: [ 
	Transcript show: '*' asString.
	contador:=contador-1
	 ]

|obj result|
obj:=Class_Practica new.
result := obj collatz2: 18.