using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.FrontPage
{
    public partial class Login : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //登陆
        protected void Button1_Click(object sender, EventArgs e)
        {
            var IsExits = Entity.SportsMan.FirstOrDefault(a => a.Account == Account.Text);//获取对象

            if (IsExits == null)
            {
                Message("该账号不存在", false);
                return;
            }
            if(IsExits.Pwd!=Pwd.Text)
            {
                Message("用户名或者密码错误", false);
                return;
            }
            Session["ManId"] = IsExits.Id;
            Message("Default.aspx", "登陆成功");//跳转
        }
    }
}