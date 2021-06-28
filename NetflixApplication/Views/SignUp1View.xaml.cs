using NetflixApplication.ViewModels;
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
    /// Interaction logic for SignUp1View.xaml
    /// </summary>
    public partial class SignUp1View : Page
    {
        SignUp1ViewModel vm = new SignUp1ViewModel();
        public SignUp1View()
        {
            InitializeComponent();
            vm = new SignUp1ViewModel();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new SignUp2View());
        }
    }
}
