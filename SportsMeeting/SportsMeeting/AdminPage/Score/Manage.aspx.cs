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
    public partial class Manage : PageBase
    {
        //表示导航条
        public string mPageBar = string.Empty;
        //页面加载
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
            List<SportsItem> list = new List<SportsItem>();

            int listCount = 0;//总记录数
            string strBar = string.Empty ;//导航条
            //裁判权限
            if (Request.QueryString["type"] != null)
            {
                int RefereeId = Convert.ToInt32(Session["RefereeId"]);
                list = Entity.SportsItem.Where(a => a.RefereeId == RefereeId).ToList();
                listCount = list.Count;
                strBar = PageBar.GetPageBarType(pageIndex, listCount, pageSize);
            }
            else
            {
                list = Entity.SportsItem.Where(a =>true).ToList();
                listCount = list.Count;
                strBar = PageBar.GetPageBar(pageIndex, listCount, pageSize);
            }
            //分页查询记录
            if (string.IsNullOrEmpty(SreachWhere.Text))
            {
                list = list.Where(a => true).OrderByDescending(a => a.Id).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            else
            {
                list = list.Where(a => a.Name.Contains(SreachWhere.Text)).OrderByDescending(a => a.Id).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            //生成导航条
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
        /// <summary>
        /// 搜索
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Sreach_Click(object sender, EventArgs e)
        {
            BindData();
        }

        /// <summary>
        /// 发布成绩
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Release_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            string msg  =  CountFinalMan.ReleaseScore(id);
            //不符合条件返回
            if (!string.IsNullOrEmpty(msg))
            {
                Message(msg,false);
            }
            else
            {
                Message("发布成功！");
            }
            //var referee = Entity.Referee.FirstOrDefault(a => a.Id == id);//获取对象
            ////重置密码 
            //referee.Pwd = "123456";
            //Entity.Entry(referee).State = EntityState.Modified;
            //Entity.SaveChanges();
            ////重新绑定
            //BindData();
        }

    }
}