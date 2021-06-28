using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace NetflixApplication.ViewModels
{
    public class SignUp1ViewModel : BaseViewModel
    {
        SignUpViewModel vm;
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
            
        }
    }
}
