using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Time_Management_app
{
     public class Class1
    {
        // this code creates the properties
        public string ModuleCode { get; set; }
        public string ModuleName { get; set; }
        public int ModuleCredits { get; set; }
        public int ModuleHours { get; set; }
        public double ModuleStudyHours { get; set; }
        public int numofweeks { get; set; }

        public int HoursSpent { get; set; }

        private DateTime pickedDate;

        

        public DateTime startdate
        {
            get { return pickedDate; } 
            set {pickedDate = value;}
        }

        public Class1(string mCode, string mName, int mCredits, int mHours, int weeks, double studyhours, DateTime Startdate) 
        { 
            // this code here decleares the properties to variables 
            ModuleCode = mCode;
            ModuleName = mName; 
            ModuleCredits = mCredits;   
            ModuleHours = mHours;
            numofweeks = weeks;
            ModuleStudyHours = studyhours;
            startdate = Startdate;
         
        }


    }
}
