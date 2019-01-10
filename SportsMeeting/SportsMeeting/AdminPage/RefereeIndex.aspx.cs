using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage
{
    public partial class RefereeIndex : PageBase
    {

        public Referee pageModel = new Referee();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["RefereeId"] == null)
            {
                Message("Login.aspx", "尚未登陆，不可进行该操作！");
                return;
            }
            int RefereeId = Convert.ToInt32(Session["RefereeId"]);
            pageModel = Entity.Referee.FirstOrDefault(a => a.Id == RefereeId);
        }
    }
}