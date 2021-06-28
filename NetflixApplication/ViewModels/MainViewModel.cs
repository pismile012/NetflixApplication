using NetflixApplication.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace NetflixApplication.ViewModels
{
    public class MainViewModel : BaseViewModel
    {
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
            HomeVM = new HomeViewModel();
            MyListVM = new MyListViewModel();            

            CurrentView = HomeVM;

            HomeViewCommand = new RelayCommand<object>((p) => { return true; }, (p) => { CurrentView = HomeVM; });
            MyListViewCommand = new RelayCommand<object>((p) => { return true; }, (p) => { CurrentView = MyListVM; });
        }

    }
}
