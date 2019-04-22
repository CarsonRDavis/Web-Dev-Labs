using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections.Generic;

namespace lab05_davis
{
    public class AccountManager
    {
        internal List<Account> accounts = new List<Account>();

        public double TotalBalance()
        {
            double sum = 0;
            foreach (Account acct in accounts)
            {
                sum += acct.Balance;
            }
            return sum;
        }
    }

}