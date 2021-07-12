using NetflixApplication.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace NetflixApplication.ViewModels
{
    public class HomeViewModel : DependencyObject
    {
        public ICommand PlayVideoCommand { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;
        public static readonly DependencyProperty MovieIDProperty;

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }      

        
        private ObservableCollection<Movie> _DS1;
        private ObservableCollection<Movie> _DS2;
        private ObservableCollection<Movie> _DS3;
        private ObservableCollection<Movie> _DS4;
        private ObservableCollection<Movie> _DS5;
        private ObservableCollection<Movie> _DS6;
        public ObservableCollection<Movie> DS1 { get => _DS1; set { _DS1 = value; OnPropertyChanged(); } }
        public ObservableCollection<Movie> DS2 { get => _DS2; set { _DS2 = value; OnPropertyChanged(); } }
        public ObservableCollection<Movie> DS3 { get => _DS3; set { _DS3 = value; OnPropertyChanged(); } }
        public ObservableCollection<Movie> DS4 { get => _DS4; set { _DS4 = value; OnPropertyChanged(); } }
        public ObservableCollection<Movie> DS5 { get => _DS5; set { _DS5 = value; OnPropertyChanged(); } }
        public ObservableCollection<Movie> DS6 { get => _DS6; set { _DS6 = value; OnPropertyChanged(); } }

        static HomeViewModel()
        {           
            MovieIDProperty = DependencyProperty.Register("MovieID", typeof(string), typeof(HomeViewModel));
        }
        public int MovieID { get => (int)GetValue(MovieIDProperty); set => SetValue(MovieIDProperty, value); }

        public HomeViewModel()
        {
            DS1 = new ObservableCollection<Movie>(DataProvider.Ins.DB.Movies.Where(m => m.Category.Category_Name == "Hành động" || m.Category.Category_Name == "Phiêu lưu"));
            DS2 = new ObservableCollection<Movie>(DataProvider.Ins.DB.Movies.Where(m => m.Category.Category_Name == "Hoạt hình"));
            DS3 = new ObservableCollection<Movie>(DataProvider.Ins.DB.Movies.Where(m => m.Category.Category_Name == "Hình sự"));
            DS4 = new ObservableCollection<Movie>(DataProvider.Ins.DB.Movies.Where(m => m.Category.Category_Name == "Khoa học viễn tưởng"));
            DS5 = new ObservableCollection<Movie>(DataProvider.Ins.DB.Movies.Where(m => m.Category.Category_Name == "Tình cảm" || m.Category.Category_Name == "Lịch sử"));
            DS6 = new ObservableCollection<Movie>(DataProvider.Ins.DB.Movies.Where(m => m.Category.Category_Name == "Kinh dị" || m.Category.Category_Name == "Huyền bí"));

            
            PlayVideoCommand = new RelayCommand<object>(
                (p)=> {
                    if (p == null)
                        return false;
                    return true; 
                }, 
                (p) => {
                    MessageBox.Show(MovieID.ToString());
                });

        }

    }
}
