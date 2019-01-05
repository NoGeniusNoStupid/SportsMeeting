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
            //查询数据
            var admin = Entity.Admin.FirstOrDefault(a => a.Name == name && a.Pwd == pwd);
            if (admin == null)
            {
                Message("用户名或密码错误！");
                return;
            }
            Session["ManId"] = admin.Id;

            Response.Redirect("/AdminPage/Index.aspx");
        }
    }
}