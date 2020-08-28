using System;
class Example
{
    static void Main()
    {
        var sum = 0;
        for (var i = 0; i < 100; i++) //un secuencia del 0 al 99.
        {
            if (i % 2 == 0) // si la i es par entra.
            {
                sum += i; //se suman sucesivamente los numeros pares.
            }
        }
        Console.WriteLine(sum);//muestra por consola la suma de numeros pares del 0 al 99
    }
}