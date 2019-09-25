using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

namespace FortranMath
{
    class Driver
    {

        [DllImport("Strassen.dll", CallingConvention = CallingConvention.Cdecl)]
            static extern void StrassenAlgorithm();

        static void Main(string[] args)
        {
            while (true)
            {
                Console.WriteLine("What would you like to do?");
                String key = Console.ReadLine().ToLower();
                if (key == "strassen")
                {
                    StrassenAlgorithm();
                }
                else if (key == "exit")
                {
                    break;
                }
            }
        }
    }
}
