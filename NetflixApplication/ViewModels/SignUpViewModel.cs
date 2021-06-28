using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetflixApplication.ViewModels
{
    public class SignUpViewModel : BaseViewModel
    {
        private object _currentView;

        public SignUp1ViewModel signUp1;
        public object CurrentView
        {
            get { return _currentView; }
            set
            {
                _currentView = value;
                OnPropertyChanged();
            }
        }
        public SignUpViewModel()
        {
            signUp1 = new SignUp1ViewModel();
            CurrentView = signUp1;
        }
    }
}
