using SportsMeeting.Common;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.FrontPage
{
    public partial class OnlineSignUp : PageBase
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
            int pageSize = 5;//页面记录数
            List<SportsItem> list = new List<SportsItem>();
            //查询记录
            if (string.IsNullOrEmpty(SreachWhere.Text))
            {
                list = Entity.SportsItem.Where(a => true).OrderByDescending(a => a.Id).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            else
            {
                list = Entity.SportsItem.Where(a => a.Name.Contains(SreachWhere.Text)).OrderByDescending(a => a.Id).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            int listCount = Entity.SportsItem.Where(a => true).Count();
            //生成导航条
            string strBar = PageBar.GetFrontPageBar(pageIndex, listCount, pageSize);
            mPageBar = strBar;
            this.Repeater1.DataSource = list;
            this.Repeater1.DataBind();
        }

        /// <summary>
        /// /删除记录
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void SigngUp_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            var Item = Entity.SportsItem.FirstOrDefault(a => a.Id == id);//获取项目对象

            if (Session["ManId"] == null)
            {
                Message("Login.aspx", "尚未登陆，不可进行该操作！");
                return;
            }
            //判断是否过期
            DateTime now = DateTime.Now;
            if (now > Item.FirstTime)
            {
                Message("该项目已经过期，无法报名！", false);
                return;
            }

            //判断是否已经报名
            int manId =Convert.ToInt32(Session["ManId"]);
            var isExist = Entity.SignUp.FirstOrDefault(a => a.ManId == manId && a.ItemId == id);
            if (isExist != null)
            {
                Message("已经报名过此项目，无需重复操作！",false);
                return;
            }
            //添加记录
            SignUp signUp = new SignUp();
            signUp.ItemId = id;
            signUp.ManId = manId;
            signUp.State = "待审";
            signUp.OperTime = DateTime.Now;
            Entity.SignUp.Add(signUp);
            Entity.SaveChanges();
            //重新绑定
            BindData();

            Message("报名成功！", false);
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
    }
}