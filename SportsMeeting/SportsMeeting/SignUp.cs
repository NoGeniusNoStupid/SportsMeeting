//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace SportsMeeting
{
    using System;
    using System.Collections.Generic;
    
    public partial class SignUp
    {
        public int Id { get; set; }
        public Nullable<int> ItemId { get; set; }
        public Nullable<int> ManId { get; set; }
        public string FirstScore { get; set; }
        public string FinalScore { get; set; }
        public Nullable<System.DateTime> OperTime { get; set; }
    
        public virtual SportsItem SportsItem { get; set; }
        public virtual SportsMan SportsMan { get; set; }
    }
}