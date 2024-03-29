﻿namespace XCLCMS.View.AdminViewModel.Merchant
{
    public class MerchantAddVM
    {
        /// <summary>
        /// 表单action
        /// </summary>
        public string FormAction { get; set; }

        /// <summary>
        /// 商户model
        /// </summary>
        public XCLCMS.Data.Model.Merchant Merchant { get; set; }

        /// <summary>
        /// 商户类型select的option
        /// </summary>
        public string MerchantTypeOptions { get; set; }

        /// <summary>
        /// 证件类型select的option
        /// </summary>
        public string PassTypeOptions { get; set; }

        /// <summary>
        /// 商户状态select的options
        /// </summary>
        public string MerchantStateOptions { get; set; }
    }
}