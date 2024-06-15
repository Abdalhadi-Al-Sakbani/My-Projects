using System;
using System.Collections.Generic;
using System.Diagnostics.Metrics;
using System.Linq;
using System.Text;

namespace Calculator
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to my calculator ^_^");
            Console.Write("Enter the first number : ");
            float num1 = Convert.ToSingle(Console.ReadLine());
            Console.Write("Enter the opertion +\\-\\*\\/ : ");
            string oper = Console.ReadLine();
            Console.Write("Enter the second number: ");
            float num2 = Convert.ToSingle(Console.ReadLine());

            float result;

            switch (oper)
            {
                case "+":
                    result = num1 + num2;
                    Console.WriteLine("The result of this athmetic process is : {0}", result);
                    break;
                case "-":
                    result = num1 - num2;
                    Console.WriteLine("The result of this athmetic process is : {0}", result);
                    break;
                case "*":
                    result = num1 * num2;
                    Console.WriteLine("The result of this athmetic process is : {0}", result);
                    break;
                case "/":
                    result = num1 / num2;
                    Console.WriteLine("The result of this athmetic process is : {0}", result);
                    break;
                default:
                    Console.WriteLine("Undefined operetor please try again.");
                    break;
            }
        }
    }
}