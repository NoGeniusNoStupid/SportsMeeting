﻿using SportsMeeting.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.FrontPage
{
    public partial class SportItemDetail : PageBase
    {
        //表示导航条
        public string mPageBar = string.Empty;

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
            int ItemId = Convert.ToInt32(Request.QueryString["id"]);
            int pageSize = 5;//页面记录数
            List<SignUp> list = new List<SignUp>();

            int listCount = 0;
            //查询记录
            if (string.IsNullOrEmpty(SreachWhere.Text))
            {
                list = Entity.SignUp.Where(a => a.ItemId == ItemId).ToList();
                listCount = list.Count;
                list=list.OrderByDescending(a => a.Id).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
            else
            {
                list = Entity.SignUp.Where(a => a.SportsMan.Name.Contains(SreachWhere.Text) && a.ItemId == ItemId).ToList();
                listCount = list.Count;
                list = list.OrderByDescending(a => a.Id).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            }
          
            //生成导航条
            string strBar = PageBar.GetFrontPageBar(pageIndex, listCount, pageSize);
            mPageBar = strBar;


            this.Repeater1.DataSource = list;
            this.Repeater1.DataBind();
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