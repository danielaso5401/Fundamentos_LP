using System;
using System.Linq;
class Example
{
    static void Main()
    {
        var sum = Enumerable.Range(0, 99) // genera numeros del rango 0 a 99
                      .Where(isEven) // con la condicion que cumpla la funcion isven
                      .Sum();//se suman sucesivamente
        Console.WriteLine(sum);//se muestra la suma de elementos
    }

    static bool isEven(int number)
    {
        return number % 2 == 0;//retorna el numero si es par.
    }
}