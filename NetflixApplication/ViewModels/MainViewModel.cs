using NetflixApplication.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace NetflixApplication.ViewModels
{
    public class MainViewModel : BaseViewModel
    {
        public bool Isloaded = false;
        public ICommand LoadedWindowCommand { get; set; }
        public ICommand HomeViewCommand { get; set; }
        public ICommand MyListViewCommand { get; set; }

        public HomeViewModel HomeVM { get; set; }
        public MyListViewModel MyListVM { get; set; }                

        private object _currentView;

        public object CurrentView
        {
            get { return _currentView; }
            set
            {
                _currentView = value;
                OnPropertyChanged();
            }
        }
        public MainViewModel()
        {
            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) => {
                Isloaded = true;
                if (p == null)
                    return;
                p.Hide();
                SignInView loginWindow = new SignInView();
                loginWindow.ShowDialog();

                if (loginWindow.DataContext == null)
                    return;
                var loginVM = loginWindow.DataContext as AccountViewModel;

                if (loginVM.IsLogin)
                {
                    p.Show();
                }
                else
                {
                    p.Close();
                }
            }
              );
            HomeVM = new HomeViewModel();
            MyListVM = new MyListViewModel();            

            CurrentView = HomeVM;

            HomeViewCommand = new RelayCommand<object>((p) => { return true; }, (p) => { CurrentView = HomeVM; });
            MyListViewCommand = new RelayCommand<object>((p) => { return true; }, (p) => { CurrentView = MyListVM; });
        }

    }
}
