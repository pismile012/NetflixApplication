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
    /// Interaction logic for SignUp2View.xaml
    /// </summary>
    public partial class SignUp2View : Page
    {
        SignUp2ViewModel vm;
        public SignUp2View()
        {
            InitializeComponent();
            vm = new SignUp2ViewModel();
        }

        private void Pre_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new SignUp1View());
        }
        private void Next_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new SignUp3View());
        }
    }
}
