﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SportsMeetingEntities : DbContext
    {
        public SportsMeetingEntities()
            : base("name=SportsMeetingEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Admin> Admin { get; set; }
        public virtual DbSet<News> News { get; set; }
        public virtual DbSet<Referee> Referee { get; set; }
        public virtual DbSet<SignUp> SignUp { get; set; }
        public virtual DbSet<SportsItem> SportsItem { get; set; }
        public virtual DbSet<SportsMan> SportsMan { get; set; }
    }
}
