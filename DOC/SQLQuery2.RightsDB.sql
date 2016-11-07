﻿USE RightsDB;
GO

--机构
SELECT * FROM dbo.t_rights_organization;

--用户
SELECT * FROM dbo.t_rights_user;

--UPDATE dbo.t_rights_user SET password= 'e10adc3949ba59abbe56e057f20f883e';

--登陆检查
--SELECT u.id, u.user_id AS UserId, u.password, u.user_name AS UserName, u.is_change_pwd AS IsChangePwd, u.enable_flag AS EnableFlag,
--u.created_by AS CreatedBy, u.created_time AS CreatedTime, u.last_updated_by AS LastUpdatedBy, u.last_updated_time AS LastUpdatedTime
--FROM dbo.t_rights_user AS u
--WHERE u.user_id= @UserId AND u.password= @Password;

--用户-机构
SELECT * FROM dbo.t_rights_user_organization;

--角色
SELECT * FROM dbo.t_rights_role;

--用户-角色
SELECT * FROM dbo.t_rights_user_role;

--菜单
SELECT * FROM dbo.t_rights_menu;

--按钮
SELECT * FROM dbo.t_rights_button;

--菜单-按钮
SELECT * FROM dbo.t_rights_menu_button;

--角色-菜单-按钮
SELECT * FROM dbo.t_rights_role_menu_button;

--INSERT INTO dbo.t_rights_role_menu_button
--        ( role_id, menu_id, button_id )
--VALUES  
--( 1,5,2 ),
--( 1,5,3 ),
--( 1,5,4 ),
--( 1,5,11 ),
--( 1,5,12 );

--当前用户可以访问的菜单
SELECT menu.id, menu.name, menu.parent_id AS ParentId, menu.code, menu.url, menu.icon,menu.sort,
menu.created_by AS CreatedBy, menu.created_time AS CreatedTime,
menu.last_updated_by AS LastUpdatedBy, menu.last_updated_time AS LastUpdatedTime,* 
FROM dbo.t_rights_menu AS menu
LEFT JOIN dbo.t_rights_role_menu_button AS roleMenuButton ON menu.id= roleMenuButton.menu_id
LEFT JOIN dbo.t_rights_user_role AS userRole ON roleMenuButton.role_id = userRole.role_id
LEFT JOIN dbo.t_rights_user AS u ON userRole.user_id = u.id
--WHERE u.id= @UserId
WHERE u.id= 4
ORDER BY menu.parent_id, menu.sort;

--查询用户
SELECT u.user_id AS UserId, u.user_name AS UserName, u.is_change_pwd AS IsChangePwd, u.enable_flag AS EnableFlag, u.created_by AS CreatedBy,
u.created_time AS CreatedTime, u.last_updated_by AS LastUpdatedBy, u.last_updated_time AS LastUpdatedTime,* 
FROM dbo.t_rights_user AS u
WHERE u.id= @Id;

UPDATE dbo.t_rights_user SET is_change_pwd= 1, password= @Password, last_updated_by= @LastUpdatedBy, last_updated_time= @LastUpdatedTime WHERE id= @Id;

UPDATE dbo.t_rights_user SET password= 'e10adc3949ba59abbe56e057f20f883e', is_change_pwd= 0 WHERE id= 4;


--我的信息
--帐户信息，角色和所属机构
SELECT u.user_id AS UserId, u.user_name AS UserName, u.created_time AS CreatedTime,* 
FROM dbo.t_rights_user AS u
LEFT JOIN dbo.t_rights_user_organization AS userOrg ON u.id= userOrg.user_id
LEFT JOIN dbo.t_rights_organization AS org ON userOrg.organization_id= org.id
LEFT JOIN dbo.t_rights_user_role AS userRole ON u.id= userRole.user_id
LEFT JOIN dbo.t_rights_role AS r ON userRole.role_id= r.id
WHERE u.id= @Id;

--获取当前用户当前页面可以访问的按钮列表
SELECT * FROM dbo.t_rights_button AS button
LEFT JOIN dbo.t_rights_role_menu_button AS roleMenuButton ON button.id= roleMenuButton.button_id
LEFT JOIN dbo.t_rights_menu AS menu ON roleMenuButton.menu_id= menu.id
LEFT JOIN dbo.t_rights_user_role AS userRole ON userRole.role_id= roleMenuButton.role_id
LEFT JOIN dbo.t_rights_user AS u ON u.id= userRole.user_id
--WHERE u.id= @UserId AND menu.code= @MenuCode;
WHERE u.id= 4 AND menu.code= 'organization';

--获取指定机构的所有子机构
SELECT org.parent_id AS ParentId,org.organization_type AS OrganizationType, org.enable_flag AS EnableFlag,
org.created_by AS CreatedBy, org.created_time AS CreatedTime, org.last_updated_by AS LastUpdatedBy, org.last_updated_time AS LastUpdatedTime,* 
FROM dbo.t_rights_organization AS org
WHERE org.enable_flag= 1 AND org.parent_id= @ParentId;

--修改机构
UPDATE dbo.t_rights_organization SET name= @OrgName, parent_id= @ParentId, sort= @Sort, last_updated_by= @LastUpdatedBy, last_updated_time= @LastUpdatedTime WHERE id= @Id;


