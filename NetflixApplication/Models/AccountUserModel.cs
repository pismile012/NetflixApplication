using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetflixApplication.Models
{
    class AccountUserModel
    {
        private int _Customer_ID;
        private string _Customer_FName;
        private string _Customer_LName;
        private string _Customer_EMail;
        private string _Customer_Phone;
        private string _Customer_Address;
        private string _Customer_Account;
        private string _Customer_Status;
        private string _Customer_Password;

        public int Customer_ID
        {
            get
            {
                return _Customer_ID;
            }
            set
            {
                _Customer_ID = value;
            }
        }

        public string Customer_FName
        {
            get
            {
                return _Customer_FName;
            }
            set
            {
                _Customer_FName = value;
            }
        }
        public string Customer_LName
        {
            get
            {
                return _Customer_LName;
            }
            set
            {
                _Customer_LName = value;
            }
        }
        public string Customer_Phone
        {
            get
            {
                return _Customer_Phone;
            }
            set
            {
                _Customer_Phone = value;
            }
        }
        public string Customer_EMail
        {
            get
            {
                return _Customer_EMail;
            }
            set
            {
                _Customer_EMail = value;
            }
        }
        public string Customer_Address
        {
            get
            {
                return _Customer_Address;
            }
            set
            {
                _Customer_Address = value;
            }
        }
        public string Customer_Account
        {
            get
            {
                return _Customer_Account;
            }
            set
            {
                _Customer_Account = value;
            }
        }
        public string Customer_Password
        {
            get
            {
                return _Customer_Password;
            }
            set
            {
                _Customer_Password = value;
            }
        }
        public string Customer_Status
        {
            get
            {
                return _Customer_Status;
            }
            set
            {
                _Customer_Status = value;
            }
        }
    }
}
