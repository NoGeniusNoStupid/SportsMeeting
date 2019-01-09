using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage.AdminPage
{
    public partial class UpdatePwd : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //修改密码
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["type"] != null)
            {
                 //表示教练
                int RefereeId = Convert.ToInt32(Session["RefereeId"]);
                var IsExits = Entity.Referee.FirstOrDefault(a => a.Id == RefereeId && a.Pwd == OldPwd.Text);//获取对象
                //原密码是否正确
                if (IsExits == null)
                {
                    Message("原密码错误");
                    return;
                }
                IsExits.Pwd = Pwd.Text;
                Entity.Entry(IsExits).State = EntityState.Modified;
                Entity.SaveChanges();
                Message("密码修改成功！");
            }
            else
            {
                //表示管理员
                int id = Convert.ToInt32(Session["AdminId"]);
                var IsExits = Entity.Admin.FirstOrDefault(a => a.Id == id && a.Pwd == OldPwd.Text);//获取对象
                //原密码是否正确
                if (IsExits == null)
                {
                    Message("原密码错误");
                    return;
                }
                IsExits.Pwd = Pwd.Text;
                Entity.Entry(IsExits).State = EntityState.Modified;
                Entity.SaveChanges();
                Message("密码修改成功！");
            }
        }
    }
}