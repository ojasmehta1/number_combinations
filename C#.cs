//Source: https://rosettacode.org/wiki/Combinations#C#
//imports system libraries
using System;
using System.Collections.Generic;
 
//creates a class named Program
public class Program
{
//creates a IEnumerable interface
    public static IEnumerable<int[]> Combinations(int m, int n)
    {
            int[] result = new int[m]; // creates an array of int called result
            Stack<int> stack = new Stack<int>(); //creates a stack of int called stack
            stack.Push(0); // pushes 0 into the stack
 	    //loops until stack has only 1 element
            while (stack.Count > 0)
           {
                int index = stack.Count - 1;//stores stack.count - 1 into int variable index
                int value = stack.Pop();// stores the return value of stack.pop into int variable value
 
		//loops until value is n-1
                while (value < n) 
               {
                    result[index++] = ++value;//stores value into the array result
                    stack.Push(value);//stores value inside stack
 
                    if (index == m) 
                    {
                        yield return result;//returns result
                        break;
                    }
                }
            }
    }
 
    static void Main()
    {
	int k,n = 0;//initializes variables k and n to 0
	Console.WriteLine("Please enter your k:");//prints
	k = Convert.ToInt32(Console.ReadLine());//stores user input
	Console.WriteLine("Please enter your n:");//prints
	n = Convert.ToInt32(Console.ReadLine());//stores user input

	//loops through individual elements in the array
        foreach (int[] c in Combinations(k, n))
        {
            Console.WriteLine(string.Join(",", c));//concatenates the string
            Console.WriteLine();
        }
    }
}
