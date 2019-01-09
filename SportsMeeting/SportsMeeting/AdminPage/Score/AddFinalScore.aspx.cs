using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage.Score
{
    public partial class AddFinalScore : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                int signId = Convert.ToInt32(Request.QueryString["id"]);
                var signInfo = Entity.SignUp.FirstOrDefault(a => a.Id == signId);

                //判断一下是否决赛结束
                DateTime now = DateTime.Now;
                if (now < signInfo.SportsItem.FinalTime)
                {
                    Message("ItemDetail.aspx?id=" + signInfo.ItemId, "决赛尚未开始！");
                }

                //是否有决赛成绩
                if (!string.IsNullOrEmpty(signInfo.FinalScore))
                {
                    Score.Text = signInfo.FinalScore;
                }
                TextBox1.Text = signInfo.FirstScore;
                Rule.Text = signInfo.SportsItem.Rule;
            }
        }
        //保存成绩
        protected void Button1_Click(object sender, EventArgs e)
        {
            int signId = Convert.ToInt32(Request.QueryString["id"]);
            var signInfo = Entity.SignUp.FirstOrDefault(a => a.Id == signId);
            signInfo.FinalScore = Score.Text;
            Entity.Entry(signInfo);
            Entity.SaveChanges();
            Message("FinalDetail.aspx?&&id=" + signInfo.ItemId, "保存成功！");
           
        }
    }
}