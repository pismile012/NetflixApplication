using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetflixApplication.ViewModels
{
    public class SignUp2ViewModel : BaseViewModel
    {
        private string _password;
        private string _pre;
        public string Password
        {
            get { return _password; }
            set
            {
                OnPropertyChanged(ref _password, value);
            }
        }
        public string PrePassword
        {
            get { return _pre; }
            set
            {
                OnPropertyChanged(ref _pre, value);
            }
        }
        
    }
}
