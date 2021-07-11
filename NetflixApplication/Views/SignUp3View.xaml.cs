using System;
using System.Collections.Generic;
using System.Linq;
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

namespace NetflixApplication.Views
{
    /// <summary>
    /// Interaction logic for SignUp3View.xaml
    /// </summary>
    public partial class SignUp3View : Page
    {
        public SignUp3View()
        {
            InitializeComponent();
        }

        private void Pre_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new SignUp1View());
        }
    }
}
