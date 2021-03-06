﻿using System;
using Wicresoft.BusinessObject;

namespace BusinessView
{
    /// <summary>
    /// 村务信息
    /// </summary>
    public class CWInfoDefaultView : BusinessObjectView
    {
        public CWInfoDefaultView()
            : base("CWInfo", "村务信息")
        {
            ViewItemCollection vic = new ViewItemCollection();
            //vic.Add(new ViewItem("Location", "地理位置", true));
            //vic.Add(new ViewItem("District", "所属行政区", true,""));
            //vic.Add(new ViewItem("TotalPeps", "总人数", true));
            //vic.Add(new ViewItem("IndusValue", "工业总产值", true));
            vic.Add(new ViewItem("VillageChief", "村长", true));

            this.PKField = new ViewItem("PKID", "PKID");

            /// <summary>
            /// GridPicker控件用于显示的字段请根据实际情况修改
            /// </summary>
            this.DisplayField = new ViewItem("VillageName", "村名称", true);
            this.VisibleColumnCollection = vic;
        }

        public override int LoadData(int pageNumber, int pageSize)
        {
            int totalCount = 0;
            BusinessRule.JHSY.CWInfo rule = new BusinessRule.JHSY.CWInfo();
            this.tblSchema = rule.GetCWInfoList(out totalCount, pageSize, pageNumber, BusinessRule.Common.OrderByType.ASC, this.CurrentFilter);

            return totalCount;
        }
    }
}
