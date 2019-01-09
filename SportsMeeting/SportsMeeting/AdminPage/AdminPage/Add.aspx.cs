using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting.AdminPage.AdminPage
{
    public partial class Add : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //添加
        protected void Button1_Click(object sender, EventArgs e)
        {      
            //判断账号是否存在
            var IsExits = Entity.Admin.FirstOrDefault(a => a.Name == Account.Text);//获取对象
            if (IsExits != null)
            {
                Message("当前账号已经存在！请更换！");
                return;
            }
            //表示添加功能
            Admin admin = new Admin();

            admin.Name = Account.Text;
            admin.Pwd = Pwd.Text;
            admin.OperTime = DateTime.Now;

            //插入数据
            Entity.Admin.Add(admin);
            Entity.SaveChanges();
            Message("Manage.aspx","保存成功");
        }
    }
}