﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SchoolManagementSystemTask
{
    public class Students
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Class { get; set; }
        public string Division { get; set; }
        public string Address { get; set; }
        public string EducationalStatus { get; set; }
        public int TeacherId { get; set; }
    }
}