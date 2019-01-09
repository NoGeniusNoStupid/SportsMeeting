using SportsMeeting.Common;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage.Score
{
    

    public partial class FinalManage : PageBase
    {
        //表示导航条
        public string mPageBar = string.Empty;

        //实现
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                int itemId = Convert.ToInt32(Request.QueryString["id"]); //获取当前项目Id
                string msg = CountFinalMan.CountFinal(itemId);//计算决赛名单
                //不符合条件返回
                if (!string.IsNullOrEmpty(msg))
                {
                    Message(msg);
                    return;
                }
                BindData();
            }
        }

        private void BindData()
        {
            int itemId = Convert.ToInt32(Request.QueryString["id"]); //获取当前项目Id

            int pageIndex = Request.QueryString["pageIndex"] != null ? int.Parse(Request.QueryString["pageIndex"]) : 1;
            int pageSize = 10;//页面记录数
            List<SignUp> list = new List<SignUp>();
            //查询记录
            if (string.IsNullOrEmpty(SreachWhere.Text))
            {
                list = Entity.SignUp.Where(a => a.ItemId == itemId && a.State == "同意"&&a.IsFinal=="是").OrderBy(a =>a.RanK).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            else
            {
                list = Entity.SignUp.Where(a => a.ItemId == itemId && a.State == "同意" && a.IsFinal == "是" && a.SportsMan.Name.Contains(SreachWhere.Text) || a.SportsMan.Class.Contains(SreachWhere.Text)).OrderBy(a => a.RanK).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }

            int listCount = Entity.SignUp.Where(a => a.ItemId == itemId && a.IsFinal == "是").Count();
            //生成导航条
            string strBar = PageBar.GetPageBar(pageIndex, listCount, pageSize);
            mPageBar = strBar;
            this.Repeater1.DataSource = list;
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