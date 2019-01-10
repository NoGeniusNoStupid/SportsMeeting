using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage
{
    public partial class Index : PageBase
    {

        public Admin pageModel = new Admin();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminId"] == null)
            {
                Message("Login.aspx", "尚未登陆，不可进行该操作！");
                return;
            }
            int AdminId=Convert.ToInt32(Session["AdminId"]);
            pageModel = Entity.Admin.FirstOrDefault(a => a.Id == AdminId);
        }
    }
}