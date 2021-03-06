USE [RightsDB]
GO
/****** Object:  Table [dbo].[t_rights_user_role]    Script Date: 10/26/2016 18:02:40 ******/
/****** Object:  Table [dbo].[t_rights_user_organization]    Script Date: 10/26/2016 18:02:40 ******/
SET IDENTITY_INSERT [dbo].[t_rights_user_organization] ON
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (1, 1, 1)
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (2, 2, 4)
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (3, 3, 5)
SET IDENTITY_INSERT [dbo].[t_rights_user_organization] OFF
/****** Object:  Table [dbo].[t_rights_user]    Script Date: 10/26/2016 18:02:40 ******/
SET IDENTITY_INSERT [dbo].[t_rights_user] ON
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (1, N'admin', N'123456', N'系统管理员', 0, 1, 1, CAST(0x0000A6AB00A00410 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (2, N'luning', N'123456', N'鲁宁', 0, 1, 1, CAST(0x0000A6AB00A00410 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (3, N'mcgrady', N'123456', N'麦迪', 0, 1, 1, CAST(0x0000A6AB00A00410 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_rights_user] OFF
/****** Object:  Table [dbo].[t_rights_role_menu_button]    Script Date: 10/26/2016 18:02:40 ******/
/****** Object:  Table [dbo].[t_rights_role]    Script Date: 10/26/2016 18:02:40 ******/
/****** Object:  Table [dbo].[t_rights_organization]    Script Date: 10/26/2016 18:02:40 ******/
SET IDENTITY_INSERT [dbo].[t_rights_organization] ON
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (1, N'优行商旅航空服务有限公司', 0, N'01', 0, 1, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (2, N'总经办', 1, N'01.01', 0, 1, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (3, N'人事财务IT', 1, N'01.02', 0, 2, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (4, N'研发中心', 1, N'01.03', 0, 3, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (5, N'研发部', 4, N'01.03.01', 0, 1, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (6, N'用户体验部', 4, N'01.03.02', 0, 2, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (7, N'需求部', 4, N'01.03.03', 0, 3, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (8, N'客户服务中心', 1, N'01.04', 0, 4, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (9, N'呼叫顾问组', 8, N'01.04.01', 0, 1, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (10, N'客户经理', 8, N'01.04.02', 0, 2, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (11, N'在线顾问组', 8, N'01.04.03', 0, 3, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (12, N'运营中心', 1, N'01.05', 0, 5, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (13, N'国内机票组', 12, N'01.05.01', 0, 1, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (14, N'酒店高铁组', 12, N'01.05.02', 0, 2, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (15, N'特殊订单保障组', 12, N'01.05.03', 0, 3, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (16, N'国际票务中心', 1, N'01.06', 0, 6, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (17, N'营销中心', 1, N'01.07', 0, 7, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (18, N'深圳营销中心', 17, N'01.07.01', 0, 1, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (19, N'上海营销中心', 17, N'01.07.02', 0, 2, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (20, N'北京营销中心', 17, N'01.07.03', 0, 3, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (21, N'海南营销中心', 17, N'01.07.04', 0, 4, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (22, N'杭州营销中心', 17, N'01.07.05', 0, 5, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_rights_organization] OFF
/****** Object:  Table [dbo].[t_rights_menu_button]    Script Date: 10/26/2016 18:02:40 ******/
/****** Object:  Table [dbo].[t_rights_menu]    Script Date: 10/26/2016 18:02:40 ******/
/****** Object:  Table [dbo].[t_rights_button]    Script Date: 10/26/2016 18:02:40 ******/
