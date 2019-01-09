using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.FrontPage
{
    public partial class NewsDetail : PageBase
    {
        public News newsInfo = new News();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                newsInfo = Entity.News.FirstOrDefault(a => a.Id == id);
                //浏览量
                newsInfo.ClickNum += 1;
                Entity.Entry(newsInfo).State = EntityState.Modified;
                Entity.SaveChanges();
            }
        }
    }
}