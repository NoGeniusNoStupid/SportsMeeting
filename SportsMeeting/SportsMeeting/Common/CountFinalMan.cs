

using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;

namespace SportsMeeting.Common
{
   
    public class CountFinalMan
    {
        /// <summary>
        /// 数据库操作对象
        /// </summary>
        public static SportsMeetingEntities Entity
        {
            get
            {
                return (SportsMeetingEntities)DBContextFactory.CreateDbContext();
            }
        }
        /// <summary>
        /// 计算决赛名单
        /// </summary>
        /// <param name="id">项目id</param>
        public static string CountFinal(int id)
        {
            string msg = string.Empty;//表示提示信息

            DateTime now = DateTime.Now;
          
            //初赛成绩排名
            var itemInfo = Entity.SportsItem.FirstOrDefault(a => a.Id == id);

            if (now < itemInfo.FirstTime)
            {
                msg = "初赛尚未开始，无法查看决赛名单！";
                return msg;
            }
            //表示存在有运动员成绩未录入
            var IsEmptySroce = itemInfo.SignUp.FirstOrDefault(a => string.IsNullOrEmpty(a.FirstScore));
            if (IsEmptySroce != null)
            {
                msg =IsEmptySroce.SportsMan.Name+"初赛成绩尚未录入，请完善后，再查看决赛名单！";
                return msg;
            }
            if (itemInfo.State == "决赛完成")
            {
                return msg;
            }
            List<SignUp> signUpList = new List<SignUp>();
            //时间和距离和分数
            if (itemInfo.Rule == "时间")
            {
                signUpList = itemInfo.SignUp.OrderBy(a => a.FirstScore).ToList();//排序成功
            }
            else
            {
                signUpList = itemInfo.SignUp.OrderByDescending(a => a.FirstScore).ToList();//排序成功
            }
            int rank = 1;
            foreach (var item in signUpList)
            {
                item.RanK = rank;
              
                if (signUpList.Count <= 6)
                {
                    item.IsFinal = "是";
                }
                else
                {
                    if (rank <= 6)
                    {
                        item.IsFinal = "是";
                    }
                    else
                    {
                        item.IsFinal = "否";
                    }
                }
                rank++;
                Entity.Entry(item).State = EntityState.Modified;
            }
            itemInfo.State = "初赛完成";
            Entity.Entry(itemInfo).State = EntityState.Modified;
            //表示保存
            Entity.SaveChanges();
            return msg;
        }
        /// <summary>
        /// 发布决赛成绩
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static string ReleaseScore(int id)
        {
            string msg = string.Empty;//表示提示信息

            DateTime now = DateTime.Now;

            //初赛成绩排名
            var itemInfo = Entity.SportsItem.FirstOrDefault(a => a.Id == id);
            if (now < itemInfo.FinalTime)
            {
                msg = "决赛尚未开始，无法发布成绩！";
                return msg;
            }
            //表示存在有运动员成绩未录入
            var IsEmptySroce = itemInfo.SignUp.FirstOrDefault(a => string.IsNullOrEmpty(a.FinalScore));
            if (IsEmptySroce != null)
            {
                msg = IsEmptySroce.SportsMan.Name + "决赛成绩尚未录入，请完善后，再发布成绩！";
                return msg;
            }

            if (itemInfo.State != "初赛完成" && itemInfo.State != "决赛完成")
            {
                msg = "初赛成绩尚未统计，请先查看决赛名单，录入决赛成绩！";
                return msg;
            }
            List<SignUp> signUpList = new List<SignUp>();
            //时间和距离和分数
            if (itemInfo.Rule == "时间")
            {
                signUpList = itemInfo.SignUp.OrderBy(a => a.FinalScore).ToList();//排序成功
            }
            else
            {
                signUpList = itemInfo.SignUp.OrderByDescending(a => a.FinalScore).ToList();//排序成功
            }
            int rank = 1;
            foreach (var item in signUpList)
            {
                item.FinalRanK = rank;
                rank++;
                Entity.Entry(item).State = EntityState.Modified;
            }
            itemInfo.State = "决赛完成";
            Entity.Entry(itemInfo).State = EntityState.Modified;
            //表示保存
            Entity.SaveChanges();
            return msg;
        }

      
    }
}
