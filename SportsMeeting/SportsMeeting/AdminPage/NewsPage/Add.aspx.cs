using SportsMeeting.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage.NewsPage
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //添加新闻
        protected void Button1_Click(object sender, EventArgs e)
        {
             //表示编辑功能
            if (Request.QueryString["type"] != null)
            { }
            else
            {
                //添加新闻

                //获取图片
                if (Request.Files.Count > 0)
                {
                    string ImagePath = ImageUp.SaveImage(Request.Files["ImagePath"], Server.MapPath("~/File/"));
                }
            }
          

        }


       
    }
}