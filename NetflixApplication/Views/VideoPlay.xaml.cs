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
namespace NetflixApplication.Views
{
    /// <summary>
    /// Interaction logic for VideoPlay.xaml
    /// </summary>
    public partial class VideoPlay : Window
    {

        bool fullScreen = false;
        double currentpos = 0;
        DispatcherTimer timer;
        public VideoPlay()
        {
            InitializeComponent();

            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromMilliseconds(500);
            timer.Tick += Timer_Tick; ;
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            slider_seek.Value = mediaElement.Position.TotalSeconds;
        }

        private void BtnPause_Click(object sender, RoutedEventArgs e)
        {
            mediaElement.Pause();
        }

        private void Slider_vol_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            mediaElement.Volume = (double)slider_vol.Value;
        }

        private void Slider_seek_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            mediaElement.Position = TimeSpan.FromSeconds(slider_seek.Value);
        }

        private void Window_Drop(object sender, DragEventArgs e)
        {
            string filename = (string)((DataObject)e.Data).GetFileDropList()[0];

            mediaElement.Source = new Uri(filename);

            mediaElement.LoadedBehavior = MediaState.Manual;
            mediaElement.UnloadedBehavior = MediaState.Manual;
            mediaElement.Volume = (double)slider_vol.Value;
            mediaElement.Play();
        }

        private void MediaElement_MediaOpened(object sender, RoutedEventArgs e)
        {
            TimeSpan ts = mediaElement.NaturalDuration.TimeSpan;
            slider_seek.Maximum = ts.TotalSeconds;
            timer.Start();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            mediaElement.Play();
        }


        private void BtnStop_Click(object sender, RoutedEventArgs e)
        {
            mediaElement.Stop();
        }

        private void MediaElement_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            if (!timeClick.Enabled)
            {
                timeClick.Enabled = true;
                return;
            }

            if (timeClick.Enabled)
            {
                if (!fullScreen)
                {
                    layoutRoot.Children.Remove(mediaElement);
                    this.Content = mediaElement;
                    this.WindowStyle = WindowStyle.None;
                    this.WindowState = WindowState.Maximized;
                    mediaElement.Position = TimeSpan.FromSeconds(currentpos);
                }

                else
                {
                    this.Content = layoutRoot;
                    layoutRoot.Children.Add(mediaElement);
                    this.WindowStyle = WindowStyle.SingleBorderWindow;
                    this.WindowState = WindowState.Normal;
                    mediaElement.Position = TimeSpan.FromSeconds(currentpos);
                }

                fullScreen = !fullScreen;
            }
        }

        [DllImport("user32.dll")]
        static extern uint GetDoubleClickTime();

        System.Timers.Timer timeClick = new System.Timers.Timer((int)GetDoubleClickTime())
        {
            AutoReset = false
        };
    }
}
