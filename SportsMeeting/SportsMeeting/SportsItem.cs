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
    
    public partial class SportsItem
    {
        public SportsItem()
        {
            this.SignUp = new HashSet<SignUp>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public Nullable<System.DateTime> FirstTime { get; set; }
        public Nullable<System.DateTime> FinalTime { get; set; }
        public Nullable<System.DateTime> OperTime { get; set; }
        public Nullable<int> RefereeId { get; set; }
    
        public virtual ICollection<SignUp> SignUp { get; set; }
        public virtual Referee Referee { get; set; }
    }
}
