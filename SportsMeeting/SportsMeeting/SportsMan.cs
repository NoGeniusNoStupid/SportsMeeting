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
    
    public partial class SportsMan
    {
        public SportsMan()
        {
            this.SignUp = new HashSet<SignUp>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Age { get; set; }
        public string Sex { get; set; }
        public string Team { get; set; }
        public string Class { get; set; }
        public Nullable<System.DateTime> OperTime { get; set; }
        public string Pwd { get; set; }
        public string Tel { get; set; }
        public string Account { get; set; }
    
        public virtual ICollection<SignUp> SignUp { get; set; }
    }
}
