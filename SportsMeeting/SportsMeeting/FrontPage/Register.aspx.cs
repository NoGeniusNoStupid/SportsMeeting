using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.FrontPage
{
    public partial class Register : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //注册
        protected void Button1_Click(object sender, EventArgs e)
        {

            //密码长度
            if (Pwd.Text.Length<6)
            {
                Message("密码不能小于6位", false);
                return;
            }
            //手机号码
            if (Tel.Text.Length != 11)
            {
                Message("手机号码输入不正确", false);
                return;
            }
            //密码是否一致
            if (Pwd.Text != SurePwd.Text)
            {
                Message("两次输入密码不一致",false);
                return;
            }          
            //账号是否存在
            var IsExits = Entity.SportsMan.FirstOrDefault(a => a.Account == Account.Text);//获取对象
            if (IsExits != null)
            {
                Message("当前账号已经存在！请更换！", false);
                return;
            }
            SportsMan sportsMan = new SportsMan();
            sportsMan.Account = Account.Text;
            sportsMan.Name = Name.Text;
            sportsMan.Pwd = Pwd.Text;
            sportsMan.Age = Age.Text;
            sportsMan.Tel = Tel.Text;
            sportsMan.Sex = Sex.Text;
            sportsMan.Class = Class.Text;
            sportsMan.OperTime = DateTime.Now;
            sportsMan.State = "正常";
            //插入数据
            Entity.SportsMan.Add(sportsMan);
            Entity.SaveChanges();
            Session["ManId"] = sportsMan.Id;
            Message("Default.aspx","保存成功");//跳转
        }
    }
}