using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetflixApplication.Models
{
    class AdminModel
    {
        private int _Admin_ID;
        private string _Admin_FName;
        private string _Admin_LName;
        private string _Admin_EMail;
        private string _Admin_Phone;
        private string _Admin_Address;
        private string _Admin_Account;
        private string _Admin_Password;

        public int Admin_ID
        {
            get
            {
                return _Admin_ID;
            }
            set
            {
                _Admin_ID = value;
            }
        }

        public string Admin_FName
        {
            get
            {
                return _Admin_FName;
            }
            set
            {
                _Admin_FName = value;
            }
        }
        public string Admin_LName
        {
            get
            {
                return _Admin_LName;
            }
            set
            {
                _Admin_LName = value;
            }
        }
        public string Admin_Phone
        {
            get
            {
                return _Admin_Phone;
            }
            set
            {
                _Admin_Phone = value;
            }
        }
        public string Admin_EMail
        {
            get
            {
                return _Admin_EMail;
            }
            set
            {
                _Admin_EMail = value;
            }
        }
        public string Admin_Address
        {
            get
            {
                return _Admin_Address;
            }
            set
            {
                _Admin_Address = value;
            }
        }
        public string Admin_Account
        {
            get
            {
                return _Admin_Account;
            }
            set
            {
                _Admin_Account = value;
            }
        }
        public string Admin_Password
        {
            get
            {
                return _Admin_Password;
            }
            set
            {
                _Admin_Password = value;
            }
        }
    }
}
