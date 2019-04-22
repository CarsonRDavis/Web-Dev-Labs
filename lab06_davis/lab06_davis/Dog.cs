using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace lab06_davis
{
    public class Dog
    {
        public Dog(string name, int age)
        {
            Name = name;
            Age = age;
        }

        public int Age
        {
            get; set;
        }

        public String Name
        {
            get; set;
        }

        public string Bark(int numTimes)
        {
            string msg = "";
            for (int i = 0; i < numTimes; i++) msg += "bark ";
            return msg;
        }

    }
}