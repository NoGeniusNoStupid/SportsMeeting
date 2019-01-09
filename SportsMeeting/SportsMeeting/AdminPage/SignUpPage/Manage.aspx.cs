using SportsMeeting.Common;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage.SignUpPage
{
   public partial class Manage : PageBase
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
            List<SignUp> list = new List<SignUp>();
           
            //记录
            int listCount = 0;
            //导航条
            string strBar = string.Empty;
            //判断条件
            if (Request.QueryString["type"] != null)
            {
                list = Entity.SignUp.Where(a => a.State != "待审").ToList();
                //查询记录
                if (string.IsNullOrEmpty(SreachWhere.Text))
                {
                    list = list.Where(a => true).OrderByDescending(a => a.ItemId).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                }
                else
                {
                    list = list.Where(a => a.SportsItem.Name.Contains(SreachWhere.Text) || a.SportsMan.Name.Contains(SreachWhere.Text)).OrderByDescending(a => a.ItemId).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                }
                listCount = Entity.SignUp.Where(a => a.State != "待审").Count();
                strBar = PageBar.GetPageBarType(pageIndex, listCount, pageSize);
            }
            else
            {
                list = Entity.SignUp.Where(a => a.State == "待审").ToList();
                //查询记录
                if (string.IsNullOrEmpty(SreachWhere.Text))
                {
                    list = list.Where(a => true).OrderByDescending(a => a.ItemId).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                }
                else
                {
                    list = list.Where(a => a.SportsItem.Name.Contains(SreachWhere.Text) || a.SportsMan.Name.Contains(SreachWhere.Text)).OrderByDescending(a => a.ItemId).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                }
                listCount = Entity.SignUp.Where(a => a.State == "待审").Count();
                strBar = PageBar.GetPageBar(pageIndex, listCount, pageSize);
            }
            //生成导航条
            mPageBar = strBar;
            this.Repeater1.DataSource = list;
            this.Repeater1.DataBind();
        }

        /// <summary>
        /// /删除记录
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Delete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            var Item = Entity.SignUp.FirstOrDefault(a => a.Id == id);//获取对象
            //删除 
            Entity.Entry(Item).State = EntityState.Deleted;
            Entity.SaveChanges();
            //重新绑定
            BindData();
        }

        /// <summary>
        /// 同意报名
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Agree_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            var Item = Entity.SignUp.FirstOrDefault(a => a.Id == id);//获取对象
            //同意 
            Item.State = "同意";
            Entity.Entry(Item).State = EntityState.Modified;
            Entity.SaveChanges();
            //重新绑定
            BindData();
        }
        /// <summary>
        /// 拒绝报名
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Refuse_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            var Item = Entity.SignUp.FirstOrDefault(a => a.Id == id);//获取对象
            //拒绝 
            Item.State = "拒绝";
            Entity.Entry(Item).State = EntityState.Modified;
            Entity.SaveChanges();
            //重新绑定
            BindData();
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
