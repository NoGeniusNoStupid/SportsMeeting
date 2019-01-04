using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsMeeting
{
    public partial class PageBase : System.Web.UI.Page
    {

        /// <summary>
        /// 数据库操作对象
        /// </summary>
        public SportsMeetingEntities Entity
        {
            get
            {
                return (SportsMeetingEntities)DBContextFactory.CreateDbContext();
            }
        }

        /// <summary>
        /// 仅提示
        /// </summary>
        /// <param name="msg"></param>
        /// <param name="isHistory">返回上一页</param>
        /// <returns></returns>
        protected void Message(string msg, bool isHistory = true, int ros = 1)
        {
            if (ros <= 0)
            {
                Response.Write(@"<script languge='javascript'>alert('操作失败，请检查数据完整性！');</script>");
                return;
            }
            string tip = string.Empty;
            if (isHistory)
                tip = "self.location=document.referrer;";
            string strTip = string.Format(@"<script languge='javascript'>alert('{0}');{1}</script>", msg, tip);
            Response.Write(strTip);
        }
        /// <summary>
        /// 消息提示
        /// </summary>
        /// <param name="url"></param>
        /// <param name="msg"></param>
        /// <param name="ros"></param>
        protected void Message(string url, string msg, bool parent = false, int ros = 1)
        {
            if (ros <= 0)
            {
                Response.Write(@"<script languge='javascript'>alert('操作失败，请检查数据完整性！');</script>");
                return;
            }

            string strTip = string.Empty;
            if (parent)
                strTip = string.Format(@"<script languge='javascript'>alert('{0}');window.parent.location.href='{1}'</script>", msg, url);
            else
                strTip = string.Format(@"<script languge='javascript'>alert('{0}');window.location.href='{1}'</script>", msg, url);
            Response.Write(strTip);
        }
    }
}