using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using NetflixApplication.Models;

namespace NetflixApplication.ViewModels
{
    public class SignUp1ViewModel : BaseViewModel
    {
        
        public bool Exist { get; set; }
        public ICommand SignUpCommand { get; set; }
        public ICommand SignUp2Command { get; set; }

        private string _email;

        public string Email
        {
            get { return _email; }
            set
            {
                OnPropertyChanged(ref _email, value);
            }
        }
        public SignUp1ViewModel()
        {
            Exist = false;
            SignUpCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { CheckEmail(p); });
        }
        void CheckEmail(Window p)
        {
            if (p == null)
                return;
            var email = DataProvider.Ins.DB.Accounts.Where(x => x.Account_Email == Email).Count();
            if(email < 1)
            {
                Exist = true;
                MessageBox.Show("Chua ton tai email");
            }
            else
            {
                Exist = false;
                MessageBox.Show("Email da ton tai");
            }
        }
    }

}
