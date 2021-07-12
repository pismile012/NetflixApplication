using NetflixApplication.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using System.Windows.Threading;

namespace NetflixApplication.ViewModels
{
    public class VideoPlayModel : BaseViewModel
    {
        private ObservableCollection<Movie> _Movies;
        public ObservableCollection<Movie> Movies { get => _Movies; set { _Movies = value; OnPropertyChanged(); } }
        public VideoPlayModel(int id)
        {
            var db = new DB_Digam_NetflixEntities();
            Movies = new ObservableCollection<Movie>(db.Movies.Where(m => m.Movie_ID == id));
        }
    }
}
