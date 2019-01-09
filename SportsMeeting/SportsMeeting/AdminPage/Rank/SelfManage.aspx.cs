using SportsMeeting.Common;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage.Rank
{

    public partial class SelfManage : PageBase
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

            List<SportsMan> list = new List<SportsMan>();
            List<Rank> RankList = new List<Rank>();
           
            list = Entity.SportsMan.Where(a =>true).ToList();
            foreach (var item in list)
            {
                Rank rank = new Rank();
                rank.SportsMan = item;

                if (item.SignUp == null || item.SignUp.Count <= 0)
                {
                    continue;
                }
                rank.FirstNum = item.SignUp.Where(a => a.FinalRanK == 1).Count();
                rank.SecondNum = item.SignUp.Where(a => a.FinalRanK == 2).Count();
                rank.ThirdNum = item.SignUp.Where(a => a.FinalRanK == 3).Count();
                rank.AllNum = rank.FirstNum + rank.SecondNum + rank.ThirdNum;

                RankList.Add(rank);
            }
            int listCount = 0;
            

            //绑定记录
            if (string.IsNullOrEmpty(SreachWhere.Text))
            {
                RankList = RankList.Where(a => true).ToList();
                listCount = RankList.Count;
                RankList = RankList.OrderByDescending(a => a.AllNum).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            else
            {
                RankList = RankList.Where(a => a.SportsMan.Name.Contains(SreachWhere.Text)).ToList();
                listCount = RankList.Count;
                RankList = RankList.OrderByDescending(a => a.AllNum).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            string strBar = PageBar.GetPageBarType(pageIndex, listCount, pageSize);
            mPageBar = strBar;
            this.Repeater1.DataSource = RankList;
            this.Repeater1.DataBind();
        }
        /// <summary>
        /// 分页
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            BindData();
        }

        protected void Sreach_Click(object sender, EventArgs e)
        {
            BindData();
        }

    }
}