using SportsMeeting.Common;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage.NewsPage
{
  

    public partial class Add : PageBase
    {
        public string content = null;
        public string Image = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //表示编辑功能
                if (Request.QueryString["type"] != null)
                {
                    //编号
                    int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                    var news = Entity.News.FirstOrDefault(a => a.Id == id);//获取对象
                    Title.Text = news.Title;
                    Type.Text = news.Type;
                    content = news.Content;
                    Image = news.Image;

                }
            }
        }
        //添加新闻
        protected void Button1_Click(object sender, EventArgs e)
        {
             //表示编辑功能
            if (Request.QueryString["type"] != null)
            { 
                //修改新闻
                int id = Convert.ToInt32(Request.QueryString["id"].ToString()); //编号
                var news = Entity.News.FirstOrDefault(a => a.Id == id);//获取对象
                news.Title = Title.Text;
                news.Type = Type.Text;
                news.Content = Request["editor"];
                //获取图片
                if (Request.Files.Count > 0)
                {
                    string ImagePath = ImageUp.SaveImage(Request.Files["ImagePath"], Server.MapPath("~/File/"));
                    news.Image = ImagePath;
                }
                //保存数据
                Entity.Entry(news).State = EntityState.Modified;
                Entity.SaveChanges();
                Message("Manage.aspx", "保存成功");
            }
            else
            {
                //添加新闻
                News news = new News();
                news.Title = Title.Text;
                news.Type = Type.Text;
                news.Content = Request["editor"];
                news.ClickNum = 0;
                news.OperTime = DateTime.Now;
                //获取图片
                if (Request.Files.Count > 0)
                {
                    string ImagePath = ImageUp.SaveImage(Request.Files["ImagePath"], Server.MapPath("~/File/"));
                    news.Image = ImagePath;
                }

                //插入数据
                Entity.News.Add(news);
                Entity.SaveChanges();
                Message("保存成功");
            }
          

        }


       
    }
}