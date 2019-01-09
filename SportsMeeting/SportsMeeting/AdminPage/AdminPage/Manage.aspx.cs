using SportsMeeting.Common;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage.AdminPage
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
            int pageSize = 5;//页面记录数
            List<Admin> list = new List<Admin>();

            int listCount = 0;

            //查询记录
            if (string.IsNullOrEmpty(SreachWhere.Text))
            {
                list = Entity.Admin.Where(a => true).ToList();
                listCount = list.Count;
                list = list.OrderByDescending(a => a.Id).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            else
            {
                list = Entity.Admin.Where(a => a.Name.Contains(SreachWhere.Text)).ToList();
                listCount = list.Count;
                list = list.OrderByDescending(a => a.Id).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            //生成导航条
            string strBar = PageBar.GetPageBar(pageIndex, listCount, pageSize);
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
            var admin = Entity.Admin.FirstOrDefault(a => a.Id == id);//获取对象
            //删除 
            Entity.Entry(admin).State = EntityState.Deleted;
            Entity.SaveChanges();
            //重新绑定
            BindData();

        }
        /// <summary>
        /// 重置密码
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ReInit_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            var admin = Entity.Admin.FirstOrDefault(a => a.Id == id);//获取对象
            //重置密码 
            admin.Pwd = "123456";
            Entity.Entry(admin).State = EntityState.Modified;
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