using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using MyLibrary;

namespace Time_Management_app
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public List<Class1> moduleinfo = new List<Class1>();

        public List<Class2> modulehours = new List<Class2>();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnadd_Click(object sender, RoutedEventArgs e)
        {

            

            

            if (txtcode.Text != "" && txtname.Text != "" && txtcredits.Text != "" && txtclasshours.Text != "" && txtweeks.Text != "")
            {

                //this code stored the information in the textboxes in  variables
                string mCode = txtcode.Text;
                string mName = txtname.Text;
                int mCredits = int.Parse(txtcredits.Text);
                int mHours = int.Parse(txtclasshours.Text);
                int Weeks = int.Parse(txtweeks.Text);
                DateTime startdate = dpstartdate.SelectedDate ?? DateTime.Now;
                double studyhours = ((mCredits * 10) / Weeks) - mHours;


                // this code adds the object properties to the getters and setters 
                Class1 moduledata = new Class1(mCode, mName, mCredits, mHours, Weeks, studyhours, startdate);

                // this code adeds the object to a list
                moduleinfo.Add(moduledata);

                //this code clears the text boxes
                txtcode.Text = "";
                txtname.Text = "";
                txtcredits.Text = "";
                txtclasshours.Text = "";
                txtweeks.Text = "";

                MessageBox.Show("Successfully added");
            }
            else
            {
                MessageBox.Show("Make sure that you have filled in every field.");
            }
            

            
        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

       
        private void btnClear_Click(object sender, RoutedEventArgs e)
        {
            lvModules.Items.Clear ();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            
            // this code displays the module name and hours on the list view
            lvModules.Items.Clear();

            foreach (Class1 moduledata in moduleinfo)
            {
                if (moduledata.ModuleName == "")
                {
                    moduledata.Equals(null);
                }
                lvModules.Items.Add(moduledata);
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

            // this code records the hours and date that the user has input and performs the needed calculation
            Class1 selectedClass1 = lvModules.SelectedItem as Class1;

            if (txtHoursSpent.Text != "")
            {
                if (selectedClass1 != null)
                {

                    int hoursSpent = int.Parse(txtHoursSpent.Text);
                    DateTime dateofwork = dpupdate.SelectedDate ?? DateTime.Now;
                    selectedClass1.HoursSpent += hoursSpent;
                    double hoursupdate = selectedClass1.ModuleStudyHours - selectedClass1.HoursSpent;
                    if (hoursupdate <= 0)
                    {
                        MessageBox.Show("Yey You have completed your hours ;)");
                        selectedClass1.ModuleStudyHours = 0;
                    }
                    else
                    {
                        selectedClass1.ModuleStudyHours = hoursupdate;
                        MessageBox.Show("Successfully Updated");
                    }


                    txtHoursSpent.Clear();
                    lvModules.Items.Refresh();

                    Class2 moduleupdate = new Class2(hoursSpent, dateofwork);
                    modulehours.Add(moduleupdate);

                    
                    
                }
                

            }
            else
            {
                MessageBox.Show("Make sure you have filled in all the fields and you have selected a module on the list view.");
            }


        }

        private void txtweeks_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }

}
