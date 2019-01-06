using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace SportsMeeting.Common
{
    public class ImageUp
    {
        /// <summary>
        /// 保存文件获取路径
        /// </summary>
        /// <param name="fileUpload"></param>
        /// <returns></returns>
        public static  string SaveImage(HttpPostedFile postFile, string savePath)
        {
            string result = "";
            HttpPostedFile imageName = postFile;// 从前台获取文件
            string file = imageName.FileName;
            string fileFormat = file.Split('.')[file.Split('.').Length - 1]; // 以“.”截取，获取“.”后面的文件后缀
            Regex imageFormat = new Regex(@"^(bmp)|(png)|(gif)|(jpg)|(jpeg)"); // 验证文件后缀的表达式（自己写的，不规范别介意哈）
            if (string.IsNullOrEmpty(file) || !imageFormat.IsMatch(fileFormat)) // 验证后缀，判断文件是否是所要上传的格式
            {
                return null;
            }
            else
            {
                //获取存放的路径
                if (!System.IO.Directory.Exists(savePath))
                {
                    //需要注意的是，需要对这个物理路径有足够的权限，否则会报错
                    //另外，这个路径应该是在网站之下，而将网站部署在C盘却把文件保存在D盘
                    System.IO.Directory.CreateDirectory(savePath);
                }

                string timeStamp = DateTime.Now.Ticks.ToString(); // 获取当前时间的string类型
                string firstFileName = timeStamp.Substring(0, timeStamp.Length - 4); // 通过截取获得文件名
                string imageStr = "File/"; // 获取保存图片的项目文件夹

                string uploadPath = savePath; // 将项目路径与文件夹合并
                string pictureFormat = file.Split('.')[file.Split('.').Length - 1];// 设置文件格式
                string fileName = firstFileName + "." + fileFormat;// 设置完整（文件名+文件格式） 
                string saveFile = uploadPath + fileName;//文件路径
                imageName.SaveAs(saveFile);// 保存文件
                // 如果单单是上传，不用保存路径的话，下面这行代码就不需要写了！
                string image = "/File/" + fileName;// 设置数据库保存的路径
                return image;
            }
        }
    }
}