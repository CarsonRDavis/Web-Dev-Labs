using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections.Generic;

namespace lab06_davis
{
    public class Person
    {
        public Person(string name)
        {
            Name = name;
            Dogs = new List<Dog>();
        }

        public string Name
        {
            get; set;
        }

        public List<Dog> Dogs
        {
            get;
        }

    }
}