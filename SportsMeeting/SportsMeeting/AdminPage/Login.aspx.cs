using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage
{
    public partial class Login : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //登陆功能实现
        protected void Button1_Click(object sender, EventArgs e)
        {
          
            string name = username.Text;
            string pwd = password.Text;
            if (Power.Text == "管理员")
            {
                //查询数据
                var admin = Entity.Admin.FirstOrDefault(a => a.Name == name && a.Pwd == pwd);
                if (admin == null)
                {
                    Message("用户名或密码错误！");
                    return;
                }
                Session["AdminId"] = admin.Id;
                Session["RefereeId"] = null;
                Response.Redirect("/AdminPage/Index.aspx");
            }
            else
            {
                //查询数据
                var referee = Entity.Referee.FirstOrDefault(a => a.Account == name && a.Pwd == pwd);
                if (referee == null)
                {
                    Message("用户名或密码错误！");
                    return;
                }
                Session["RefereeId"] = referee.Id;
                Session["AdminId"] = null;
                Response.Redirect("/AdminPage/RefereeIndex.aspx");
            }
            
        }
    }
}