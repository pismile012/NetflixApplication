using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using NetflixApplication.Models;
using NetflixApplication.Views;

namespace NetflixApplication.ViewModels
{
    public class SignUp1ViewModel : BaseViewModel
    {
        
        public bool Exist { get; set; }
        public ICommand SignUpCommand { get; set; }
        public ICommand SignUp2Command { get; set; }

        private string _Account_Email;
        public string Account_Email { get => _Account_Email; set { _Account_Email = value; OnPropertyChanged(); } }
        public SignUp1ViewModel()
        {
            Exist = false;
            Account_Email = "";
            SignUpCommand = new RelayCommand<Page>((p) => { return true; }, (p) => { CheckEmail(p); });
        }
        void CheckEmail(Page p)
        {
            if (p == null)
                return;            
            var email = DataProvider.Ins.DB.Accounts.Where(x => x.Account_Email == Account_Email).Count();
            if (email == 0)
            {
                Exist = true;
                MessageBox.Show("Email chua ton tai");
                p.NavigationService.Navigate(new SignUp2View());
            }
            else
            {
                Exist = false;
                MessageBox.Show("Email da ton tai");
            }
        }
    }

}
