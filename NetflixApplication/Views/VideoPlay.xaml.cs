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
using System.Windows.Shapes;
using System.Windows.Threading;
using System.Runtime.InteropServices;
using NetflixApplication.ViewModels;

namespace NetflixApplication.Views
{
    /// <summary>
    /// Interaction logic for VideoPlay.xaml
    /// </summary>
    public partial class VideoPlay : Window
    {        
        DispatcherTimer timer;
        public VideoPlay(int id)
        {
            InitializeComponent();
            VideoPlayModel vm = new VideoPlayModel(id);
            DataContext = vm;
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromMilliseconds(500);
            timer.Tick += Timer_Tick;
            mediaElement.Play();
            timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            slider_seek.Value = mediaElement.Position.TotalSeconds;
        }

        private void BtnPause_Click(object sender, RoutedEventArgs e)
        {
            mediaElement.Pause();
            btnPause.Visibility = Visibility.Hidden;
            btnPlay.Visibility = Visibility.Visible;
        }

        private void Slider_vol_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            mediaElement.Volume = (double)slider_vol.Value;
        }

        private void Slider_seek_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            mediaElement.Position = TimeSpan.FromSeconds(slider_seek.Value);
            slider_seek.Maximum = mediaElement.NaturalDuration.TimeSpan.TotalSeconds;
            txtMaxTime.Text = mediaElement.NaturalDuration.TimeSpan.ToString(@"hh\:mm\:ss");
            txtRealTime.Text = mediaElement.Position.ToString(@"hh\:mm\:ss");
        }   

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            mediaElement.Play();
            btnPlay.Visibility = Visibility.Hidden;
            btnPause.Visibility = Visibility.Visible;
        }

        private void FullScreen_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Maximized;
            FullScreen.Visibility = Visibility.Hidden;
            ExitFullScreen.Visibility = Visibility.Visible;
        }

        private void ExitFullScreen_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Normal;
            FullScreen.Visibility = Visibility.Visible;
            ExitFullScreen.Visibility = Visibility.Hidden;
        }
    }
}
