using System;
using ClassLib;

namespace ConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            var class1 = new Class1();
            var sum = class1.Add(1, 1);
            Console.WriteLine(sum.ToString());
        }
    }
}