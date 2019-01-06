using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage.RefereePage
{
    public partial class Add : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //表示编辑功能
                if (Request.QueryString["type"] != null)
                {
                    //编号
                    int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                    var referee = Entity.Referee.FirstOrDefault(a => a.Id == id);//获取对象
                    Account.Text = referee.Account;
                    Name.Text = referee.Name;
                    Age.Text = referee.Age;
                    Tel.Text = referee.Tel;
                    Sex.Text = referee.Sex;

                    panel.Visible = false;
                    Account.ReadOnly = true;//账号不允许修改
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //表示编辑功能
            if (Request.QueryString["type"] != null)
            {
                //编号
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                var referee = Entity.Referee.FirstOrDefault(a => a.Id == id);//获取对象
                referee.Name = Name.Text;
                referee.Age = Age.Text;
                referee.Tel = Tel.Text;
                referee.Sex = Sex.Text;
                //保存数据
                Entity.Entry(referee).State = EntityState.Modified;
                Entity.SaveChanges();
                Message("Manage.aspx", "保存成功");
            }
            else
            {
                //判断账号是否存在
                var IsExits = Entity.Referee.FirstOrDefault(a => a.Account == Account.Text);//获取对象
                if (IsExits != null)
                {
                    Message("当前账号已经存在！请更换！");
                    return;
                }
                //表示添加功能
                Referee referee = new Referee();
                referee.Account = Account.Text;
                referee.Name = Name.Text;
                referee.Pwd = Pwd.Text;
                referee.Age = Age.Text;
                referee.Tel = Tel.Text;
                referee.Sex = Sex.Text;
                referee.OperTime = DateTime.Now;

                //插入数据
                Entity.Referee.Add(referee);
                Entity.SaveChanges();
                Message("保存成功");
            }
          
        }
    }
}