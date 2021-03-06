using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;
using NetflixApplication.Models;
using NetflixApplication.Views;

namespace NetflixApplication.ViewModels
{
    class AccountViewModel : BaseViewModel
    {
        public bool IsLogin { get; set; }
        private string _Account_Email;
        public string Account_Email { get => _Account_Email; set { _Account_Email = value; OnPropertyChanged(); } }
        private string _Account_Password;
        public string Account_Password { get => _Account_Password; set { _Account_Password = value; OnPropertyChanged(); } }

        public ICommand CloseCommand { get; set; }
        public ICommand LoginCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }
        public AccountViewModel()
        {
            IsLogin = false;
            Account_Password = "";
            Account_Email = "";
            LoginCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { Login(p); });
            CloseCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { p.Close(); });
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { Account_Password = p.Password; });
        }


        //Convert password
        public static string Base64Encode(string plainText)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
            return System.Convert.ToBase64String(plainTextBytes);
        }



        public static string MD5Hash(string input)
        {
            StringBuilder hash = new StringBuilder();
            MD5CryptoServiceProvider md5provider = new MD5CryptoServiceProvider();
            byte[] bytes = md5provider.ComputeHash(new UTF8Encoding().GetBytes(input));

            for (int i = 0; i < bytes.Length; i++)
            {
                hash.Append(bytes[i].ToString("x2"));
            }
            return hash.ToString();
        }
        void Login(Window p)
        {
            if (p == null)
                return;
            string passEncode = MD5Hash(Base64Encode(Account_Password));
            var accCount = DataProvider.Ins.DB.Accounts.Where(x => x.Account_Email == Account_Email && x.Account_Password == passEncode).Count();
            if (accCount > 0)
            {
                var checktype = DataProvider.Ins.DB.Accounts.Where(x => x.Account_Type == "Admin" && x.Account_Email==Account_Email).Count();
                if (checktype > 0)
                {
                    IsLogin = true;
                    MessageBox.Show("Ban dang dang nhap voi quyen admin!");
                }
                else 
                {
                    IsLogin = true;
                    var checkstatus = DataProvider.Ins.DB.Rentals.Where(x => x.Account_Email == Account_Email).Count();
                    if (checkstatus > 0)
                    {
                        MessageBox.Show("DN thành công");
                        p.Close();
                    }
                    else
                    {
                        IsLogin = false;
                        MessageBox.Show("Tai Khoan chua dang ki goi, Vui long dang ki goi su dung");
                    }

                }

            }
            else
            {
                IsLogin = false;
                MessageBox.Show("Sai tài khoản hoặc mật khẩu!");
            }
        }
    }
}
