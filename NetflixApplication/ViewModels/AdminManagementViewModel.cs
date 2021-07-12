using NetflixApplication.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace NetflixApplication.ViewModels
{
    public class AdminManagementViewModel : BaseViewModel
    {
        private ObservableCollection<Movie> _listMovies;
        public ObservableCollection<Movie> ListMovies { get => _listMovies; set { _listMovies = value; OnPropertyChanged(); } }
        private ObservableCollection<Account> _listAcounts;
        public ObservableCollection<Account> ListAcounts { get => _listAcounts; set { _listAcounts = value; OnPropertyChanged(); } }
        private ObservableCollection<Category> _listCategory;
        public ObservableCollection<Category> ListCategory { get => _listCategory; set { _listCategory = value; OnPropertyChanged(); } }        

        private Movie _SelectedMovie;
        public Movie SelectedMovie
        {
            get => _SelectedMovie;
            set
            {
                _SelectedMovie = value;
                OnPropertyChanged();
                if (SelectedMovie != null)
                {
                    Movie_ID = SelectedMovie.Movie_ID;
                    Category_ID = SelectedMovie.Category_ID;
                    Movie_Name = SelectedMovie.Movie_Name;
                    Movie_Describe = SelectedMovie.Movie_Describe;
                    Movie_Trailer = SelectedMovie.Movie_Trailer;
                    Movie_Image = SelectedMovie.Movie_Image;
                    Movie_Year = SelectedMovie.Movie_Year;
                    Movie_Lenght = SelectedMovie.Movie_Lenght;
                }
            }
        }

        private int _Movie_ID;
        private int _Category_ID;
        private string _Movie_Name;
        private Nullable<int> _Movie_Year;
        private string _Movie_Describe;
        private string _Movie_Trailer;
        private string _Movie_Image;
        private Nullable<int> _Movie_Lenght;   

        public int Movie_ID { get => _Movie_ID; set { _Movie_ID = value; OnPropertyChanged(); } }
        public int Category_ID { get => _Category_ID; set { _Category_ID = value; OnPropertyChanged(); } }
        public string Movie_Name { get => _Movie_Name; set { _Movie_Name = value; OnPropertyChanged(); } }
        public Nullable<int> Movie_Year { get => _Movie_Year; set { _Movie_Year = value; OnPropertyChanged(); } }
        public string Movie_Describe { get => _Movie_Describe; set { _Movie_Describe = value; OnPropertyChanged(); } }
        public string Movie_Trailer { get => _Movie_Trailer; set { _Movie_Trailer = value; OnPropertyChanged(); } }
        public string Movie_Image { get => _Movie_Name; set { _Movie_Name = value; OnPropertyChanged(); } }
        public Nullable<int> Movie_Lenght { get => _Movie_Lenght; set { _Movie_Lenght = value; OnPropertyChanged(); } }

        private Category _SelectedCategory;
        public Category SelectedCategory        
        {
            get => _SelectedCategory;
            set
            {
                _SelectedCategory = value;
                OnPropertyChanged();
                if (SelectedCategory != null)
                {
                    Category_Name = SelectedCategory.Category_Name;
                }
            }
        }

        private string _Category_Name;
        public string Category_Name { get => _Category_Name; set { _Category_Name = value; OnPropertyChanged(); } }

        public ICommand AddCategoryCommand { get; set; }
        public ICommand EditCategoryCommand { get; set; }

        public AdminManagementViewModel()
        {
            ListAcounts = new ObservableCollection<Account>(DataProvider.Ins.DB.Accounts.ToList());
            ListMovies = new ObservableCollection<Movie>(DataProvider.Ins.DB.Movies.ToList());
            ListCategory = new ObservableCollection<Category>(DataProvider.Ins.DB.Categories.ToList());

            AddCategoryCommand = new RelayCommand<object>((p) =>
            {               
                return true;
            }, (p) =>
            {
                var category = new Category() { Category_Name = Category_Name };

                DataProvider.Ins.DB.Categories.Add(category);
                DataProvider.Ins.DB.SaveChanges();

                ListCategory.Add(category);
            });

            EditCategoryCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedCategory == null)
                    return false;

                var displayList = DataProvider.Ins.DB.Categories.Where(x => x.Category_ID == SelectedCategory.Category_ID);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var category = DataProvider.Ins.DB.Categories.Where(x => x.Category_ID == SelectedCategory.Category_ID).SingleOrDefault();
                category.Category_Name = Category_Name;                
                DataProvider.Ins.DB.SaveChanges();
                SelectedCategory.Category_Name = Category_Name;
            });

        }
    }
}
