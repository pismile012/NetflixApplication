using NetflixApplication.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace NetflixApplication.Views
{
    /// <summary>
    /// Interaction logic for HomeView.xaml
    /// </summary>
    public partial class HomeView : Page
    {
        HomeViewModel vm = new HomeViewModel();
        public HomeView()
        {
            InitializeComponent();            
            DataContext = vm;
        }
        private void Grid_MouseEnter(object sender, MouseEventArgs e)
        {
            var video = sender as Grid;
            var me = video.FindName("video") as MediaElement;
            me?.Play();

            var d = sender as Grid;
            var details = video.FindName("Details") as StackPanel;
            details.Visibility = Visibility.Visible;
        }

        private void Grid_MouseLeave(object sender, MouseEventArgs e)
        {
            var video = sender as Grid;
            var me = video.FindName("video") as MediaElement;
            me?.Stop();

            var d = sender as Grid;
            var details = video.FindName("Details") as StackPanel;
            details.Visibility = Visibility.Collapsed;
        }

        private void PlayVideo_Click(object sender, RoutedEventArgs e)
        {
            var movie = sender as Button;
            var id = movie.FindName("txtIDMovie") as TextBlock;            
            VideoPlay vd = new VideoPlay(int.Parse(id.Text));
            vd.ShowDialog();
        }
    }
}
