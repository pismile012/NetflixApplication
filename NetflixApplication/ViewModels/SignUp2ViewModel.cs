using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using NetflixApplication.Models;
using NetflixApplication.Views;
namespace NetflixApplication.ViewModels
{
    public class SignUp2ViewModel : BaseViewModel
    {
        private bool Success { get; set; }
        private string _Account_Password;
        public string Account_Password
        {
            get { return _Account_Password; }
            set
            {
                OnPropertyChanged(ref _Account_Password, value);
            }
        }
        private string _pre;
        public string PrePassword
        {
            get { return _pre; }
            set
            {
                OnPropertyChanged(ref _pre, value);
            }
        }
        private string _Account_Lname;
        public string Account_Lname { get => _Account_Lname; set { _Account_Lname = value; OnPropertyChanged(); } }
        private string _Account_Fname;
        public string Account_Fname { get => _Account_Fname; set { _Account_Fname = value; OnPropertyChanged(); } }
        private string _Account_Email;
        public string Account_Email { get => _Account_Email; set { _Account_Email = value; OnPropertyChanged(); } }

        public ICommand CreatAccount { get; set; }
        public ICommand PasswordChangedCommand { get; set; }
        public SignUp2ViewModel()
        {
            Success = false;
            Account_Fname = "";
            Account_Lname = "";
            Account_Email = "";
            Account_Password = "";
            CreatAccount = new RelayCommand<Page>((p) => { return true; }, (p) => { CreateAccount(p); });
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { Account_Password = p.Password; });
        }
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
        void CreateAccount(Page p)
        {
            if (p == null)
                return;
            /*            Account accounts = new Account();
                        accounts.Account_FName = Account_Fname;
                        accounts.Account_LName = Account_Lname;
                        accounts.Account_Email = Account_Email;
                        accounts.Account_Password = MD5Hash(Base64Encode(Account_Password));*/
            var email = DataProvider.Ins.DB.Accounts.Where(x => x.Account_Email == Account_Email).Count();
            if (email == 0)
            {
                var acc = new Account { Account_FName = Account_Fname, Account_LName = Account_Lname, Account_Type = "User", Account_Email = Account_Email, Account_Password = MD5Hash(Base64Encode(Account_Password)) };
                using (var db = new DB_Digam_NetfixEntities())
                {
                        var account = db.Set<Account>();
                        account.Add(acc);
                        db.SaveChanges();
                }
                p.NavigationService.Navigate(new SignUp3View());
            }
            else
            {
                MessageBox.Show("Email da ton tai");
            }
            
        }
    }
}
