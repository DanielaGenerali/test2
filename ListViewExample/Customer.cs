using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ListViewExample
{
    public class Customer
    {
        public string CustomerName
        {
            get;
            set;
        }
        public string Email
        {
            get;
            set;
        }
        public string Website
        {
            get;
            set;
        }
        public List<Address> Address
        {
            get;
            set;
        }
    }
}