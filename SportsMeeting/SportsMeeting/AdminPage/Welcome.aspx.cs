using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage
{
    public partial class welcome : PageBase
    {

        public DateTime date = DateTime.Now;

        public Admin pageModel = new Admin();

        public int RefereeNum;
        public int SignUpNum;
        public int SportsItemNum;
        public int SportsManNum;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminId"] == null)
            {
                Message("Login.aspx", "尚未登陆，不可进行该操作！");
                return;
            }
            int AdminId = Convert.ToInt32(Session["AdminId"]);
            pageModel = Entity.Admin.FirstOrDefault(a => a.Id == AdminId);


            RefereeNum = Entity.Referee.Where(a=>true).Count();
            SignUpNum = Entity.SignUp.Where(a => true).Count();
            SportsItemNum = Entity.SportsItem.Where(a => true).Count();
            SportsManNum = Entity.SportsMan.Where(a => true).Count(); 
        }
    }
}