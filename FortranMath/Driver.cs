using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace FortranMath
{
    class Driver:System.Windows.Forms.Form
    
    {
        Driver()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            this.SuspendLayout();
            this.ClientSize = new System.Drawing.Size(367, 188);
            this.Name = "FortranMath";
            this.ResumeLayout(false);
        }

        [DllImport("FortranFunc.dll", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
            static extern void StrassenAlgorithm();

        [DllImport("FortranFunc.dll", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
            static extern void EratosAlgorithm();

        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Driver());
            while (true)
            {
                Console.WriteLine("What would you like to do?");
                String key = Console.ReadLine().ToLower();
                if (key == "strassen")
                {
                    StrassenAlgorithm();
                }
                else if (key == "eratosthenes")
                {
                    EratosAlgorithm();
                }
                else if (key == "exit")
                {
                    break;
                }
            }
        }
    }
}
