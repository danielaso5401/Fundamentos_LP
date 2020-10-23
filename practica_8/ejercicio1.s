
sum_total:w with:z
|i|
i:=z-1.
i:=i*(i+1).
i:=i/2.
i:=i-w.
^ i

|obj result|
obj:=Class_Practica new.
result := obj sum_total: 1 with: 7.
Transcript show: result asString. 
