using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Time_Management_app
{
    public class Class2
    {
        // this code creates the properties
        public int HoursSpent { get; set; }
        private DateTime dayofwork;

        public DateTime Dateofwork
        {   get { return dayofwork;  }
            set { dayofwork = value; } 
        }

        // this code here decleares the properties to variables
        public Class2(int Hours, DateTime dateofwpork)
        {
            HoursSpent  = Hours;
            Dateofwork = dateofwpork;

        }
    }
}
