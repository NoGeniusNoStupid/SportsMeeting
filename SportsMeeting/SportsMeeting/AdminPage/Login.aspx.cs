using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //登陆代码
        protected void Button1_Click(object sender, EventArgs e)
        {

            //登陆功能实现


            Response.Redirect("/AdminPage/Index.aspx");
        }
    }
}