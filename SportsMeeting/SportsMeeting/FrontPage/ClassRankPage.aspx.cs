using SportsMeeting.AdminPage.Rank;
using SportsMeeting.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.FrontPage
{

    public partial class ClassRankPage : PageBase
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

            var className = Entity.SportsMan.GroupBy(a => a.Class).ToList();
            List<ClassRank> classRankList = new List<ClassRank>();
            foreach (var item in className)
            {

                ClassRank classRank = new ClassRank();
                classRank.ClassName = item.Key;
                var list = Entity.SignUp.Where(a => a.SportsMan.Class == item.Key);
                classRank.FirstNum = list.Where(a => a.FinalRanK == 1).Count();
                classRank.SecondNum = list.Where(a => a.FinalRanK == 1).Count();
                classRank.ThirdNum = list.Where(a => a.FinalRanK == 3).Count();
                classRank.AllNum = classRank.FirstNum + classRank.SecondNum + classRank.ThirdNum;
                classRankList.Add(classRank);
            }
            int listCount = 0;

            //绑定记录
            if (string.IsNullOrEmpty(SreachWhere.Text))
            {
                classRankList = classRankList.Where(a => true).ToList();
                listCount = classRankList.Count;
                classRankList = classRankList.OrderByDescending(a => a.AllNum).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            else
            {
                classRankList = classRankList.Where(a => a.ClassName.Contains(SreachWhere.Text)).ToList();
                listCount = classRankList.Count;
                classRankList = classRankList.OrderByDescending(a => a.AllNum).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            string strBar = PageBar.GetPageBarType(pageIndex, listCount, pageSize);
            mPageBar = strBar;

            this.Repeater1.DataSource = classRankList;
            this.Repeater1.DataBind();
        }
        

        protected void Sreach_Click(object sender, EventArgs e)
        {
            BindData();
        }

    }
}