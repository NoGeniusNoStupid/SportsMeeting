﻿

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SportsMeeting.AdminPage.Rank
{
    public class Rank
    {
        //第一次次数
        public int FirstNum { get; set; }
        //第二次数
        public int SecondNum { get; set; }
        //第三次数
        public int ThirdNum { get; set; }
        //奖牌总数
        public int AllNum { get; set; }

        public SportsMan SportsMan { get; set; }
    }
}
