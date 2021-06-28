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
using System.Windows.Shapes;

namespace NetflixApplication.Views
{
    /// <summary>
    /// Interaction logic for SignUpView.xaml
    /// </summary>
    public partial class SignUpView : Window
    {
        SignUpViewModel vm;
        public SignUpView()
        {
            InitializeComponent();
            Loaded += Window_Loaded;
            
        }

        private void ReturnLoginPage(object sender, RoutedEventArgs e)
        {
            SignInView signInView = new SignInView();
            signInView.Show();
            this.Close();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            frame.NavigationService.Navigate(new SignUp1View());
        }
    }
}
