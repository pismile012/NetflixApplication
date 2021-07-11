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
using NetflixApplication.Models;
using NetflixApplication.Views;


namespace NetflixApplication.ViewModels
{
    class RentalViewModel:BaseViewModel
    {
        private bool Success { get; set; }
        private string _Account_Email;
        public string Account_Email { get => _Account_Email; set { _Account_Email = value; OnPropertyChanged(); } }
        private bool _value1;
        public bool Value1 { get => _value1; set { _value1 = value;OnPropertyChanged(); } }
        private bool _value2;
        public bool Value2 { get => _value2; set { _value2 = value; OnPropertyChanged(); } }
        private bool _value3;
        public bool Value3 { get => _value3; set { _value3 = value; OnPropertyChanged(); } }
        private int getvalue { get; set; }
        public ICommand RentalCommand { get; set; }
        public ICommand IscheckCommand { get; set; }
        public RentalViewModel()
        {
            Success = false;
            Account_Email = "";
            RentalCommand = new RelayCommand<Page>((p) => { return true; }, (p) => { Ischeck(p); });
        }
        int radiobtCheck(RadioButton rd)
        {
            if (rd.IsChecked == Value1)
            {
                getvalue = 1;
            }
            if (rd.IsChecked == Value2)
            {
                getvalue = 6;
            }
            if (rd.IsChecked == Value3)
            {
                getvalue = 12;
            }
            return getvalue;
        }
        void Ischeck(Page p)
        {
            RadioButton rd = new RadioButton();
            var selectid = DataProvider.Ins.DB.Accounts.Where(x => x.Account_Email == Account_Email).Select(x => x.Account_ID).FirstOrDefault();
            if (p == null)
                return;
            if (radiobtCheck(rd) == 0)
            {
                MessageBox.Show("Vui long chon goi");
            }
            else
            {
                var rentalaccount = new Rental
                {
                    Account_Email = Account_Email,
                    Rental_Day = DateTime.Today,
                    Rental_Return = DateTime.Today.AddMonths(getvalue),
                    Customer_ID = selectid
                };
                using (var db = new DB_Digam_NetfixEntities())
                {
                    var add = db.Set<Rental>();
                    add.Add(rentalaccount);
                    db.SaveChanges();
                }
                MessageBox.Show("Dang ki goi thanh cong");
            }  
        }
        
    }
}
