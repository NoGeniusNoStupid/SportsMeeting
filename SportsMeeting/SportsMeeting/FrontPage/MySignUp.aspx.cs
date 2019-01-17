using SportsMeeting.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.FrontPage
{
    public partial class MySignUp : PageBase
    {
        //表示导航条
        public string mPageBar = string.Empty;

        //实现
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        private void BindData()
        {
            int pageIndex = Request.QueryString["pageIndex"] != null ? int.Parse(Request.QueryString["pageIndex"]) : 1;
            int pageSize = 10;//页面记录数

            int manId = Convert.ToInt32(Session["ManId"]);

            List<SignUp> list = new List<SignUp>();


            int listCount = 0;
            //绑定记录
            if (string.IsNullOrEmpty(SreachWhere.Text))
            {

                list = Entity.SignUp.Where(a => a.ManId == manId).ToList();
                listCount = list.Count;
                list = list.OrderByDescending(a => a.OperTime).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            else
            {
                list = Entity.SignUp.Where(a => a.ManId == manId && a.SportsItem.Name.Contains(SreachWhere.Text)).ToList();
                listCount = list.Count;
                list = list.OrderByDescending(a => a.OperTime).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            string strBar = PageBar.GetPageBarType(pageIndex, listCount, pageSize);

            mPageBar = strBar;


            this.Repeater1.DataSource = list;
            this.Repeater1.DataBind();
        }

        protected void Sreach_Click(object sender, EventArgs e)
        {
            BindData();
        }
    }
}