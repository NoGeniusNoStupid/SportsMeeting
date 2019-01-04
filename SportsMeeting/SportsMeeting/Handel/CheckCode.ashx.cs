using SportsMeeting.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SportsMeeting.Handel
{
    /// <summary>
    /// CheckCode 的摘要说明
    /// </summary>
    public class CheckCode : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "image/jpeg";
            ValidateCode vliateCode = new ValidateCode();
            string code = vliateCode.CreateValidateCode(4);//产生验证码
            context.Session["validateCode"] = code;
            byte[] buffer = vliateCode.CreateValidateGraphic(code);//将验证码画到画布上.
            context.Response.BinaryWrite(buffer);     
            //ms.
            //File(buffer, "image/jpeg");
            //return  File(buffer, "image/jpeg");
            //context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}