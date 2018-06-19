using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2.Models
{
    public class Login
    {
        public string UserName
        {
            get;
            set;
        }
        public string PassWord
        {
            get;
            set;
        }
        public string Email
        {
            get;
            set;
        }
        public bool Enable
        {
            get;
            set;
        }

    }
}