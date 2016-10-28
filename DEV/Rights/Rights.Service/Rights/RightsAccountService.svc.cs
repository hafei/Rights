﻿using Rights.Entity.Common;
using Rights.Entity.Db;
using Rights.Entity.ViewModel;
using Rights.IService.Rights;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Rights.IDao.Rights;
using Rights.DaoFactory;

namespace Rights.Service.Rights
{
    /// <summary>
    /// 登陆相关的服务
    /// </summary>
    public class RightsAccountService : IRightsAccountService
    {
        private static readonly IRightsAccountDao accountDao = Factory.GetRightsAccountDao();

        /// <summary>
        /// 检查登录
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        public ServiceResult<TRightsUser> CheckLogin(CheckLoginRequest request)
        {
            var result = new ServiceResult<TRightsUser> 
            {
                ReturnCode= ReturnCodeType.Error
            };

            var user = accountDao.CheckLogin(request);
            result.ReturnCode = ReturnCodeType.Success;
            result.Content = user;

            return result;
        }

        /// <summary>
        /// 获取指定父菜单下的所有子菜单
        /// </summary>
        /// <param name="userId">用户id</param>
        /// <param name="menuParentId">菜单parentId</param>
        /// <returns></returns>
        public ServiceResult<List<TRightsMenu>> GetAllChildrenMenu(int userId, int menuParentId)
        {
            var result = new ServiceResult<List<TRightsMenu>>
            {
                ReturnCode = ReturnCodeType.Error,
                Content = new List<TRightsMenu>()
            };

            var menus = accountDao.GetAllChildrenMenu(userId, menuParentId);
            result.ReturnCode = ReturnCodeType.Success;
            result.Content = menus;

            return result;
        }

    }
}
