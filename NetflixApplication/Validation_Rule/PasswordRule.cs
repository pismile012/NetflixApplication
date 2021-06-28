using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace NetflixApplication.Validation_Rule
{
    public class PasswordRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            string password = value as string;

            if (password.Length < 6 || password.Length > 30)
            {
                return new ValidationResult(false, "Password should be between 6 and 30 characters");
            }
            return new ValidationResult(true, null);
            throw new NotImplementedException();
        }
    }
}
