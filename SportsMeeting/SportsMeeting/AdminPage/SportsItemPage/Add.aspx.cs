using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage.SportsItemPage
{
    public partial class Add : PageBase
    {

        //开始时间
        public string FirstTime;
        //结束时间
        public string FinalTime;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //获取教练名称
                var list = Entity.Referee.Where(a => true).ToList();
                foreach (var item in list)
                {
                    ListItem listItem = new ListItem();
                    listItem.Value = item.Id.ToString();
                    listItem.Text = item.Name;
                    RefereeId.Items.Add(listItem);
                }

                //表示编辑功能
                if (Request.QueryString["type"] != null)
                {

                    int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                    var sportsItem = Entity.SportsItem.FirstOrDefault(a => a.Id == id);//获取对象
                    Name.Text = sportsItem.Name;
                    Type.Text = sportsItem.Type;
                    RefereeId.SelectedValue = sportsItem.RefereeId.ToString();
                    FirstTime = Convert.ToDateTime(sportsItem.FirstTime).ToString("yyyy-MM-ddTHH:mm:ss");
                    FinalTime = Convert.ToDateTime(sportsItem.FinalTime).ToString("yyyy-MM-ddTHH:mm:ss");
                }
            }
        }
        //保存
        protected void Button1_Click(object sender, EventArgs e)
        {
            //表示编辑功能
            if (Request.QueryString["type"] != null)
            {
                //编号
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                var sportsItem = Entity.SportsItem.FirstOrDefault(a => a.Id == id);//获取对象
                sportsItem.Name = Name.Text;
                sportsItem.Type = Type.Text;
                sportsItem.RefereeId = Convert.ToInt32(RefereeId.Text);
                sportsItem.FirstTime = Convert.ToDateTime(Request["FirstTime"]);
                sportsItem.FinalTime = Convert.ToDateTime(Request["FinalTime"]);
                //保存数据
                Entity.Entry(sportsItem).State = EntityState.Modified;
                Entity.SaveChanges();
                Message("Manage.aspx", "保存成功");
            }
            else
            {
                //表示添加功能
                SportsItem sportsItem = new SportsItem();
                sportsItem.Name = Name.Text;
                sportsItem.Type = Type.Text;
                sportsItem.RefereeId = Convert.ToInt32(RefereeId.Text);
                sportsItem.FirstTime = Convert.ToDateTime(Request["FirstTime"]);
                sportsItem.FinalTime = Convert.ToDateTime(Request["FinalTime"]);
                sportsItem.OperTime = DateTime.Now;

                //插入数据
                Entity.SportsItem.Add(sportsItem);
                Entity.SaveChanges();
                Message("保存成功");
            }
        }
    }
}