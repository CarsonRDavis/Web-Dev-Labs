using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace lab05_davis
{
    public class Account
    {
        // Field
        private double balance;

        // Constructor
        public Account(int id, string name, double balance)
        {
            ID = id;
            Name = name;
            Balance = balance;
        }
        // Properties
        public int ID { get; }
        public string Name { get; }

        public double Balance
        {
            get { return balance; }
            set
            {
                if (value >= 0.0)
                    balance = value;
                else
                    balance = 0.0;
            }
        }

        public override string ToString()
        {
            string msg = String.Format("ID:{0}, Name:{1}, Balance:{2:C}", ID, Name, Balance);
            return msg;
        }
    }

}