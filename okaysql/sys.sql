prompt PL/SQL Developer import file
prompt Created on 2018年1月18日 by 唠叨
set feedback off
set define off
prompt Disabling triggers for INTERMEDIATE_SUPPLIER...
alter table INTERMEDIATE_SUPPLIER disable all triggers;
prompt Disabling triggers for SYS_AUTHORITY...
alter table SYS_AUTHORITY disable all triggers;
prompt Disabling triggers for SYS_COMPANY...
alter table SYS_COMPANY disable all triggers;
prompt Disabling triggers for SYS_DICTIONARY...
alter table SYS_DICTIONARY disable all triggers;
prompt Disabling triggers for SYS_FILE_INFO...
alter table SYS_FILE_INFO disable all triggers;
prompt Disabling triggers for SYS_FLOWSET_DETAIL...
alter table SYS_FLOWSET_DETAIL disable all triggers;
prompt Disabling triggers for SYS_FLOWSET_HEAD...
alter table SYS_FLOWSET_HEAD disable all triggers;
prompt Disabling triggers for SYS_LOG...
alter table SYS_LOG disable all triggers;
prompt Disabling triggers for SYS_ROLE...
alter table SYS_ROLE disable all triggers;
prompt Disabling triggers for SYS_ROLE_AUTHORITY...
alter table SYS_ROLE_AUTHORITY disable all triggers;
prompt Deleting SYS_ROLE_AUTHORITY...
delete from SYS_ROLE_AUTHORITY;
commit;
prompt Deleting SYS_ROLE...
delete from SYS_ROLE;
commit;
prompt Deleting SYS_LOG...
delete from SYS_LOG;
commit;
prompt Deleting SYS_FLOWSET_HEAD...
delete from SYS_FLOWSET_HEAD;
commit;
prompt Deleting SYS_FLOWSET_DETAIL...
delete from SYS_FLOWSET_DETAIL;
commit;
prompt Deleting SYS_FILE_INFO...
delete from SYS_FILE_INFO;
commit;
prompt Deleting SYS_DICTIONARY...
delete from SYS_DICTIONARY;
commit;
prompt Deleting SYS_COMPANY...
delete from SYS_COMPANY;
commit;
prompt Deleting SYS_AUTHORITY...
delete from SYS_AUTHORITY;
commit;
prompt Deleting INTERMEDIATE_SUPPLIER...
delete from INTERMEDIATE_SUPPLIER;
commit;
prompt Loading INTERMEDIATE_SUPPLIER...
insert into INTERMEDIATE_SUPPLIER (supplier_type, state, brief_introduction, temp_id, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, id, year, score, supplier_no, bank_account_number)
values ('伙伴型供应商', '可使用', null, '0729b554194f40a49ed12313a1f95b98', '石鑫供应商', null, '天津', '天津天信大厦', null, '110@110.com', '石鑫', '测试人员', '13111111111', null, null, null, '招商银行', '110               ', null, null, null, null, '07f8912c03c048388cafdf18981d550d', null, null, 'QSNO000007', '1233333333333');
insert into INTERMEDIATE_SUPPLIER (supplier_type, state, brief_introduction, temp_id, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, id, year, score, supplier_no, bank_account_number)
values ('伙伴型供应商', '可使用', 'asd', 'c30228614d0e418192c9f2031a5e242f', '11111112sdfsd电风扇', '说的', '山西', '阿萨德', null, '243310214@qq.com', '阿萨德', '水电费', '13111111111', null, null, null, '水电费', '2222              ', null, null, null, 'asd', 'c62633198a704daba27700a05bd599f2', null, null, 'QSNO000008', '222');
insert into INTERMEDIATE_SUPPLIER (supplier_type, state, brief_introduction, temp_id, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, id, year, score, supplier_no, bank_account_number)
values ('伙伴型供应商', '可使用', 'asd', '65d39d3f988b4618be16f6f00f9743d5', '11111112sdfsd电', '说的', '山西', '阿萨德', null, '243310214@qq.com', '阿萨德', '水电费', '13111111111', null, null, null, '水电费', '2222              ', null, null, null, 'asd', 'c62633198a704daba27700a05bd599f2', null, null, 'QSNO000008', '222');
insert into INTERMEDIATE_SUPPLIER (supplier_type, state, brief_introduction, temp_id, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, id, year, score, supplier_no, bank_account_number)
values ('伙伴型供应商', '可使用', null, '51158d99ea7a40059418ec96e300a11a', '石鑫供应商', null, '天津', '天津天信大厦', null, '110@110.com', '石鑫', '测试人员', '13111111111', null, null, null, '招商银行', '110               ', null, null, null, null, '07f8912c03c048388cafdf18981d550d', null, null, 'QSNO000007', '1233333333333');
insert into INTERMEDIATE_SUPPLIER (supplier_type, state, brief_introduction, temp_id, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, id, year, score, supplier_no, bank_account_number)
values ('战略性供应商', '可使用', null, '24ae915bd75d4f77a548e49e8e24a902', '儿童', null, '内蒙古', '发过火', null, '243310214@qq.com', '石鑫', 'sdf ', '13111111111', null, null, null, '招商银行', 'asd               ', null, null, null, null, '6eae2f7e2cb644f1abfe22cd9f2dd616', null, null, 'QSNO000006', '1233333333333');
insert into INTERMEDIATE_SUPPLIER (supplier_type, state, brief_introduction, temp_id, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, id, year, score, supplier_no, bank_account_number)
values ('战略性供应商', '可使用', '阿萨德', '0d5ba1b18ed04f048cbe95c85ede973a', '11111112sdfsd电', null, '河北', '请问', null, '243310214@qq.com', '阿萨德', '水电费', '13111111111', null, null, null, '招商银行', '2222              ', null, null, null, '按时', '87be2dcb49a64bfaad2dc1ef733516fa', null, null, 'QSNO000009', '1233333333333');
commit;
prompt 6 records loaded
prompt Loading SYS_AUTHORITY...
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('672', 'ROLE_DIRECT', '直达现场管理', '604', '60402');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('673', 'ROLE_DIRECT_ADD', '新建编辑保存直达现场单', '672', '67201');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('674', 'ROLE_DIRECT_SUBMIT', '提交直达现场', '672', '67202');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('675', 'ROLE_DIRECT_APPROVAL', '审批直达现场', '672', '67203');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('52', 'ROLE_SYS_DEP_ADD', '新建部门信息', '4', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('53', 'ROLE_SYS_DEP_MOD', '编辑部门信息', '4', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('54', 'ROLE_SYS_DEP_DEL', '删除部门信息', '4', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('547', 'ROLE_SYS_FLOWSET', '流程配置管理', '2', '2010');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('548', 'ROLE_SYS_SYSLOG', '系统日志管理', '2', '2010');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('558', 'ROLE_SYS_USER_INIT', '重置密码', '3', '307');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('56', 'ROLE_SYS_ROLE_ADD', '新增角色信息', '6', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('57', 'ROLE_SYS_ROLE_MOD', '编辑角色信息', '6', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('58', 'ROLE_SYS_ROLE_DEL', '删除角色信息', '6', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('59', 'ROLE_SYS_ROLE_AUTH_ADD', '配置角色权限', '6', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('6', 'ROLE_SYS_ROLE', '角色管理', '2', '0102');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('60', 'ROLE_SYS_DIC_ADD', '新建业务字典', '7', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('61', 'ROLE_SYS_DIC_MOD', '编辑业务字典', '7', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('62', 'ROLE_SYS_DIC_DEL', '删除业务字典', '7', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('63', 'ROLE_SYS_SYSDIC_ADD', '新建系统字典', '9', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('64', 'ROLE_SYS_SYSDIC_MOD', '编辑系统字典', '9', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('65', 'ROLE_SYS_SYSDIC_DEL', '删除系统字典', '9', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('7', 'ROLE_SYS_DIC', '业务字典管理', '2', '0104');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('76', 'ROLE_SYS_SENIOR_USER', '高级用户管理', '2', '0107');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('77', 'ROLE_SYS_USER_ADD', '新建用户信息', '3', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('78', 'ROLE_SYS_USER_MOD', '编辑用户信息', '3', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('79', 'ROLE_SYS_USER_DEL', '删除用户信息', '3', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('8', 'ROLE_SYS_LOG', '业务日志管理', '2', '0106');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('80', 'ROLE_SYS_USER_DISABLE', '禁用用户', '3', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('81', 'ROLE_SYS_USER_ROLE_ADD', '配置用户角色', '3', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('82', 'ROLE_SYS_USER_AUTH_ADD', '配置用户权限', '3', null);
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('9', 'ROLE_SYS_SYSDIC', '系统字典管理', '2', '0105');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('1', 'ROLE_USER', '基本用户权限', '0', '13');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('102', 'ROLE_SYS_AUTHORITY', '权限管理', '2', '0100');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('3', 'ROLE_SYS_USER', '用户管理', '2', '0101');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('17', 'ROLE_BASEINFO_MENU', '基础信息管理', '0', '02');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('2', 'ROLE_SYS_MENU', '系统功能管理', '0', '01');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('4', 'ROLE_SYS_DEP', '部门管理', '2', '0103');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('559', 'ROLE_WAREHOUSE_ROLE', '仓库管理', '17', '1701');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('560', 'ROLE_COMMODITY_ROLE', '物料编码管理', '17', '1702');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('561', 'ROLE_WAREHOUSE_ADD', '新建仓库', '559', '55901');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('562', 'ROLE_WAREHOUSE_MOD', '修改', '559', '55902');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('563', 'ROLE_WAREHOUSE_DEL', '删除', '559', '55903');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('598', 'ROLE_CONTRACT_MEAN', '协议/合同管理', '0', '06');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('599', 'ROLE_FRAME', '协议管理', '598', '59801');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('604', 'ROLE_STOCK_MEAN', '物资库存管理', '0', '08');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('605', 'ROLE_STORAGE', '物资入库', '604', '60401');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('629', 'ROLE_PAYMENT_ADD', '付款新建', '625', '62504');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('637', 'ROLE_TENDERCONTRACT_INVALID', '招标合同废标', '613', '61308');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('635', 'ROLE_TENDERCONTRACT_FILEMANAGE', '招标合同文件管理', '613', '61306');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('636', 'ROLE_TENDERCONTRACT_BID', '招标合同中标', '613', '61307');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('638', 'ROLE_TENDERCONTRACT_DOWNTEM', '招标合同下载模板', '613', '61309');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', '招标合同上传报价', '613', '613010');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', '招标合同生成合同', '613', '613011');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('686', 'ROLE_SUPPLIER_ROLE', '供应商管理', '17', '1703');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('687', 'ROLE_BUDGETACCOUNT_ROLE', '预算科目管理', '17', '1704');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('688', 'ROLE_MATERIAL_PURCHASE', '物资采购审批表', '681', '68101');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('676', 'ROLE_ORDER_MENU', '采购订单管理', '0', '07');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('677', 'ROLE_MATERIAL_PLAN_MEAN', '物资计划管理', '0', '03');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('721', 'ROLE_LOCATION_IMP', '批量新建储位', '559', '55909');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('722', 'ROLE_LOCATION_MOD', '编辑储位信息', '559', '559010');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('723', 'ROLE_LOCATION_DEL', '删除储位信息', '559', '559011');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('719', 'ROLE_PURCHASE_PREARRIVAL_ADD', '仓库信息导入', '559', '55907');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('720', 'ROLE_LOCATION_ADD', '新建储位信息', '559', '55908');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('678', 'ROLE_MATERIAL_PURCHASE_ORDER', '物资采购订单', '676', '67601');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('679', 'ROLE_PURCHASE_PLAN', '年度物资采购计划', '677', '67701');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('684', 'ROLE_OUTSTOCK', '物资出库', '604', '60404');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', '采购申请管理', '0', '04');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('682', 'ROLE_BUDGETPLAN_ROLE', '计划预算', '677', '67702');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('683', 'ROLE_STOCK', '库存统计', '604', '60403');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('685', 'ROLE_INVOICE', '发票登记', '624', '62402');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('689', 'ROLE_BUDGETACCOUNT_ADD', '预算科目新增', '687', '68701');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('690', 'ROLE_BUDGETACCOUNT_IMP', '预算科目导入', '687', '68702');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('691', 'ROLE_BUDGETACCOUNT_MOD', '预算科目修改', '687', '68703');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('692', 'ROLE_BUDGETACCOUNT_DEL', '预算科目删除', '687', '68704');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('693', 'ROLE_PURCHASE_DEL', '年度物资删除', '679', '67901');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('694', 'ROLE_PURCHASE_ADD', '年度物资新建', '679', '67902');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('695', 'ROLE_PURCHASE_INSERT', '年度物资保存', '679', '67903');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('696', 'ROLE_PURCHASE_EDIT', '年度物资编辑', '679', '67904');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('697', 'ROLE_BUDGETPLAN_SAVE', '计划预算保存', '682', '68201');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('698', 'ROLE_BUDGETPLAN_SUBMIT', '计划预算提交', '682', '68202');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('699', 'ROLE_BUDGETPLAN_ADD', '计划预算新建', '682', '68203');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('700', 'ROLE_BUDGETPLAN_DEL', '计划预算删除', '682', '68204');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('701', 'ROLE_BUDGETPLAN_VIEW', '计划预算查看历史', '682', '68205');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('702', 'ROLE_BUDGETPLAN_MOD', '计划预算修改', '682', '68206');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('703', 'ROLE_BUDGETPLAN_APPROVAL', '计划预算审批', '682', '68207');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('704', 'ROLE_MATERIALPURCHASE_ADD', '物资采购审批新建', '688', '68801');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('705', 'ROLE_MATERIALPURCHASE_SUBMIT', '物资采购审批提交', '688', '68802');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('706', 'ROLE_MATERIALPURCHASE_INSERT', '物资采购审批保存', '688', '68803');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('707', 'ROLE_MATERIALPURCHASE_DEL', '物资采购审批删除', '688', '68804');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('708', 'ROLE_MATERIALPURCHASE_EDIT', '物资采购审批编辑', '688', '68805');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('709', 'ROLE_ORDER_INSERT', '采购订单保存', '678', '67801');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('710', 'ROLE_ORDER_ADD', '采购订单新建', '678', '67802');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('711', 'ROLE_ORDER_EDIT', '采购订单编辑', '678', '67803');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('712', 'ROLE_ORDER_SUBMIT', '采购订单提交', '678', '67804');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('713', 'ROLE_ORDER_APPROVAL', '采购订单审批', '678', '67805');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('714', 'ROLE_ORDER_PURCHASE_END', '采购订单采购完成', '678', '67806');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('715', 'ROLE_INVOICE_SAVE', '发票保存', '685', '68501');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('716', 'ROLE_INVOICE_ADD', '发票新建', '685', '68502');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('717', 'ROLE_INVOICE_DELETE', '发票删除', '685', '68503');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('718', 'ROLE_INVOICE_EDIT', '发票编辑', '685', '68504');
commit;
prompt 100 records committed...
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('724', 'ROLE_MATERIALSTYPE_IMP', '招标协议上传', '593', '593011');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('609', 'ROLE_CONTRACT_SAVE', '合同管理保存', '608', '60801');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('610', 'ROLE_CONTRACT_SUBMIT', '合同管理提交', '608', '60802');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('611', 'ROLE_CONTRACT_EDIT', '合同管理编辑', '608', '60803');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('613', 'ROLE_TENDER_CONTRACT', '招标合同', '592', '59202');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('612', 'ROLE_CONTRACT_ADD', '合同管理新建', '608', '60804');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('624', 'ROLE_PAY_MEAN', '付款管理', '0', '09');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('627', 'ROLE_PAYMENT_DELETE', '付款删除', '625', '62502');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('625', 'ROLE_PAYMENT', '付款登记', '624', '62401');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('626', 'ROLE_PAYMENT_MOD', '付款修改', '625', '62501');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('628', 'ROLE_PAYMENT_STATE', '付款', '625', '62503');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('632', 'ROLE_TENDERCONTRACT_EDIT', '招标合同编辑', '613', '61303');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('642', 'ROLE_MATERIALTYPE_ADD', '物资类别添加', '560', '56001');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('631', 'ROLE_TENDERCONTRACT_ADD', '招标合同新建', '613', '61302');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('633', 'ROLE_TENDERCONTRACT_INSERT', '招标合同保存', '613', '61304');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('634', 'ROLE_TENDERCONTRACT_RELEASE', '招标合同发布', '613', '61305');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('643', 'ROLE_MATERIALTYPE_MOD', '物资类别修改', '560', '56002');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('644', 'ROLE_MATERIALTYPE_DEL', '物资类别删除', '560', '56003');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('645', 'ROLE_MATERIAL_ADD', '物资添加', '560', '56006');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('646', 'ROLE_MATERIAL_MOD', '物资修改', '560', '56007');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('647', 'ROLE_MATERIAL_DEL', '物资删除', '560', '56008');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('648', 'ROLE_MATERIAL_IMP', '物资导入', '560', '56009');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('649', 'ROLE_MATERIAL_DOW', '物资模板下载', '560', '560010');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('650', 'ROLE_MATERIALTYPE_IMP', '物资类别导入', '560', '56004');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('651', 'ROLE_MATERIALTYPE_DOW', '物资类别模板下载', '560', '56005');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('652', 'ROLE_STORAGE_ADD', '入库添加', '605', '60501');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('653', 'ROLE_STORAGE_MOD', '入库修改', '605', '60502');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('654', 'ROLE_STORAGE_EXP', '入库导出', '605', '60503');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('659', 'ROLE_STORAGE_SUB', '入库提交审批', '605', '60504');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('600', 'ROLE_FRAME_ADD', '协议管理新建', '599', '59901');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('603', 'ROLE_FRAME_MOD', '协议管理编辑', '599', '59904');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('660', 'ROLE_TENDER_RELEASE', '招标协议发布', '593', '59305');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('661', 'ROLE_TENDER_PRODUCTFRAME', '生成招标协议', '593', '59306');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('662', 'ROLE_TENDER_UPLOADPRICE', '招标协议报价上传', '593', '59307');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('663', 'ROLE_TENDER_DOWNTEM', '招标协议报价模板下载', '593', '59308');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('664', 'ROLE_TENDER_INVALID', '招标协议废标', '593', '59309');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('665', 'ROLE_TENDER_BID', '招标协议中标', '593', '593010');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('666', 'ROLE_TENDER_FILEMANAGE', '招标协议文件管理', '593', '593011');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('564', 'ROLE_REGION_ADD', '新建库区', '559', '55904');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('565', 'ROLE_REGION_MOD', '修改', '559', '55905');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('566', 'ROLE_REGION_DEL', '删除', '559', '55906');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('592', 'ROLE_TENDER_MEAN', '招标管理', '0', '05');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('593', 'ROLE_TENDER', '招标协议', '592', '59201');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('594', 'ROLE_TENDER_ADD', '招标协议新建', '593', '59301');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('595', 'ROLE_TENDER_EDIT', '招标协议编辑', '593', '59302');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('596', 'ROLE_TENDER_INSERT', '招标协议保存', '593', '59303');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('601', 'ROLE_FRAME_SAVE', '协议管理保存', '599', '59902');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('602', 'ROLE_FRAME_SUBMIT', '协议管理提交', '599', '59903');
insert into SYS_AUTHORITY (auth_id, auth_code, auth_name, parentid, row_order)
values ('608', 'ROLE_PURCHASE_CONTRACT', '合同管理', '598', '59802');
commit;
prompt 149 records loaded
prompt Loading SYS_COMPANY...
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('0', '0', '公司', '可用', '1', 1, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('50b765068857433c9199b5cfe11', '11', '资产管理部', '可用', '0', 1, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('50b765068857433c9199b5cfe12', '12', '建造部', '可用', '0', 1, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('50b765068857433c9199b5cfe13', '13', '项目管理部', '可用', '0', 1, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('50b765068857433c9199b5cfe15', '15', '人事行政部', '可用', '0', 1, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('50b765068857433c9199b5cfe16', '16', '财务部', '可用', '0', 1, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('50b765068857433c9199b5cfe17', '17', '审计部', '可用', '0', 1, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('50b765068857433c9199b5cfe18', '18', '证券部', '可用', '0', 1, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('50b765068857433c9199b5cfe3', '03', '设计部', '可用', '0', 1, '12', 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('50b765068857433c9199b5cfe4', '04', '采办部', '可用', '0', 1, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('50b765068857433c9199b5cfe5', '05', '质检部', '可用', '0', 1, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('50b765068857433c9199b5cfe7', '07', '安全环保部', '可用', '0', 1, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('50b765068857433c9199b5cfe9', '09', '经营部', '可用', '0', 1, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('56c1a178532247afbc53941b3d787652', '0301', '设计部一组', '可用', '50b765068857433c9199b5cfe3', 2, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('ffe6fa929df04d4f97893fc6921672ba', '0401', '采办一组', '可用', '50b765068857433c9199b5cfe4', 2, null, 0, null, null, null, null);
insert into SYS_COMPANY (company_id, company_code, company_name, company_type, parentid, levels, remark, isdel, company_district, company_address, company_contact, company_tel)
values ('4def55c268c04364afac08edaa612eab', '0302', '设计部二组', '可用', '50b765068857433c9199b5cfe3', 2, null, 1, null, null, null, null);
commit;
prompt 16 records loaded
prompt Loading SYS_DICTIONARY...
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('EF6229CCd45F1d457CdD686dE4B0E51198A5', 'a85e6085a37449aabffd1655de2fca96', '安全环保部副经理', '安全环保部副经理', 2, 39, 1, 0, null, null, '安全环保部副经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('F4308F15d7C33dBDB4d23F1d8BBE4FF57FB7', 'a85e6085a37449aabffd1655de2fca96', '质检部舾装检验工程师', '质检部舾装检验工程师', 2, 52, 1, 0, null, null, '质检部舾装检验工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('F713C4EFd3CABd09A8d26E1d3D56E9A6DA33', 'a85e6085a37449aabffd1655de2fca96', '质检部电气检验员', '质检部电气检验员', 2, 51, 1, 0, null, null, '质检部电气检验员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('6a0ab401c78847e78b30c804faf686aa', '19e1fe7765844a88bb4d1cf9fe1d42ab', '黑龙江', '黑龙江', 2, 8, 1, 0, null, null, '黑龙江');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('FBD5C48Cd47DEdCB76d0AE7d113CD2C746AD', 'a85e6085a37449aabffd1655de2fca96', '证券事务专员', '证券事务专员', 2, 31, 1, 0, null, null, '证券事务专员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('FFB9E3BBd8921d7742dB683dA5873C375D9A', 'a85e6085a37449aabffd1655de2fca96', '采办部材料保护工程师', '采办部材料保护工程师', 2, 21, 1, 0, null, null, '采办部材料保护工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('7376f1a66374424a887850cffbc97b15', 'a85e6085a37449aabffd1655de2fca96', '设计部工程师', '设计部工程师', 2, 99, 1, 0, null, null, '设计部工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('73779784d98E9dDA3Ad116BdFA038A8154A4', 'a85e6085a37449aabffd1655de2fca96', '质检部配管检验员', '质检部配管检验员', 2, 60, 1, 0, null, null, '质检部配管检验员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('75564FD1d9215dDF68dDD4DdA8F9344DFC00', 'a85e6085a37449aabffd1655de2fca96', '质检部电仪检验员', '质检部电仪检验员', 2, 55, 1, 0, null, null, '质检部电仪检验员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('7691CDF8dB79BdC5B2dD0FEdBDF4D6C45AE7', 'a85e6085a37449aabffd1655de2fca96', '采办部副经理', '采办部副经理', 2, 9, 1, 0, null, null, '采办部副经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('7752FE84dDBF8dE102dBDCDd206B6432C266', 'a85e6085a37449aabffd1655de2fca96', '质检部秘书', '质检部秘书', 2, 49, 1, 0, null, null, '质检部秘书');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('7844A93AdFA6Fd6AADdAFA9d146591B97F88', 'a85e6085a37449aabffd1655de2fca96', '设计部秘书', '设计部秘书', 2, 34, 1, 0, null, null, '设计部秘书');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('71ea73ff63e149808ce284f2ce273496', '19e1fe7765844a88bb4d1cf9fe1d42ab', '广东', '广东', 2, 19, 1, 0, null, null, '广东');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('79B49321d5FA9d7918dB2A1dE87E8B48C8E5', 'a85e6085a37449aabffd1655de2fca96', '行政助理', '行政助理', 2, 27, 1, 0, null, null, '行政助理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('7C2889D4d533Fd6B6Ad80E1d043B16CF681C', 'a85e6085a37449aabffd1655de2fca96', '经营部商务助理', '经营部商务助理', 2, 37, 1, 0, null, null, '经营部商务助理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('81D0FF4Dd2B3AdB528d1982dB3B22FEEDDB3', 'a85e6085a37449aabffd1655de2fca96', '人事行政部副经理', '人事行政部副经理', 2, 25, 1, 0, null, null, '人事行政部副经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('8337282808f04716aaf8818cebc318c5', 'a85e6085a37449aabffd1655de2fca96', '建造部经理助理', '建造部经理助理', 2, 97, 1, 0, null, null, '建造部经理助理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('8541611Bd4043d0981d6D1Cd8CA5AAE9933D', 'a85e6085a37449aabffd1655de2fca96', '采办部仓储主管助理', '采办部仓储主管助理', 2, 23, 1, 0, null, null, '采办部仓储主管助理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('8887D0FFdF38EdFAF1dFC8EdE47A14553962', 'a85e6085a37449aabffd1655de2fca96', '人事行政部费用控制主管', '人事行政部费用控制主管', 2, 26, 1, 0, null, null, '人事行政部费用控制主管');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('8AACEF7Cd3BDCd226Bd1C72d6E7335ABEFDC', 'a85e6085a37449aabffd1655de2fca96', 'Roy Hill项目副经理', 'Roy Hill项目副经理', 2, 87, 1, -1, null, null, 'Roy Hill项目副经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('8DB8BD7Ad33D7d4483d508Dd3D6FD5DAD6FF', 'a85e6085a37449aabffd1655de2fca96', 'MV27 E-House项目经理', 'MV27 E-House项目经理', 2, 88, 1, -1, null, null, 'MV27 E-House项目经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('90015832dFF87d14B3d1D37d9D539A206B76', 'a85e6085a37449aabffd1655de2fca96', '常务副总裁', '常务副总裁', 2, 1, 1, 0, null, null, '常务副总裁');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('92DC5236d3F9BdCD38d8F8Ed01E722C1B573', 'a85e6085a37449aabffd1655de2fca96', '涂装车间主任', '涂装车间主任', 2, 79, 1, 0, null, null, '涂装车间主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('9696EBC6dE2EEd1D8Fd0BE1dA8CF6CA3B4E9', 'a85e6085a37449aabffd1655de2fca96', '总裁', '总裁', 2, 0, 1, 0, null, null, '总裁');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('984A06A8dF615dC347dDCA2d95C3E87C3CE9', 'a85e6085a37449aabffd1655de2fca96', '资产管理部经理', '资产管理部经理', 2, 41, 1, 0, null, null, '资产管理部经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('99BB5068d26FAd77F8dADB6dCFA2F9D38A37', 'a85e6085a37449aabffd1655de2fca96', '采办部进出口系统操作员', '采办部进出口系统操作员', 2, 12, 1, 0, null, null, '采办部进出口系统操作员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('9B1A252Ad9EB7d8D48dD708dBC4D78AC15B6', 'a85e6085a37449aabffd1655de2fca96', '副总裁', '副总裁', 2, 2, 1, 0, null, null, '副总裁');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('9CD0CD22d9BC0dA4EFd638BdF519888EC472', 'a85e6085a37449aabffd1655de2fca96', '质检部涂装检验员', '质检部涂装检验员', 2, 56, 1, 0, null, null, '质检部涂装检验员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('9CD4DCABd050DdF64Bd9E0Ad2E7C0CC3DA93', 'a85e6085a37449aabffd1655de2fca96', 'LongfordII项目经理', 'LongfordII项目经理', 2, 89, 1, -1, null, null, 'LongfordII项目经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('A5F753A5d3C8Fd3675d74EFdA7AC7A81178F', 'a85e6085a37449aabffd1655de2fca96', '建造部舾装主管', '建造部舾装主管', 2, 69, 1, 0, null, null, '建造部舾装主管');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('a85e6085a37449aabffd1655de2fca96', '0', 'position', '职位', 1, 0, 1, 0, null, null, '职位');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('AAC72E90d90DCd7357d813Bd0F839FD7C314', 'a85e6085a37449aabffd1655de2fca96', '采办部经理', '采办部经理', 2, 8, 1, 0, null, null, '采办部经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('AADD652DdF657d05A5dCEACdD774CB218973', 'a85e6085a37449aabffd1655de2fca96', '采办部仓库管理员', '采办部仓库管理员', 2, 20, 1, 0, null, null, '采办部仓库管理员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('afb7f7814add4101a2cd62efe7f34ea3', 'a85e6085a37449aabffd1655de2fca96', '质检部项目质检经理', '质检部项目质检经理', 2, 92, 1, 0, null, null, '质检部项目质检经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('B25C37FCd275Ad9413dDCFCd4B72D3C7C4B0', 'a85e6085a37449aabffd1655de2fca96', '采办部合同管理员', '采办部合同管理员', 2, 13, 1, 0, null, null, '采办部合同管理员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('498d555024964602a34a805a86e09bb3', '1', 'ban', '版', 2, 38, 1, 0, null, null, '版');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('445b7f594b824ff585203033231c1360', '563d1ec86dcc4cbb84cc0f5cf9f9e18e', '全部', '全部', 2, 1, 1, 1, null, null, '全部');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('B4895C07dED1Ad5CEBd7035dCE554BD23900', 'a85e6085a37449aabffd1655de2fca96', '涂装车间副主任', '涂装车间副主任', 2, 78, 1, 0, null, null, '涂装车间副主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('2fb40373bdc346fea7461ed82a96e5ea', '19e1fe7765844a88bb4d1cf9fe1d42ab', '西藏', '西藏', 2, 26, 1, 0, null, null, '西藏');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('8e8f454cc4ba42599e742842339ce069', '563d1ec86dcc4cbb84cc0f5cf9f9e18e', 'caigou', '采购', 2, 1, 1, 0, null, null, '采购');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('31480c0949904ef38ef01b98fed4f2e5', '19e1fe7765844a88bb4d1cf9fe1d42ab', '山西', '山西', 2, 4, 1, 0, null, null, '山西');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('31d674976a7b4fee8da4e7f405e07e20', '19e1fe7765844a88bb4d1cf9fe1d42ab', '甘肃', '甘肃', 2, 28, 1, 0, null, null, '甘肃');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('330197dda12946ec9817d1df6e2c3ccf', '19e1fe7765844a88bb4d1cf9fe1d42ab', '河南', '河南', 2, 16, 1, 0, null, null, '河南');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('02d7c271765d4c6d8aadbc927fa50703', '0', 'audit_state', '审核状态', 1, 0, 1, 0, null, null, '审核状态');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('37973ca8c6394571acf74f83a6edb90f', '19e1fe7765844a88bb4d1cf9fe1d42ab', '辽宁', '辽宁', 2, 6, 1, 0, null, null, '辽宁');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('6d40f7d034524673a24991632ee13825', '02d7c271765d4c6d8aadbc927fa50703', '全部', '全部', 2, 1, 1, 0, null, null, '全部');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('3fd237d1f0c748f98b2ac115c74ac200', '02d7c271765d4c6d8aadbc927fa50703', '新建', '新建', 2, 2, 1, 0, null, null, '新建');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('3c0d603020664b709573ca99a04a2cce', '19e1fe7765844a88bb4d1cf9fe1d42ab', '重庆', '重庆', 2, 22, 1, 0, null, null, '重庆');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('4d36188406934537b02b22ff6722c767', '02d7c271765d4c6d8aadbc927fa50703', '待审批', '待审批', 2, 3, 1, 0, null, null, '待审批');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('f10154f705cb4080ac41323af97a448e', '02d7c271765d4c6d8aadbc927fa50703', '审批通过', '审批通过', 2, 4, 1, 0, null, null, '审批通过');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('94c366436b684961a1436dfb6fd7f399', '0', 'module_tender', '招标模块', 1, 0, 1, 0, null, null, '招标模块');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('dedd3fb02a124157a21dea0ad1daf7b0', '0', 'module_purchasePlan', '物资采购计划', 1, 0, 1, 0, null, null, '物资采购计划');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('ab0cc37bcfe64ed5af2078c4d83c42ef', '0', 'direct', '直达现场模块', 1, 0, 1, 0, null, null, '直达现场模块');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('846fdf9bfd4448e5a0de0d9281e541a0', '0', 'outstock', '出库模块', 1, 0, 1, 0, null, null, '出库模块');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('486b0ae345b945cb9d5bdb411bb2a21c', '19e1fe7765844a88bb4d1cf9fe1d42ab', '贵州', '贵州', 2, 24, 1, 0, null, null, '贵州');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('0a1cb68eb5304ca5a61519beb2fa4005', '0', 'payment', '付款管理', 1, 0, 1, 1, null, null, '付款管理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('4c7747d2b5a74ffe8859d8b7266e470c', '0', 'module_payment', '付款管理', 1, 0, 1, 0, null, null, '付款管理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('4f488e764cc145bcbb3b673384642ac2', '19e1fe7765844a88bb4d1cf9fe1d42ab', '内蒙古', '内蒙古', 2, 5, 1, 0, null, null, '内蒙古');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('f709a9f84af34c10a373979727132bfc', '0', 'module_invoice', '发票管理', 1, 0, 1, 0, null, null, '发票管理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('775cdd9cf8554c3cbe4b89c0e29aa4dd', '0', '001', '性别', 1, 0, 1, 0, null, null, 'sex');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('e59fe0e19a1140179aa500240ee0fa4e', '1', 'ba', '把', 2, 1, 1, 0, null, null, '把');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('580fd68521934a7a98ef4480348bd4e8', '19e1fe7765844a88bb4d1cf9fe1d42ab', '广西', '广西', 2, 20, 1, 0, null, null, '广西');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('19e21b384d80472583e7321aee905346', '1', 'bao', '包', 2, 3, 1, 0, null, null, '包');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('0f277c12bc5f4dbc9a10fa3e90f2bde0', '1', 'juan', '卷', 2, 15, 1, 0, null, null, '卷');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('12b3c6a1e426490fa1624381591c187d', '1', 'ke', '颗', 2, 16, 1, 0, null, null, '颗');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('7bf7d903587245b5856dc7122c8fb1bf', '1', 'liang', '辆', 2, 18, 1, 0, null, null, '辆');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('91a7eeab6a854340b310c7cac7c64e87', '1', 'zu', '组', 2, 30, 1, 0, null, null, '组');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('9a41b2ec49784f7eb5a01738a8a22d6b', '1', 'tao', '套', 2, 31, 1, 0, null, null, '套');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('269235f8b54047b098c352238a520d6a', '1', 'tiao', '条', 2, 32, 1, 0, null, null, '条');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('69a8e4baa50245d9b519e9b420002087', '1', 'ting', '听', 2, 33, 1, 0, null, null, '听');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('7d82aa4ac9af426c8a8d29344e512301', '1', 'tong', '桶', 2, 34, 1, 0, null, null, '桶');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('465569e2ead94e1ba498211e8c0084b4', '1', 'zhang', '张', 2, 35, 1, 0, null, null, '张');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('67089adee04042dda82016d6332d63b1', '19e1fe7765844a88bb4d1cf9fe1d42ab', '湖北', '湖北', 2, 17, 1, 0, null, null, '湖北');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('8f47520b66a54df483d74e7c81a2af11', '1', 'xaing', '箱', 2, 36, 1, 0, null, null, '箱');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('5e91c3e04eb94cddaaa65a1568aa8527', '0', 'module_supplier', '供应商模块', 1, 0, 1, 0, null, null, '供应商模块');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('4151ad4c00ef4d5a8b68e9a7f0f0c96e', '1', 'ben', '本', 2, 4, 1, 0, null, null, '本');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('40b03b75c0184191979c543bae409d9d', '1', 'bu', '部', 2, 5, 1, 0, null, null, '部');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('5a31b351ef5346cd8970f68ed8c93a0a', '1', 'dai', '袋', 2, 6, 1, 0, null, null, '袋');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('af0994f75bdd494b82e205816a50dc89', '1', 'ding', '顶', 2, 7, 1, 0, null, null, '顶');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('95c8d3ef2ca34fe6b66208ebd36c19d2', '1', 'fen', '份', 2, 8, 1, 0, null, null, '份');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('d8ff3dd30308410982cda8b15eb9b93c', '1', 'fu', '副', 2, 9, 1, 0, null, null, '副');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('911ff03115fe46198bc7647c8d715ad8', '1', 'ge', '个', 2, 10, 1, 0, null, null, '个');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('538a7a670e234dcdb22521572953a983', '1', 'gen', '根', 2, 11, 1, 0, null, null, '根');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('dcd81ade04684e8a982ab6d289c32701', '1', 'he', '盒', 2, 12, 1, 0, null, null, '盒');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('87c173c86a3e405dbdad7535797e135d', '1', 'jian', '件', 2, 13, 1, 0, null, null, '件');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('e9cf1131e6014c42a23f227b44c75178', '1', 'jie', '节', 2, 14, 1, 0, null, null, '节');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('269040e3787e450296f729f4e293fcbc', '1', 'kuai', '块', 2, 17, 1, 0, null, null, '块');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('098ee630008340be8d54a979729ed9b3', '1', 'mi', '米', 2, 19, 1, 0, null, null, '米');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('56d915fcc2814d98817661b7db4cd401', '1', 'kun', '捆', 2, 20, 1, 0, null, null, '捆');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('d992c8636d6a4428bab5201ce418e1fa', '1', 'mian', '面', 2, 21, 1, 0, null, null, '面');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('48359525f54641e08508b00d67181bb5', '1', 'pan', '盘', 2, 22, 1, 0, null, null, '盘');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('ee6cf0f885ed4c77a4349468b81da6dc', '1', 'pian', '片', 2, 23, 1, 0, null, null, '片');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('e613d924b58641f6a00c361ac952ac33', '1', 'ping', '瓶', 2, 24, 1, 0, null, null, '瓶');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('457da3848c1f4f4282f431ac1a4ead0d', '1', 'shan', '扇', 2, 25, 1, 0, null, null, '扇');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('7451588ede004a699e34d362c4a5aa61', '1', 'shaung', '双', 2, 26, 1, 0, null, null, '双');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('b27903a55e804aa6a4c5ce202784d3c7', '1', 'tai', '台', 2, 27, 1, 0, null, null, '台');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('98374105f5334692aeead7538fc16ba0', '1', 'yanmi', '延米', 2, 28, 1, 0, null, null, '延米');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('f8d385ea224542b2bd16a809a25c1189', '1', 'zhi', '支', 2, 29, 1, 0, null, null, '支');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('35d918e46a454af99f5d232d7cb9357e', '1', 'zhi2', '只', 2, 37, 1, 0, null, null, '只');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('22016936d028Fd5064dE3ABdF2049AC87484', 'a85e6085a37449aabffd1655de2fca96', '采办部通关专员', '采办部通关专员', 2, 11, 1, 0, null, null, '采办部通关专员');
commit;
prompt 100 records committed...
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('e3b53b85fb664f2ca44f6128b9fb0ec5', '19e1fe7765844a88bb4d1cf9fe1d42ab', '台湾', '台湾', 2, 34, 1, 0, null, null, '台湾');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('22142D5Ad220CdF5A1dE0F8d0491DA32B52A', 'a85e6085a37449aabffd1655de2fca96', '资产管理部副经理', '资产管理部副经理', 2, 42, 1, 0, null, null, '资产管理部副经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('229b218985224ba1acf4476e7dd381e1', 'a85e6085a37449aabffd1655de2fca96', '机管室主任助理', '机管室主任助理', 2, 94, 1, 0, null, null, '机管室主任助理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('22DDA514dB69Dd92DFd8E7Dd901E48166B88', 'a85e6085a37449aabffd1655de2fca96', '设计部副经理兼结构室主任', '设计部副经理兼结构室主任', 2, 33, 1, 0, null, null, '设计部副经理兼结构室主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('234A7FD6d7BA8d7BC8d4863d4E986939288B', 'a85e6085a37449aabffd1655de2fca96', 'Roy Hill项目经理', 'Roy Hill项目经理', 2, 86, 1, -1, null, null, 'Roy Hill项目经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('2450F6EAd64F7d3010d22A7d9AFA4362EABE', 'a85e6085a37449aabffd1655de2fca96', '采办部国际采办工程师', '采办部国际采办工程师', 2, 14, 1, 0, null, null, '采办部国际采办工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('2487BF17dB65BdB81Ad6957d4008D06BE196', 'a85e6085a37449aabffd1655de2fca96', '设计部文控员', '设计部文控员', 2, 35, 1, 0, null, null, '设计部文控员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('26139410d4FC7dDA3DdD095dE07D23862557', 'a85e6085a37449aabffd1655de2fca96', '质检部副经理', '质检部副经理', 2, 47, 1, 0, null, null, '质检部副经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('2A9BF12Ed87EAdA4E5dE437d8D6CD19EB339', 'a85e6085a37449aabffd1655de2fca96', '采办部采办员', '采办部采办员', 2, 15, 1, -1, null, null, '采办部采办员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('2BA1FB23dCD77d5EA7d8E49d3368ADD5FDA9', 'a85e6085a37449aabffd1655de2fca96', '采办部费用管理员', '采办部费用管理员', 2, 19, 1, 0, null, null, '采办部费用管理员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('563d1ec86dcc4cbb84cc0f5cf9f9e18e', '0', 'department', '部门', 1, 0, 1, 0, null, null, '部门');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('0', '-1', null, '字典根节点', 0, 0, 2, 0, null, null, '字典根节点');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('01b3ad1d3cb04e3391a51f118530448d', '19e1fe7765844a88bb4d1cf9fe1d42ab', '新疆', '新疆', 2, 31, 1, 0, null, null, '新疆');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('ef6c264e87e34c8aa93bbee03b60629a', '0', 'module_materialPurchase', '物资采购计划模块', 1, 0, 1, 0, null, null, '物资采购计划模块');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('edc4dd6703424378ac7f197608e3bafa', '19e1fe7765844a88bb4d1cf9fe1d42ab', '陕西', '陕西', 2, 27, 1, 0, null, null, '陕西');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('3b81a0a140ce42558ea4f5beda545a69', '0', 'storage', '入库模块', 1, 0, 1, 0, null, null, '入库模块');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('ee883336cc164d7ba642c416c4abe463', '19e1fe7765844a88bb4d1cf9fe1d42ab', '海南', '海南', 2, 21, 1, 0, null, null, '海南');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('0822e5ea5ed94467a0eeee50d4de6e62', '19e1fe7765844a88bb4d1cf9fe1d42ab', '宁夏', '宁夏', 2, 30, 1, 0, null, null, '宁夏');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('0c9706b3722f40da90e211d359270e3f', '19e1fe7765844a88bb4d1cf9fe1d42ab', '江苏', '江苏', 2, 10, 1, 0, null, null, '江苏');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('1', '0', 'unit', '单位', 1, 0, 1, 0, null, null, '单位');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('19e1fe7765844a88bb4d1cf9fe1d42ab', '0', 'province', '省份', 1, 0, 1, 0, null, null, '省份');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('1a3193ecde4d47d8b8f735af2f63a66b', '19e1fe7765844a88bb4d1cf9fe1d42ab', '湖南', '湖南', 2, 18, 1, 0, null, null, '湖南');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('5e5643c8e7f442e8ba9f842bcf4b7b81', '0', 'supplier_type', '供应商类别', 1, 0, 1, 0, null, null, '供应商类别');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('ac474cf116be4144b89a1a722c2968ec', '19e1fe7765844a88bb4d1cf9fe1d42ab', '上海', '上海', 2, 9, 1, 0, null, null, '上海');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('dab0b113e7894f26a0a2758ae9882134', '0', 'state', '状态', 1, 0, 1, 0, null, null, '状态');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('5d88dbcd3269408b8f137a4dad91d831', 'dab0b113e7894f26a0a2758ae9882134', '使用', '使用', 2, 1, 1, 0, null, null, '使用');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('7ecff9e0bd0a47ae99094326874e7b9e', 'dab0b113e7894f26a0a2758ae9882134', '停用', '停用', 2, 2, 1, 0, null, null, '停用');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('41759d403a914a11a8e2ffd7f85c155a', '5e5643c8e7f442e8ba9f842bcf4b7b81', '战略性供应商', '战略性供应商', 2, 1, 1, 0, null, null, '战略性供应商');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('a666296eb763493080586b9e34e1f4f8', '5e5643c8e7f442e8ba9f842bcf4b7b81', '伙伴型供应商', '伙伴型供应商', 2, 2, 1, 0, null, null, '伙伴型供应商');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('7dd040742d804313a979c157a46847ec', '5e5643c8e7f442e8ba9f842bcf4b7b81', '零星类供应商', '零星类供应商', 2, 4, 1, 0, null, null, '零星类供应商');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('f561470b4ec5417da62b834f1cd5651c', '5e5643c8e7f442e8ba9f842bcf4b7b81', '潜在供应商', '潜在供应商', 2, 5, 1, 0, null, null, '潜在供应商');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('298bc6546be947fd8c06d64ded25576b', '62a90450df344509a945af22643f729c', '待审批', '待审批', 2, 2, 1, 0, null, null, '待审批');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('4c3bfc28388e49f19c70af2f83329433', '62a90450df344509a945af22643f729c', '可使用', '可使用', 2, 3, 1, 0, null, null, '可使用');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('a23e80d3c4f945f69a703642c817feef', '62a90450df344509a945af22643f729c', '退回', '退回', 2, 4, 1, 1, null, null, '退回');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('eeae524f2c874070924bcf2213847192', '62a90450df344509a945af22643f729c', '不可使用', '不可使用', 2, 5, 1, 0, null, null, '不可使用');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('d1292a801e3b4205acc545ed274a42af', '62a90450df344509a945af22643f729c', '临时', '临时', 2, 6, 1, 0, null, null, '临时');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('fd5527632a21416fb646bc83d7967278', '0', 'supplier_rank', '供应商等级', 1, 0, 1, 0, null, null, '供应商等级');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('b7067a32bdca46dab81479795568b9f3', 'fd5527632a21416fb646bc83d7967278', 'A', 'A', 2, 1, 1, 0, null, null, 'A');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('2681bb9464224930a3f4972ace1fcf22', '0', 'module_purchaseContract', '采购合同模块', 1, 0, 1, 0, null, null, '采购合同模块');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('08459823eb7a4f0a805229bedf9a9c45', '0', 'module_frame', '框架协议模块', 1, 0, 1, 0, null, null, '框架协议模块');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('6b31e081c0374851ba449d5ee2016d13', '0', 'module_budgetPlan', '计划预算', 1, 0, 1, 0, null, null, '计划预算');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('57ec70a905d045dd8e9bdc92ea098b83', '5e5643c8e7f442e8ba9f842bcf4b7b81', '瓶颈类供应商', '瓶颈类供应商', 2, 3, 1, 0, null, null, '瓶颈类供应商');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('62a90450df344509a945af22643f729c', '0', 'supplier_state', '供应商状态', 1, 0, 1, 0, null, null, '供应商状态');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('fea02629688d46cbad4041be4be83533', '62a90450df344509a945af22643f729c', '新建', '新建', 2, 1, 1, 0, null, null, '新建');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('94e14426ee754100bb1457dc735d9f3e', 'fd5527632a21416fb646bc83d7967278', 'B', 'B', 2, 2, 1, 0, null, null, 'B');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('d7b87fa2eced40ae8aac55d4c08444c6', 'fd5527632a21416fb646bc83d7967278', 'C', 'C', 2, 3, 1, 0, null, null, 'C');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('fc69ef7491d84997a7db525e694b9913', '19e1fe7765844a88bb4d1cf9fe1d42ab', '澳门', '澳门', 2, 33, 1, 0, null, null, '澳门');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('fd14bda28972444d87b66efe97b4aabd', '19e1fe7765844a88bb4d1cf9fe1d42ab', '四川', '四川', 2, 23, 1, 0, null, null, '四川');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('128add0442a1423eaaab84c91691352e', 'fd5527632a21416fb646bc83d7967278', 'D', 'D', 2, 4, 1, 0, null, null, 'D');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('781404a360384281a167652ad652fb1d', '19e1fe7765844a88bb4d1cf9fe1d42ab', '吉林', '吉林', 2, 7, 1, 0, null, null, '吉林');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('312830CFdE6E5d2841d5174dC2EB1962E9BB', 'a85e6085a37449aabffd1655de2fca96', '质检部涂装检验工程师', '质检部涂装检验工程师', 2, 58, 1, 0, null, null, '质检部涂装检验工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('3967DA3AdF723d4581d676Cd0B87FA75E5DE', 'a85e6085a37449aabffd1655de2fca96', '副总裁兼财务总监', '副总裁兼财务总监', 2, 3, 1, 0, null, null, '副总裁兼财务总监');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('3A59923Cd9442d2F05dBAEFd000F53E04A44', 'a85e6085a37449aabffd1655de2fca96', '环保员', '环保员', 2, 40, 1, 0, null, null, '环保员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('3E4D506Cd278Cd5C48d61D1d473117F7E9B7', 'a85e6085a37449aabffd1655de2fca96', '舾装车间主任', '舾装车间主任', 2, 73, 1, 0, null, null, '舾装车间主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('470FC594dB791d0317dD063d9D63EBDD38B0', 'a85e6085a37449aabffd1655de2fca96', '质检部结构检验工程师', '质检部结构检验工程师', 2, 53, 1, 0, null, null, '质检部结构检验工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('4839150DdAD75d8C0FdBE97d9BD73B3FD9F1', 'a85e6085a37449aabffd1655de2fca96', '质检部电仪检验室副主任', '质检部电仪检验室副主任', 2, 64, 1, 0, null, null, '质检部电仪检验室副主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('4EC8F9ACdAC01dB98Bd317AdD178DF2B2688', 'a85e6085a37449aabffd1655de2fca96', '审计副经理', '审计副经理', 2, 30, 1, 0, null, null, '审计副经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('5114c7eeb17f46c19d9a89a0749fb162', 'a85e6085a37449aabffd1655de2fca96', '建造部副经理', '建造部副经理', 2, 99, 1, 0, null, null, '建造部副经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('826517ddf94042daa0db307c65fdb1b8', '19e1fe7765844a88bb4d1cf9fe1d42ab', '山东', '山东', 2, 15, 1, 0, null, null, '山东');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('52B806DAdA46DdBD25dD78Fd33E93F6BD6AF', 'a85e6085a37449aabffd1655de2fca96', '建造部结构主管工程师', '建造部结构主管工程师', 2, 66, 1, 0, null, null, '建造部结构主管工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('566F98C4d9A6Dd52DDd3372d5DC80A17B9AF', 'a85e6085a37449aabffd1655de2fca96', '生产准备室副主任', '生产准备室副主任', 2, 68, 1, 0, null, null, '生产准备室副主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('5B2694CEdA404d0116dA893dE7E32A58819B', 'a85e6085a37449aabffd1655de2fca96', '建造部通风工程师', '建造部通风工程师', 2, 70, 1, 0, null, null, '建造部通风工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('5C931073d9CE1d39A2d3AC5d2E805199F289', 'a85e6085a37449aabffd1655de2fca96', '质检部焊接工艺室主任助理', '质检部焊接工艺室主任助理', 2, 61, 1, 0, null, null, '质检部焊接工艺室主任助理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('5D255B2Bd081AdB040d8428dE9ACDAB09E56', 'a85e6085a37449aabffd1655de2fca96', '财务部副经理', '财务部副经理', 2, 28, 1, 0, null, null, '财务部副经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('6134f59f54654491b835120c788b3759', 'a85e6085a37449aabffd1655de2fca96', '项目经理', '项目经理', 2, 0, 1, 0, null, null, '项目经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('646CE7A9d22ABd2DA4d7E02dBD698236EB4F', 'a85e6085a37449aabffd1655de2fca96', '项目管理部副经理兼预算室主任', '项目管理部副经理兼预算室主任', 2, 44, 1, 0, null, null, '项目管理部副经理兼预算室主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('64AEFA6Bd3E1Ad1011d9E63d6B62621D3401', 'a85e6085a37449aabffd1655de2fca96', '建造部通风主管', '建造部通风主管', 2, 71, 1, 0, null, null, '建造部通风主管');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('64BD10F6dA96Ad12A4d0914d63B871FD4425', 'a85e6085a37449aabffd1655de2fca96', '采办部项目文件协调员', '采办部项目文件协调员', 2, 22, 1, 0, null, null, '采办部项目文件协调员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('64e2ea663a584d34bcd78c38eb15a4d0', 'a85e6085a37449aabffd1655de2fca96', '财务部成本会计', '财务部成本会计', 2, 95, 1, 0, null, null, '财务部成本会计');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('671AA54Dd77E1d3628d562BdD760E2F37817', 'a85e6085a37449aabffd1655de2fca96', '项目管理部费控工程师', '项目管理部费控工程师', 2, 90, 1, 0, null, null, '项目管理部费控工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('68C0A389d1E1Dd0B74dAC20dFF53DD729939', 'a85e6085a37449aabffd1655de2fca96', '项目管理部预算员', '项目管理部预算员', 2, 91, 1, 0, null, null, '项目管理部预算员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('6A4D1E28d026Fd6DFEdB7CEdB3336AE8D76A', 'a85e6085a37449aabffd1655de2fca96', '安全环保部经理', '安全环保部经理', 2, 38, 1, 0, null, null, '安全环保部经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('917e17168df94c769c2e03f95c6254b5', '19e1fe7765844a88bb4d1cf9fe1d42ab', '云南', '云南', 2, 25, 1, 0, null, null, '云南');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('6BBD0244dAEDBd4B27d24DDd59A3202E806D', 'a85e6085a37449aabffd1655de2fca96', 'ZADCO AUP项目经理', 'ZADCO AUP项目经理', 2, 83, 1, -1, null, null, 'ZADCO AUP项目经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('7111BCCBd06C3d6DBAd4A36dC5633D626269', 'a85e6085a37449aabffd1655de2fca96', '建造部结构工程师', '建造部结构工程师', 2, 67, 1, 0, null, null, '建造部结构工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('7238A21Fd892Cd2582dCF98d140FF18FEAF5', 'a85e6085a37449aabffd1655de2fca96', '经营部副经理', '经营部副经理', 2, 36, 1, 0, null, null, '经营部副经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('72FB2B13d1A3Ad2CC6d684Bd5E8ABE6B2DFC', 'a85e6085a37449aabffd1655de2fca96', '建造部电气工程师', '建造部电气工程师', 2, 76, 1, 0, null, null, '建造部电气工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('04B9DCBCd4214d1952d5F6Ad0283008AF7FC', 'a85e6085a37449aabffd1655de2fca96', '总工兼设计部经理', '总工兼设计部经理', 2, 4, 1, 0, null, null, '总工兼设计部经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('97d32770c5aa4686a61050661b3944e3', '19e1fe7765844a88bb4d1cf9fe1d42ab', '天津', '天津', 2, 3, 1, 0, null, null, '天津');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('0502D388d5C3EdD0D5d5954d938BC6BAAEF0', 'a85e6085a37449aabffd1655de2fca96', '质检部配管室副主任', '质检部配管室副主任', 2, 63, 1, 0, null, null, '质检部配管室副主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('0F8C21B8dD157dC6A8d85C6d1C29746B9626', 'a85e6085a37449aabffd1655de2fca96', '财务部费用会计', '财务部费用会计', 2, 29, 1, 0, null, null, '财务部费用会计');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('99761b3951df4c39ae9a271e80991aa1', '19e1fe7765844a88bb4d1cf9fe1d42ab', '浙江', '浙江', 2, 11, 1, 0, null, null, '浙江');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('05B0B4F4dC0D6d91BCd3BD5d1B9E22596644', 'a85e6085a37449aabffd1655de2fca96', 'ZADCO AUP项目副经理', 'ZADCO AUP项目副经理', 2, 84, 1, -1, null, null, 'ZADCO AUP项目副经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('0D5AD6CCd5DC1d9074dE3A2d89C6DC210883', 'a85e6085a37449aabffd1655de2fca96', '采办部采办主管', '采办部采办主管', 2, 17, 1, 0, null, null, '采办部采办主管');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('18970C31dA9D2d6796dB52CdFD663E19CA74', 'a85e6085a37449aabffd1655de2fca96', '采办部国内采办工程师', '采办部国内采办工程师', 2, 16, 1, 0, null, null, '采办部国内采办工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('1bc1f069025f4844bfdc199306109c1c', 'a85e6085a37449aabffd1655de2fca96', '材料控制', '材料控制', 2, 93, 1, 0, null, null, '材料控制');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('2032C238d1359dDBACdB7A7d169F64D8B176', 'a85e6085a37449aabffd1655de2fca96', '项目管理部秘书', '项目管理部秘书', 2, 45, 1, 0, null, null, '项目管理部秘书');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('b758c7943ffa4dc4896c82f2e8567466', '19e1fe7765844a88bb4d1cf9fe1d42ab', '河北', '河北', 2, 2, 1, 0, null, null, '河北');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('213B91DBdDDABd7008d906CdB539E2A63F9D', 'a85e6085a37449aabffd1655de2fca96', '采办部系统操作员', '采办部系统操作员', 2, 24, 1, 0, null, null, '采办部系统操作员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('B634EBF3d4CF8d237AdAF98d5380114F20EB', 'a85e6085a37449aabffd1655de2fca96', '建造部管线主管工程师', '建造部管线主管工程师', 2, 82, 1, 0, null, null, '建造部管线主管工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('B6DA3002dA597dC484dFCB3d03682C35C424', 'a85e6085a37449aabffd1655de2fca96', '采办部采购员', '采办部采购员', 2, 18, 1, 0, null, null, '采办部采购员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('B966062Dd2858d6782d5762dBB038BC14CCF', 'a85e6085a37449aabffd1655de2fca96', '涂装领班', '涂装领班', 2, 80, 1, 0, null, null, '涂装领班');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('B96C42B6dA136d61FBd2EA2d70911122C794', 'a85e6085a37449aabffd1655de2fca96', '舾装车间副主任', '舾装车间副主任', 2, 72, 1, 0, null, null, '舾装车间副主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('BA8CECA0dE67Fd4C19dC827d061F52637A39', 'a85e6085a37449aabffd1655de2fca96', '质检部涂装检验室副主任', '质检部涂装检验室副主任', 2, 57, 1, 0, null, null, '质检部涂装检验室副主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('BAC57E15d64D5dFAA3dA635d2DB9AFA5E9E7', 'a85e6085a37449aabffd1655de2fca96', '采办部秘书', '采办部秘书', 2, 10, 1, 0, null, null, '采办部秘书');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('BC84284Fd663DdA74Dd0D35d9F3A90FC6015', 'a85e6085a37449aabffd1655de2fca96', '质检部结构检验员', '质检部结构检验员', 2, 54, 1, 0, null, null, '质检部结构检验员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('BCDB4C53dB19FdE150d27AAd0B77820C2C4F', 'a85e6085a37449aabffd1655de2fca96', '总裁助理兼项目管理部经理', '总裁助理兼项目管理部经理', 2, 5, 1, 0, null, null, '总裁助理兼项目管理部经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('e6a91d19173b4252b65fabaa6db0650f', 'a85e6085a37449aabffd1655de2fca96', '审计部统计员', '审计部统计员', 2, 96, 1, 0, null, null, '审计部统计员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('BF3A5481d1078dFACFdA9E7d7041771A680D', 'a85e6085a37449aabffd1655de2fca96', '总裁助理兼建造部经理', '总裁助理兼建造部经理', 2, 7, 1, 0, null, null, '总裁助理兼建造部经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('bfe52cefb15b4b88a6f4fbc33828cc00', '19e1fe7765844a88bb4d1cf9fe1d42ab', '香港', '香港', 2, 32, 1, 0, null, null, '香港');
commit;
prompt 200 records committed...
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('C02CB0A1d6679d9504d3BE9d9D1C80F178C7', 'a85e6085a37449aabffd1655de2fca96', '建造部舾装主管工程师', '建造部舾装主管工程师', 2, 75, 1, 0, null, null, '建造部舾装主管工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('C164CC86d0136d8179dB853d0948DFA57FE0', 'a85e6085a37449aabffd1655de2fca96', '建造部管线工程师', '建造部管线工程师', 2, 81, 1, 0, null, null, '建造部管线工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('C34F0F19d887Ad0493d4EB6d97756E5B76C5', 'a85e6085a37449aabffd1655de2fca96', '质检部配管检验工程师', '质检部配管检验工程师', 2, 62, 1, 0, null, null, '质检部配管检验工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('C3A6FC0Dd57D7dCDB9d5A15dF20CA85D4EFB', 'a85e6085a37449aabffd1655de2fca96', '建造部舾装工程师', '建造部舾装工程师', 2, 74, 1, 0, null, null, '建造部舾装工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('C7B973AEd7FB5dC407d4824d0D66B9AC1A05', 'a85e6085a37449aabffd1655de2fca96', '总裁助理', '总裁助理', 2, 6, 1, 0, null, null, '总裁助理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('CDD211B6dDF41dFF3Ad0AC5dC4DE4E5A7CD4', 'a85e6085a37449aabffd1655de2fca96', '结构检验室主任和焊接工艺室代理主任', '结构检验室主任和焊接工艺室代理主任', 2, 50, 1, 0, null, null, '结构检验室主任和焊接工艺室代理主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('c41836e9a21a4ff5836acb4ac0f411bf', '19e1fe7765844a88bb4d1cf9fe1d42ab', '青海', '青海', 2, 29, 1, 0, null, null, '青海');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('d537ce334f814c5da2a3bd78f0074224', 'a85e6085a37449aabffd1655de2fca96', '供应商审核员', '供应商审核员', 2, 98, 1, 0, null, null, '供应商审核员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('D681A344d40A9d2B89d3CA7d0C2AC6BCD01F', 'a85e6085a37449aabffd1655de2fca96', '资产管理员', '资产管理员', 2, 43, 1, 0, null, null, '资产管理员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('D9183ADFdC7F9d599EdECE7d5457488F5EA6', 'a85e6085a37449aabffd1655de2fca96', 'P67/P71 SRU项目副经理', 'P67/P71 SRU项目副经理', 2, 85, 1, -1, null, null, 'P67/P71 SRU项目副经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('DDC2DC16d18E3d4684dB1FEd48F85B879882', 'a85e6085a37449aabffd1655de2fca96', '质检部结构焊接检验员', '质检部结构焊接检验员', 2, 59, 1, 0, null, null, '质检部结构焊接检验员');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('c84b63f79b7741ac8aa0b35a4c1ff676', '19e1fe7765844a88bb4d1cf9fe1d42ab', '福建', '福建', 2, 13, 1, 0, null, null, '福建');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('E6DFA511d1940d86E9dFB7DdA941C51E1574', 'a85e6085a37449aabffd1655de2fca96', '质检部经理', '质检部经理', 2, 46, 1, 0, null, null, '质检部经理');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('DEAA7C20d5302d5902dE1B1dBEF81CA72E4C', 'a85e6085a37449aabffd1655de2fca96', '建造部涂装主管工程师', '建造部涂装主管工程师', 2, 77, 1, 0, null, null, '建造部涂装主管工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('cb3e856b0fac498f97de11729ebbdb70', '19e1fe7765844a88bb4d1cf9fe1d42ab', '北京', '北京', 2, 1, 1, 0, null, null, '北京');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('DF27DD75d63AAd8BF9d5669dFD9FD28418EC', 'a85e6085a37449aabffd1655de2fca96', 'QA室副主任', 'QA室副主任', 2, 48, 1, 0, null, null, 'QA室副主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('ce74f10648f54e8393f737eb5275777a', '19e1fe7765844a88bb4d1cf9fe1d42ab', '安徽', '安徽', 2, 12, 1, 0, null, null, '安徽');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('E24826E5d92A6dB874d689Ed5AA2A0D19F2A', 'a85e6085a37449aabffd1655de2fca96', '质检部电仪检验工程师', '质检部电仪检验工程师', 2, 65, 1, 0, null, null, '质检部电仪检验工程师');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('E652BD1AdE2F6d4428d77A1d7FEE2D2DDA87', 'a85e6085a37449aabffd1655de2fca96', '设计部副经理兼机管室主任', '设计部副经理兼机管室主任', 2, 32, 1, 0, null, null, '设计部副经理兼机管室主任');
insert into SYS_DICTIONARY (dic_id, parentid, dic_code, dic_name, levels, dic_order, dic_type, isdel, dic_name_group, dic_exim_code, dic_english_name)
values ('d7c2bff4e4e14bd896008338318bba06', '19e1fe7765844a88bb4d1cf9fe1d42ab', '江西', '江西', 2, 14, 1, 0, null, null, '江西');
commit;
prompt 220 records loaded
prompt Loading SYS_FILE_INFO...
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('f3ba5a74c3da4c00a6b907ea0c183587', '物资采购计划', 'module_purchasePlan', null, null, null, '87be2dcb49a64bfaad2dc1ef733516fa', '报价表HK-2017-002.xlsx', to_timestamp('20-11-2017 20:43:44.972000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', 0, null, 'QSNO000009', null, null, null, 'f3ba5a74c3da4c00a6b907ea0c183587.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('7152e0863b4e4493ab8e93c177caa14d', '招标合同模块', 'module_tender', null, null, null, 'b8d36211aeba4b9ab0d4a4149979a280', '报价表HK-2017-002 (2).xlsx', to_timestamp('21-11-2017 09:26:35.749000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', 0, null, 'HK-2017-002 (2)', null, null, null, '7152e0863b4e4493ab8e93c177caa14d.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('1ad59b6bd6b947d7a1fb3122abc7aa85', '物资采购计划模块', 'module_materialPurchase', null, null, null, '6c129d896311468fa7ff28214bc0e3ab', '报价表HK-2017-002.xlsx', to_timestamp('20-11-2017 19:05:27.866000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', 0, null, 'WZCG20171120004', null, null, null, '1ad59b6bd6b947d7a1fb3122abc7aa85.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('f3627caf5cd14a258b414a57d648a50c', '招标模块', 'module_tender', null, null, null, '493f8dd6e69f4297888f16a9bfe0ffb9', '单耗导入模板 - 副本.xls', to_timestamp('21-11-2017 09:02:31.499000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', 0, null, 'OK-2017-004', null, null, null, 'f3627caf5cd14a258b414a57d648a50c.xls', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('fddaf890fd18471e84614c7c43cd4cca', '招标模块', 'module_tender', null, null, null, '6e0e341538734edeaf9c8a224200492d', '报价表OK-2017-005.xlsx', to_timestamp('21-11-2017 08:42:09.455000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', 0, null, 'OK-2017-005', null, null, null, 'fddaf890fd18471e84614c7c43cd4cca.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('c21cedc90c1c42f7a5a17de624abfad4', '框架协议模块', 'module_frame', null, null, null, 'eb86eaf6e5594c259dc973b4712baa14', '报价表OK-2017-005.xlsx', to_timestamp('21-11-2017 08:42:46.131000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', 0, null, 'NO20171101', null, null, null, 'c21cedc90c1c42f7a5a17de624abfad4.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('5d87fdf9f98f44d4b2eb556565b1c331', '物资采购计划模块', 'module_materialPurchase', null, null, null, '6c129d896311468fa7ff28214bc0e3ab', '报价表OK-2017-001 (1).xlsx', to_timestamp('20-11-2017 20:49:29.343000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', 0, null, 'WZCG20171120004', null, null, null, '5d87fdf9f98f44d4b2eb556565b1c331.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('deb4d6b36f934da0ba293656c7e2264b', '物资采购计划模块', 'module_materialPurchase', null, null, null, '6c01d4589a5f4ab0b4165d56da8459d4', '3.5工单管理_删除申请、初审、复审和查询.docx', to_timestamp('21-11-2017 08:37:55.440000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', 0, null, 'WZCG20171121005', null, null, null, 'deb4d6b36f934da0ba293656c7e2264b.docx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('9d3c382e231e4640a606bb9ef11b9bf1', '招标模块', 'module_tender', null, null, null, '6e0e341538734edeaf9c8a224200492d', '3.5工单管理_删除申请、初审、复审和查询.docx', to_timestamp('21-11-2017 08:39:24.516000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', 0, null, 'OK-2017-005', null, null, null, '9d3c382e231e4640a606bb9ef11b9bf1.docx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('64a1cc74291a4ff499932213570def9b', '招标模块', 'module_tender', null, null, null, '6e0e341538734edeaf9c8a224200492d', '报价表OK-2017-005.xlsx', to_timestamp('21-11-2017 08:41:51.312000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', 0, null, 'OK-2017-005', null, null, null, '64a1cc74291a4ff499932213570def9b.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('7b06f002a09d45ed929ba7acb229352e', '物资采购计划模块', 'module_materialPurchase', null, null, null, 'b647da7988764e3d807d6536074bd740', 'GDHX_E02030000008_HXXX_WZXJCJX_20170808144633025.xml', to_timestamp('21-11-2017 08:46:52.065000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', 0, null, 'WZCG20171121006', null, null, null, '7b06f002a09d45ed929ba7acb229352e.xml', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('55142de8a88e43f1872a5b09d3a465a3', '招标模块', 'module_tender', null, null, null, '493f8dd6e69f4297888f16a9bfe0ffb9', '报价表OK-2017-004.xlsx', to_timestamp('21-11-2017 09:08:23.841000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', 0, null, 'OK-2017-004', null, null, null, '55142de8a88e43f1872a5b09d3a465a3.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('1e5229e5fb174ea4aed002042d2ad871', null, 'module_order', null, null, null, '0ee4920a6278463f8e1f3e350aa2a670', '报价表OK-2017-005.xlsx', to_timestamp('21-11-2017 10:31:38.954000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', 0, null, 'CGDD20171121002', null, null, null, '1e5229e5fb174ea4aed002042d2ad871.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('d32b203a422a445aa3428311f097c008', '招标模块', 'module_tender', null, null, null, 'b8d36211aeba4b9ab0d4a4149979a280', '报价表OK-2017-005.xlsx', to_timestamp('21-11-2017 09:24:56.892000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', 0, null, 'HK-2017-002', null, null, null, 'd32b203a422a445aa3428311f097c008.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('d65c5ea66e2949cdb47d9f41d64d43dd', '招标模块', 'module_tender', null, null, null, '13f0401d45fc42fc9fbf21d7ebfe6cd4', '报价表HK-2017-002.xlsx', to_timestamp('20-11-2017 16:29:35.801000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', 0, null, 'OK-2017-001', null, null, null, 'd65c5ea66e2949cdb47d9f41d64d43dd.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('9d0d4fe130744462bd629ed3d3fbca5d', '招标模块', 'module_tender', null, null, null, '9e4b1c02cd6a4a16a54923248d9f24dc', '报价表OK-2017-001 (2).xlsx', to_timestamp('20-11-2017 16:36:05.604000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', 0, null, 'OK-2017-001', null, null, null, '9d0d4fe130744462bd629ed3d3fbca5d.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('40bd6d98d6be44ca9962af18e2edfa12', '招标模块', 'module_tender', null, null, null, 'e94f40cff1f94e5d8e4a6b29c8005421', '报价表OK-2017-001 (2).xlsx', to_timestamp('20-11-2017 17:51:20.601000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', 0, null, 'HK-2017-001', null, null, null, '40bd6d98d6be44ca9962af18e2edfa12.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('133da770064c4306a13fd7371d88fac3', '招标合同模块', 'module_tender', null, null, null, 'e94f40cff1f94e5d8e4a6b29c8005421', '报价表HK-2017-001 (2).xlsx', to_timestamp('20-11-2017 17:52:09.494000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', 0, null, 'HK-2017-001 (2)', null, null, null, '133da770064c4306a13fd7371d88fac3.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('5c256b6fa8234f4fa6a6822b0e886238', '招标模块', 'module_tender', null, null, null, 'b5375aec14d44da698be1bf110a8abab', '报价表HK-2017-002 (1).xlsx', to_timestamp('20-11-2017 17:07:52.402000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', 0, null, 'OK-2017-002', null, null, null, '5c256b6fa8234f4fa6a6822b0e886238.xlsx', null);
insert into SYS_FILE_INFO (file_id, file_module_name, file_module_code, file_type_name, file_type_code, des, fk_id, file_path, input_date, input_userid, input_username, input_deptid, input_deptname, ifdel, u_id, import_no, file_begintime, file_endtime, file_old, real_name, company_id)
values ('9805000fb9c64a1ab9c980503d7895e0', '招标模块', 'module_tender', null, null, null, 'b5375aec14d44da698be1bf110a8abab', '报价表OK-2017-002 (1).xlsx', to_timestamp('20-11-2017 17:08:53.710000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', 0, null, 'OK-2017-002 (1)', null, null, null, '9805000fb9c64a1ab9c980503d7895e0.xlsx', null);
commit;
prompt 20 records loaded
prompt Loading SYS_FLOWSET_DETAIL...
insert into SYS_FLOWSET_DETAIL (record_id, fk_record_id, order_no, flow_name, role_id, role_name, flow_sign, memo, ifdel)
values ('1bc92c5768a747b593bff75a81929801', '5da22dc6a12848d39e5c1db649001057', 1, '部门审批', '022104e6db8b42f5bddbdb005512089', '采办部经理', 0, null, 0);
insert into SYS_FLOWSET_DETAIL (record_id, fk_record_id, order_no, flow_name, role_id, role_name, flow_sign, memo, ifdel)
values ('dbe9d69267354a22823cfafcb68791fe', '813c00590ea448ad9c5a0bd71c2d40b9', 1, '部门审批', '022104e6db8b42f5bddbdb005512077', '安全环保部经理', 0, null, 0);
insert into SYS_FLOWSET_DETAIL (record_id, fk_record_id, order_no, flow_name, role_id, role_name, flow_sign, memo, ifdel)
values ('f123ce94c0694d7eb908c0b0f53feddf', 'a9555c36f3a2432db68245195e44bb61', 3, '测试', '022104e6db8b42f5bddbdb005512125', '主管副总', 1, null, 0);
commit;
prompt 3 records loaded
prompt Loading SYS_FLOWSET_HEAD...
insert into SYS_FLOWSET_HEAD (record_id, record_code, work_type, table_name, state_col, check_val, uncheck_val, order_col, levels, memo, ifdel, other_val, unother_val, service_name, pass_method, reject_method, connections)
values ('813c00590ea448ad9c5a0bd71c2d40b9', 'supplierApproval', '供应商审批', 'base_supplier', 'state', '可使用', '新建', 'supplier_no', 1, null, 0, null, null, 'supplierService', 'passApproval', 'rejectApproval', '/supplier/viewSupplier.do?supplierNo=');
insert into SYS_FLOWSET_HEAD (record_id, record_code, work_type, table_name, state_col, check_val, uncheck_val, order_col, levels, memo, ifdel, other_val, unother_val, service_name, pass_method, reject_method, connections)
values ('a9555c36f3a2432db68245195e44bb61', '20170929', '测试', '测试', '测试', '审批通过', '审批不通过', '测试', 1, null, 0, null, null, null, null, null, null);
insert into SYS_FLOWSET_HEAD (record_id, record_code, work_type, table_name, state_col, check_val, uncheck_val, order_col, levels, memo, ifdel, other_val, unother_val, service_name, pass_method, reject_method, connections)
values ('5da22dc6a12848d39e5c1db649001057', 'budgetApproval', '计划预算审批', 'b_budget_plan_head', 'state', '审批通过', '退回', 'budget_no', 1, null, 0, null, null, 'budgetPlanService', 'passApproval', 'rejectApproval', '/business/budget/budgetPlan/view.do?budgetNo=');
commit;
prompt 3 records loaded
prompt Loading SYS_LOG...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('000c90fff7ef463abf4fbd109c2c7e70', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('18-08-2017 14:43:57.594000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('47def66a64564849883be44fefc23814', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 19:16:13.814000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3a7ccc840acf43d89e469c8f74732754', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-08-2017 17:04:05.421000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('69b42fa0237a41bda63b8bfe5aed3196', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-08-2017 17:26:24.542000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('628f7c85bc47426cb6b8f45797282df4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 14:20:16.525000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7a9bf171b91744b18ddb527bcbbfe36e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 15:02:18.429000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6aa29f10bf8d4355940ffb34c8069e80', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 16:47:06.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ea7ebaac91784312a13b4aa4238a609b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 17:57:05.392000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b35e18015e1140588cf84a2f5a42544c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 18:00:27.958000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('74feea2c2fc44595ad1ade56922c97c5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 18:03:32.877000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('47ecb9ed5f844e8cabfd31d2a45d6654', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 09:35:34.436000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f245feb46d5149b09c68a21586031dac', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 09:52:22.876000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a679a15d18b248ff930d93c2d58a0241', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 13:57:26.324000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('735ce296bcf14e84823a0a94ab1308c8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 18:53:14.699000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8501137c9ad5465db179a5943f8d910e', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 08:47:17.395000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('35040236bf1a45b89749b4497a2d99a4', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 11:27:53.840000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e282f9cb534740169aab78ba9e971609', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 11:33:25.195000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0427c94d29fe47c4a36e3f2748a77ea4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 11:57:46.161000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9619878fc09747538fcbdfeb55d416e1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 14:51:32.577000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c9d51d788d1842b7b0ae01ea6e832eff', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 14:56:57.060000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2f0b1a93e7094e74afdcb9f989432154', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 16:20:07.310000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0e996bc960454480be546803c3670bc5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 16:27:53.830000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7365ecb1328b40d4939a8f3ee3bd0245', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 18:05:50.507000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a647e72f1f154830bdb7e6f373ae3087', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 18:22:16.486000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2b09965a252c4dc69211cdced71ea3f7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 08:35:51.649000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d6b9f374cd2a4c1a8e00b5cd92be1165', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 08:40:41.274000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c561aeb48e11422b88cdf64ab5eb47a3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 08:41:15.661000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f46f715a57b24ec6b9fc72417bd15900', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 08:45:25.640000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a11a674bd58f4a488fe81098047fae29', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 08:49:17.857000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('111280d9304b4e92a2c5188e6bb399f9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 08:54:23.840000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b0224859938a412ea8aea436effdc0a4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 08:56:50.542000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('055b74bff9fd4983adc5c26f73bb7da7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 09:01:21.836000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1ec57fa7fc2541fdb1c696ddf542f01b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 09:03:30.120000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5d1e48407b724b5486942c0ea072cc91', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 13:53:14.959000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3bad99b576214d5d88c5f8585e3f1412', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 14:09:04.652000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c27eda84e4954e499d45fc3239993461', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 14:47:34.388000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1473fd1c1d414563b866684522e807f0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 15:30:28.053000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c1ccfc34e8844fd994c1972db4110cc0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 15:35:25.568000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3c95feaf6b9a4f1bbd7f77a2322ef0f0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 15:55:04.097000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8880b1ccb5464a47877ef9147f215f08', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:13:20.685000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3451c5d5894b40228466806da041611e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:24:43.215000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('444297b171a847c2909e4fa78ecb66b5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:15:35.486000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('debeb4302cf642dab109b14863671b06', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:19:45.166000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a1e1174f33ef4a5594f68bfc3901f4e7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:28:25.600000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8d9404af60034d64bbae28704dfcb709', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 20:45:10.617000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fd38ff88dfde4b34969206e3efc2ef45', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 08:34:32.898000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4eaeb99b9b404b7f9b9838cafe7eaf8f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 08:40:47.082000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8c746fdd7df24de0bd9c2142003671fd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 08:49:05.544000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('24873b18e30842eebcc5a1b271573603', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 08:48:59.421000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b6e07670260e422fb5a55cabaa2aa385', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 08:54:33.548000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3e56dce853ad4d53be7f6907699684c3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 09:05:46.071000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4b9cd13873b849dd8911b0ab00c34b11', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 09:11:22.807000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6c1230ab87634eb7969893e97d6465a4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 09:18:28.993000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8b5dd4aaa82a4e74ab43476c6ec2868f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 09:22:38.806000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1de1cd3286164e5688e1b83b358c107c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 09:24:12.481000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9ca1edbdbbc24a968748bcebe095e70d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 09:25:51.403000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('12119f8244c843da82061c979a700a79', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 14:03:01.752000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('de7bab31d6784304a287cd93b738c6f4', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 14:10:13.566000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('97079987004840f3bb74527f9c6d3809', '登录失败', '登录失败', 'zeminwang', '127.0.0.1', to_timestamp('25-08-2017 14:12:03.989000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e9aa91e5bcce484ebddaa0612e09cce4', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 14:12:12.973000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('340134bb3ef349fe96d08336d4ab6b07', '登录失败', '登录失败', 'zeminwang', '127.0.0.1', to_timestamp('25-08-2017 14:12:29.953000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('55eebba3d874425184a1e481c698ed17', '登录失败', '登录失败', 'zeminwang', '127.0.0.1', to_timestamp('25-08-2017 14:13:33.937000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('014a52646efc461c8fb30ddf9a688df1', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 14:17:06.064000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('07a1097335d444b1bd585e8407d54a7c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 15:35:46.785000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b607ecbd4cb54ee48dc8b82721b6ec66', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 15:40:36.811000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cd7a029a5df140e9882fbff4217f11e4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 17:11:10.919000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('caa7bab52f6e4cd89823fe49e2ab96aa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 17:13:47.186000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('55682209bc7646f0b7097d361db8fb73', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 17:33:41.435000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('35e442e7876b4b068f0076ba71d4e1b4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 17:40:10.923000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2f0b9b047c744abab97dc1cfdfcc4d39', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 17:53:10.862000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2ecd323f016e485984b61cdd54f0f85a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 18:46:41.803000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('02d75195ab3044d8b396e95cc42f7ae6', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 18:57:42.068000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2fa0925a76704e9da669246b65ed37b7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 18:59:56.026000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3b42b51aa39346cba24fc07548a6d487', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 19:32:39.738000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a28dc6320c404918a212200a19c4474d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 19:39:02.528000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8e28d4a26ff74520a7477ff5ebfc9235', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 13:56:50.040000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8051768d5ac849a78ce7a615b1ce895b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 14:15:25.320000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2106619a73f84bb38085fec5785c8aab', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 14:20:29.781000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2b3336c9044b455a90f5274c0ce86646', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('18-08-2017 14:42:35.693000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5bb4bbc2550748d1acbf2ffb3e9f80c7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 16:36:22.657000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('eae45cf5c8f34095b8e3f101653ec83e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 16:47:44.645000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('57a417e9503f4024ad2f8092bb2b8aa7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-08-2017 15:00:14.405000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d9c1288bc4064c228d3312dc1b127a2d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-08-2017 15:01:50.069000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9485dadd870d4d4cbebe4f3f17de7f18', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-08-2017 15:06:05.019000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('63f6d44051b14043bf7975d927fe7463', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-08-2017 15:11:59.887000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('56d4e9b233304951ae2a349713251633', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-08-2017 15:27:11.366000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e9f068a99cc74d5ba66d070f220ebd5c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-08-2017 17:19:05.578000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a4cd33ee136b4c71b486845f9819e8a9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-08-2017 17:33:10.008000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('812840572abb4ef98174861e4624987a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-08-2017 17:05:23.293000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0106fc1796d34993a152342e882b256d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 18:27:50.288000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('16dd7f8afbf14d129d0b4dcce1ffc779', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 18:43:43.287000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('76b0385d4a6b42ec9e985b30da961ef4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 09:12:15.324000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6a028c5d3125464eb55be658d4bce7bd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 09:13:08.217000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('51a306c8ede1491ea877769e1f1feb75', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 09:20:04.926000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('21dc7cd228744427addfc05ab7fd72a0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 09:35:52.254000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c6921fb106aa418da9db4f11f0f26b9c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 13:53:45.814000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('17dd6dc9b065452b802bdb036866a65d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 14:14:20.657000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7562ebaf148347e3951c171c670d47d0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 14:22:34.337000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2788ffdf8be944a8927c6b45b91c7724', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 14:49:46.631000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9df9f6beae51463a94c22ef88a4455e9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 15:20:42.939000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 100 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b963e4051fa141f6a2a51e109f3872b8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 17:53:03.771000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('217878769ed349d7b20a4d98a2ee40f2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 19:06:41.500000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0d46da45e5c147d582cae006796399be', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 08:56:39.055000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('685f8779e1b44a48b85a7f31a018b092', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 09:25:21.291000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9c01663e45b04b7998621c2a1996fde8', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 11:31:03.673000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e534fabfed254813a8888a09662d300b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 11:37:04.176000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5c81aca624d645e792d1f68d9dc42c90', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 11:45:42.068000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f78d2906ee6b42a991d1ef1187636560', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 14:06:42.881000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f0f96fa9cada4bcc9a0e8cfce6b2272a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 14:46:21.157000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a98b6bdc12664de6840f4ee4b0bbd64e', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('23-08-2017 20:16:42.755000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a65d0d6485c04b858f6a2f15b127fbdd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 10:22:16.492000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('64fe283fa39c4f288d2257c1543a7716', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('24-08-2017 11:43:11.742000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('624f9eb5add24a219f23e3c11930f8aa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 14:50:25.327000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4160ae003a17451a9d1a118be2d7d14a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 15:39:33.764000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b389c9af68944e81a8a0caa3c1ccdd6f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 15:43:20.715000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6be9de1a42674d2bb53da5ec966a8d61', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 15:52:12.105000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6dc1365ca0984518bf61541fa0100cf0', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('24-08-2017 15:55:00.725000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e96bd01d4ff049ecb835fe9eb39c5d02', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('24-08-2017 15:59:37.149000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5f98de6688b240d38c100a32e916e580', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('24-08-2017 16:04:47.564000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('770cee269843403c8fd8ea8f79f55081', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 16:30:38.851000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('07fb1d9f39f74e9a8128439282f1fd5f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 16:31:48.607000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2b4d871b2d5643bd9d13c816a416d643', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('24-08-2017 16:53:24.400000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d07d4b5aa734442aa120bb08c2260352', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:41:59.585000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a9a66850eb814bb79a5ed9b4f28764db', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:02:07.676000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('66a87e81688446b3b1ecce3f0c19332a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:12:42.661000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5563d4e7fd1e458e8c7b2971f3d75528', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:17:39.529000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('68bf6ec40814420ca2a046f208c5fdf2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:59:19.732000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0c03e2f59310427cab2f50087b9c5b98', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 20:28:55.006000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('46125e621f534fc7a3aa1837be57cd91', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 08:33:42.584000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dc1d1116fd3745189fdf360cbbd4c064', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 08:43:33.019000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b0ddb620dc8847cb86e0c8507dad0107', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 08:54:50.054000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1afc433b80a442f2abb146190995f90f', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 09:24:06.990000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a2beb85f5b5c470999c07503665a8ed0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 10:21:06.831000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b7c1a147ae0b49778ed92e32693b4272', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 11:11:33.184000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d0598aa6d72a473b87218f0b3237af68', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 11:50:13.110000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2f871433905f45bfbd410a17e1a90c4b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 13:57:37.992000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bfeeb4fcdebf46278a2fc18d5ede86d7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 14:10:46.446000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2a09939b65074aafab45c32672086f08', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 15:11:11.976000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8e07dbcf9a144415b0665dd56b8d0eb1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 15:30:38.870000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('782a5c990aad42e1a0a889d41e32d1aa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 15:54:54.267000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f2bb4eb871b4406fa5e250a90c454320', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 16:07:03.544000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bc4b28c0d1f848998e66b7196d8ab085', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 16:58:53.120000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7e9a2fc9a182479a9a3880552d0fe512', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 17:07:12.252000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c48ebcbc35764852b104d7e35aa84d9f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 17:10:24.967000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1e691fd4869746c48d14a493283345d0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 17:35:46.889000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('be1ba4b8b6b94b1783fa5103b4dd4591', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 17:51:16.723000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7b7a65b02fd943f59c1e1fc4f636ff9c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 18:02:21.561000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('29deb982a2234d98844b6c40d6895043', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 18:07:47.245000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b787f393e52a46eb9ccab7652763b1af', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 18:50:56.783000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('348145386cd74190b074446bb593f1f9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 19:13:50.966000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3a6662beba25461786aaca428ace761b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 16:20:06.973000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a717b200625a4930b78e082a74c5e514', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 16:28:52.877000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6af8ced6f45a4de69c31e0e12c86da9e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 18:12:13.434000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8282326714294130a6b254e5afab9806', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('18-08-2017 14:05:27.061000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('71e06b366de24b3fb895b1522d09fc92', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 15:07:49.412000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('01da5cc367ad4a24979fcdb44a890b20', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 16:47:08.802000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4de11ee88fd0443f893e8746d4464944', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 19:29:36.877000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('75b86dcf608048a0991c1b97a07cf0aa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 19:31:57.770000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5416966c96d04848ad14c813bedacc99', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 19:33:44.596000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('52b467efd13a4316b025f71dd3e44656', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-08-2017 19:50:17.853000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('321dccdb128e429fb3eb755db6964d6b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 10:00:53.669000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9e09ae1fe3af4133abe59a769edf31d1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 08:31:53.656000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('efdaed1d2c5942bdb07f42b0581e305c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 09:33:44.285000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('19eb21f3b0c34aefafe62cff6b9f147b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 09:40:35.880000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c04c55ae1ffb4b3c8d34d81cb57d4cdf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 10:34:30.752000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ea2e88fa84924923bd8dbd0121186a82', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 10:38:35.690000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('652432d0f603477cbaa1ee40a94351fd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 11:01:55.921000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fea1dcf505ec41ce97c1d846df5733a6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 16:32:50.666000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c210409680ab463899515914fa3aee2c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 08:44:42.781000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2a7ebb21990a48d5a10215d0d22841c7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 10:55:05.969000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ce1f88f1628a4e43a5e098a576a0fa6e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 10:58:55.580000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5dc3f22722334aa89d7bd35e9368aa0c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 11:23:44.819000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('35716f6aab0344ebba462113cd3b8e11', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 11:25:08.500000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ce269c91ed2543b69728776b7ed519b5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 12:04:46.762000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8fbedfca5a404c90a39b965f5efbf90f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 13:28:50.135000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3da566ad9ec34977a54476128fa4cb7d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 13:37:06.013000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('aa6018f6527342fbbbfdc0069b1448ae', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 14:18:31.844000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f501bf5f30f642bbb521b38340c70d6b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 15:10:37.973000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4102041cac8b4f779e8173d433b51805', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 16:42:25.491000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c3082c2aeb69460a9b8bb5724949e03f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 17:31:17.491000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('99f5ead6af47461cbb02d29182a51a6b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 17:48:35.017000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c5a892280ab348ea8159d57d1223e349', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 19:13:54.497000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a24a283fafce435d883f0396a0eb5fcb', '登录成功', '登录成功', '系统管理员', '192.168.3.91', to_timestamp('23-08-2017 20:11:17.226000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a82ac34e3f844dd38c71ef092250323f', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('24-08-2017 08:21:15.035000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('81a8bd185fe04401b53ef8b30cba299f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 08:36:48.909000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6d2ff79ba7c242228447322bc864d20e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 09:00:13.201000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ae2dd9a504984203a5137118d967e3d8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 09:07:50.226000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2605b367c40641778453ed3461db8032', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 11:21:53.694000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('44dca548f45d4ce08a3676aab636f998', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 11:42:58.325000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ef9e42c3ec9344bab4f8c1567ce3c92d', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('24-08-2017 15:28:36.026000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ad251308d26a44febc5c9755b634c291', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 15:31:35.848000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('12d7cdd0cc0b4f67a6c5e985fa0abcb3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 16:23:36.544000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bef4130705974ae883ed7a62ba9ac4e4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 16:29:59.493000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('07273fee67a4420dab2ecd3cf4f1c9b3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 16:31:41.796000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('baf0d39ff11c4a8db5f2a9c99b4c8716', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:25:36.894000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4ed9ca767cf34968ace8f9c8c46aa5b0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:28:17.319000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d5311d0b50f54f3eab42d7da00ccb0ae', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:32:29.429000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1beb73d56cd04724958f4de0b19ceb43', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:32:51.282000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4174c9ea0f3f4c91931a1954f806dbd1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:43:56.655000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('80e8140f65d94665a3d0f48158aa03bc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:48:41.624000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 200 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('184f1fdb36d44f2c90a8974400336c68', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:26:06.404000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('68b8b93ee5a44aada7129a3d89998204', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:37:37.262000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('209ab2269b8d48859f2ee69472c295f2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 08:29:39.358000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e4a22296c6a14b94b6cde3d32c120be5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 08:35:29.486000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('40a878875139496790daa6abeac24aee', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 08:49:28.878000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ce81570b2db5477ba8bbbc7f28371379', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 09:00:25.743000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('38aac72d4d7a4bf79bac296479da3ea6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 09:28:19.694000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b524c7fa9a4e44a9b9fb6f0a70672b91', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 09:55:51.367000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d64aa8273a1e4896b964652be28b4ec0', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 10:13:56.759000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('96b3f8d089e147798071e5c8678ad587', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 10:14:00.869000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8914db5745c947219a20c9f13638bc46', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 11:37:06.553000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('531879770c4d494ba51766055db4ec57', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 12:21:47.165000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bd6b8dd87bbd4b9fae36965935b2221a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 12:37:27.241000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('11767124c4ad4134af9726b116e15a55', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 13:14:48.945000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('125b8910101742589e17ed9a22f76f1f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 13:56:48.026000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f4e24e12434445e8af08b58c28ab4775', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 16:41:56.009000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f3bd7cd2694c48acaca93f778b3a0b83', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 16:48:42.549000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a9e285a6725a492fa7f86a7c864657e8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 16:50:45.271000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cfb654134e1d4d0a8ac8dc517e3be086', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 17:51:56.704000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('be5030687f2b40ec9de8708c5a268631', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 18:19:51.698000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('10b53459fd2c42fcb07b352a28f49c4a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 18:31:45.910000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4d5bc8f1fc7e42cfa0764e7a6418fa46', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 19:00:25.719000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('36afbbff25df4a48be274bdf6429fe77', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 19:03:21.783000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d7baa74f710c45f2a8f7b9e3a0abe26a', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 19:07:07.873000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('48c5db6a27ba4744ab2cde3f9d9ec54f', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 19:11:17.926000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('70b48b4ae03a44118958d1465ef706cf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 13:54:04.077000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('816d83c4ed9e4fccb732c15f5d1a382c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 14:35:52.280000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('21aefe2f86e8498baeec422f13f3ce89', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 14:37:59.780000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5ea38877869f49c89328bae567c73f0b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 14:53:14.310000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('be1ee42aa85a41a0b7d899ef18aed86e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 13:42:27.456000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b6085e908b474ef5926e433f9c39b1de', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 13:44:32.174000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5c17a2fa28e643c88b8bd7c307428f7c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 11:35:17.608000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('656269fecfca4750a8abc460f6fe35e7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 14:41:30.043000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('61335daebd1f41b292b7f17e90b31976', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 13:30:39.638000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('733787e9ac96472d9b9e97374279cc45', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 14:44:10.513000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e62dabeae398483d9171b366e3003bd3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 15:16:49.861000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f197f16fd2644f7eab7e605cf985a6d8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 16:16:03.809000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a0f62cab74d64c3288ae011bbe5cb63b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 16:33:24.428000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f7cc183f8cde4ba59a70ec6fcdf31690', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 16:39:33.924000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e6cc72c0dd4548ddb10967ea10e4bbc5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 16:40:12.287000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e71c445485f848338cc3e4b0e7d00e07', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-08-2017 18:31:28.691000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5dc89bb072044fc49bd1bb34cc419349', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 09:37:58.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ae3dd00a869e44bfab675a415230aced', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 13:54:45.556000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e9cd4cf4b7c147f19e9fa7070f59b192', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 14:33:24.108000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6734632c31464a119ba0c26282ede3b7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 14:51:12.813000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('663a4b8080604fd79aad4c70d1a90dd3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 17:30:25.107000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('155443a60836453a9c8973f58be0f92c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 17:30:56.519000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b82c3c938a0547e89ffe396087fbebe5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 19:26:50.142000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1e7d5d8b6397432d8f12573188dab32f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 19:28:13.207000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('29acfa9fb2934499989d7134a6cb4b00', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-08-2017 18:13:29.899000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('09a8e3fb18414f45ad792c3616efcebb', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('19-08-2017 19:28:45.550000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a2b4dc98423b430abf58401c706c0596', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('19-08-2017 19:37:44.468000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2f8e7e3df22c487db4d7aab0a04ccd7b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 08:54:59.485000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e08bc905903246af845c341f7512707f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 09:57:32.718000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('452377235c1241d9b04764c538aca6ec', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 10:03:09.957000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('40f797a4e99748f7b3f594b88803fad1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 11:40:37.818000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('437e9a682d5b4df08dcdf392429f9d3d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 14:43:05.365000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4fe27919b266441bb51af37fd4fd7fbc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 15:44:06.780000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5cca550407c54c2a8034ba7ade5fe315', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 17:18:28.527000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('365948c6d4854f609642690221fc6900', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 09:06:53.504000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7b890213087340beb53e3d1bd29da494', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 09:17:23.904000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('87b4b8fd04124d1d86f4db7031ab3167', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 15:32:15.036000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f2a245ab66e3488296065495413ee04c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 16:15:19.991000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('39d46adae1d44b13b59d880650a372b8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 16:24:35.176000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('39692b7216c44d1c955be318960fd589', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 19:13:51.595000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('783c426f26784ceaaea2a28602f4189d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 09:27:41.379000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d05d48f758624bd1b3b02d0105905865', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 11:22:27.318000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('94403a856df54295ab406b70d577b444', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 11:48:56.438000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c63f5f7f43074d3aa93872b4bbbf9700', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 13:50:20.560000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5e1a8e174b5e41e298980b50dbb78033', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 13:52:14.670000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0190742772d441b7838d6aeab62219e5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 14:59:54.090000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('deecc557b8f043b4a30a6a26e0eeae02', '登录成功', '登录成功', '系统管理员', '192.168.3.84', to_timestamp('23-08-2017 15:36:12.557000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c95172863bf14e4fb1e8ab3ddabe36d7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 17:23:31.145000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b76b0fbf472847e9844492274366e039', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 17:38:44.381000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('874258d179a4418eb6ce776d5f275c61', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 18:00:17.439000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('80df2700d8804c8f9b6c2c2300827f84', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 18:02:07.005000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fa083544d88a43cba94b01a47306cbd2', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 18:13:53.451000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2500a50d39cf4a678d97fcf41ee5a5ad', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 19:24:30.989000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c3a0d73e5f864ba7b320997dc3ee4ef7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 19:38:47.001000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2acbd31a43e74bc7ac0987ac16f49b45', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 19:53:33.286000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('59c99b2d7af441e6b630b50193fc4feb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 11:56:21.204000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e748c73fa3614215ad79e92fa141f2e8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 14:07:49.252000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('150aa3458f484092949ab87fb63358b5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 15:25:34.588000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2227e6503cad46299b7f738527154dea', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('24-08-2017 15:33:15.770000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cf015c625fa340e9b682639281142fd3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 16:09:05.208000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('38c1ba54191c44c784ccf0cf5e316af3', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('24-08-2017 16:52:25.983000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9cd52601dc9943cdaf145585160e2304', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:01:13.566000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b2442cf6329746ea81d467db8b2f38c8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:08:13.977000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d59da1720cc644ad88ce695abd7d5814', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:10:55.141000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('78d1c44162fb4172aaf74ce53068db9b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:50:19.112000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3b88989620874603a1c1bfae4576f67a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:06:13.023000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d9297394ef4e4aa68577db13ee17df26', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 19:17:50.131000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fb644a7c2bc8497daaf7bf053afab610', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('25-08-2017 08:30:34.794000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('60eee07fee0c43ffb4ff26e1beeb3b92', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 11:50:58.031000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ac9bee4f224b483eb5f212a601b2b5e2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 11:54:20.614000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7b34df4f5e2949a689c7b94ec95a193d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 13:43:04.553000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f804eb8f426a45ea86cb54f9588ba768', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 14:28:53.013000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1164bd13d3434e948599b4f5f1b86de2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 14:31:09.308000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('69fd2f72556346a28e7eebf2b20d91d0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 15:50:14.352000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d5649719c22a4ebfa4a6978a7e2c6c7f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 15:55:32.236000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 300 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('07a24f4ace764f1ca3ab07efba352f82', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 12:59:54.521000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('99b945978cd64ad0b546cbd47a203f11', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 14:01:22.070000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('284aa32f4f104dcebca243e3b2f6d246', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('18-08-2017 15:10:50.099000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('feb6428520584ad8a081f28386a4e504', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-08-2017 16:30:59.621000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2d15613069064e71b4dbd9744c520cb0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-08-2017 19:43:28.871000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('410bc48afeef431d9691c4e9915e7cc2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 10:46:52.186000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2a4c7d33f6904e55beaf3f90aef38dbe', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 10:56:55.401000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ee253dad170b4c6d8e84aa45778a91cf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 11:41:57.067000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4d947bb9aa0c47deb5d90f78cb5baca1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 16:35:18.839000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5e03e3cc3bc24f7180b6f337ad312898', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-08-2017 18:49:56.270000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2534bc5ce54c424299a3df8000d59253', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 10:01:12.451000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('958c121e3d6b45f5b55c191004f61f1a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 14:28:55.922000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('68bed2fbe0a74f4590c8d1aaa5c6a02b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 16:39:41.130000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f45c91bf19e9488a8ce03342f56ef135', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 17:23:57.992000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d3393acc290247429a7516b705c9c088', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 19:01:22.874000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d7400a8ef0a84bb785ba2f20fb37e939', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 19:05:24.165000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1a89fc042a7649d9ad1eaa99098013e3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 19:24:07.072000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d627aa5fa87e4c5c9625203c6aecf240', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-08-2017 19:27:34.898000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('061497600cba42bc80b202242e4a523b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 11:29:15.403000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2b50105c26894b1597929d1dac4c3c65', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 12:06:56.104000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a23f353d8992464b902857cb3a10a829', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-08-2017 13:19:10.365000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('88edf362167a4f569cf807aded2ba542', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('23-08-2017 15:15:13.833000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ab9a39b9068a422abba8883f317f999a', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('23-08-2017 16:07:21.492000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('432bcec93ed540a9b2917d3d28deb51c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-08-2017 18:15:11.777000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('da61717bab3842f6ba3d319961c8de50', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('24-08-2017 09:35:15.538000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('28cc98be65ad48bea382d872817c8ead', '登录成功', '登录成功', '系统管理员', '192.168.3.91', to_timestamp('24-08-2017 11:01:17.442000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b5e0b86999754b7abf35739d790847a5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 11:47:05.423000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e3f854c410264ec485368b284039489d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 11:55:12.981000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f97b3cec54be4dbab8f01f46e67d6b53', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 13:41:49.052000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7b896bc4f33d49d9a4a125982ecd013b', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('24-08-2017 15:16:30.511000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bb84fe037b9742749ab8c31063158db2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 15:23:13.033000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('603ef203e5aa4f5c85e0255193c41b47', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('24-08-2017 15:50:17.719000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('168c308a3d6c4cb2ab126eeb606f3a84', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 15:54:06.921000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ab043b4b2d3a49a6b566f4d0046fa1b8', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('24-08-2017 16:15:07.165000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ef985cf09f8843228f3e05b090981854', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 16:18:08.778000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9a2fcd3d5ced4e3fbc8649a33cc76388', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 16:25:58.052000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c92a078a3af34e6087346dc73596c72c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 16:36:53.145000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('606f8e12440f4b5a82a0fbb5ee79684a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 16:38:31.949000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cc863f1e5e9c40eba795371dd222814e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 16:44:05.616000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4674ee8a78424a18825719f091460c06', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 16:48:17.581000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7610e3ff417243969c28bceaf9f80f61', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:17:43.025000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7cbff30e100b4e20907a985c1c1ada46', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:21:58.407000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2251678026d8442d876d39a804d5cfc6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:22:57.409000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5974846f5d19425892b81923456a4212', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:25:31.888000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cf4db688b43a432c81ed663d6ac8f4d0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 17:37:23.904000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4d185d1a3fb541cab742ead113e22e29', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:26:11.410000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a62e58b01e6e4f61a88029bbe131e0aa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:28:44.757000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6392953c11df4bb7ac02fd421beeb4d8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:30:59.814000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dd45d7e2a9e6499ba2bfcc68479fc28c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 18:33:43.103000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8d2ad15f04c640e2ad50ac75bff44a3d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 19:02:18.210000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0134963100e54b739c648478608022b6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-08-2017 19:48:39.997000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d7c2a7aa2c984fcdb616e0df409ee6db', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 09:20:30.659000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4639c9d7b27c4ed182b26fc6df26883c', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-08-2017 09:26:31.048000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('00dc8a9d7e6d47caa0765b65cbb42ae5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 09:43:10.869000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('168c376e2d78469b82e1b3cdf39f2925', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 10:08:29.295000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2f36fb162d924e86bad9abc09ed682a8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 11:35:10.947000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d34b2ed83bb748969e5ff3185af55692', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 13:12:29.035000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d052aaaa1d35472f81fa2747f178a84a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 13:54:24.748000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9b57afd081404265b60dfd7202825b74', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 14:38:45.184000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d672835d596f411f91cd185a27300afe', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 15:28:14.433000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1948d64581394036b4c8879a48632c45', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 15:43:12.228000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9d05a90a5c964f63ac9abe0618e56ca0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 16:05:14.630000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b05aabda22744759b9262b02102df068', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 18:00:48.972000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5f6d5f7e21b24107b76d81923c2961f8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 18:15:31.812000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d2dc8ab8320e483c9ee5314da6552a74', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 18:23:38.503000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5ffe2f650d7a400f984d042848d80fa3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 18:29:55.312000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a68f29f236014358b0ad24ef6ad9f809', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 18:41:07.886000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('57d9568bb632420d9c96f88c82bd30c1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 19:14:25.621000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7f63265ae2c3479db0285e33a5d487c7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 19:19:46.041000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ff5b41986efe4560ae4222618d73d1c0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 19:45:18.716000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cd6ff5e2b76a4b0f8be823a4732350f0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 19:49:20.066000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('11fdcca5307f4519ad974a2363b0c474', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 19:54:05.631000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('06f3d0309bbf46a2af34ee87cf64ea10', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 19:55:52.674000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('601dd4af803b436eb3e12158a5635a6b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 20:01:49.428000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('967d83bc39e240b58e605376763ffa63', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 20:09:53.103000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('27f8a1c5f35f43d8a4317ac4c0a6e381', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 09:34:15.097000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('11d59b63e3be4292a54765ea8be57d8d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 11:26:25.183000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ceb30a2ca78b47a88c90fe0c6ba66150', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 16:52:57.181000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a3d38abc5be445d2bda910b854ac6626', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 18:55:59.195000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('28fdd0d90e0940e4a70a4853499e07c0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 16:10:33.157000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2217dd6a6ee144a787d0e8bda80c8f08', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 16:23:11.984000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4bb785da25f0477ea6a6efce5f597bfe', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 17:58:39.533000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1ce9d13a26e840f697b4a2a5d75bfa17', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 19:14:39.532000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('13b4144747554fbf82b0aa6a55c2153f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 19:16:40.161000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0bd77e4895ff4093ae80173f90da1196', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 14:43:28.148000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e1d74daa60194045a4dd74a4fc9398d7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 10:50:32.346000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8e254136cf6d4955b40bdb4951a7d05e', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 10:50:56.567000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('aa116e96b5b3471192e2857a6d361d3c', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 10:54:39.268000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8a26a6bf022a44249e7a4ec7f43ac157', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('05-09-2017 14:16:30.578000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9e175b5be2f343fb96dc5c0a93cb689d', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('05-09-2017 14:27:26.613000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d73eff9636484022bf03e49644f2703e', '登录成功', '登录成功', '系统管理员', '192.168.3.84', to_timestamp('05-09-2017 14:29:15.066000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a77fbb4900594214bce1a765e979b573', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('05-09-2017 14:31:27.792000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ecae4d3bdfd34f7eae8785f2ea0611e8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 17:32:44.781000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ecc561ebdf294c0299932ba28c353f9a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 18:03:10.627000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4d58a559ee1440fcb277f7b7587b8f23', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 09:26:11.218000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('92983e46299e43c4a8df262c7f436c97', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 10:04:08.935000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f9302c633c104f0ea644e388030121d3', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('06-09-2017 13:18:16.962000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9cf3901e4a5142d5a335752bce8f6f5e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 15:32:32.206000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('69ffea11061445c797464c97dbdb9721', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 16:00:07.725000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ca8ad9dfc5894aca8f6874faa3adbb8f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 09:13:30.290000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 400 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('17778df1ae024cb7946f9b396ed9ce99', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 10:11:38.162000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7ccba460b10a4e7d800bc632291e5c20', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 10:27:40.534000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f1640f61daf0437eb2526dcdff431772', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 11:23:35.612000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('05353315120d49fd8456eb22d93cce63', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 14:43:24.332000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('60efa9ee2d74438486f54decefbd4cc8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 09:02:32.215000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0d38f7b846bb487590b01b8bea66ca46', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('08-09-2017 11:29:05.863000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cd13d3422be44cbb84b55671f14bcafe', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 16:10:55.615000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7a44531f5d894b9cabe487e6c69f3d43', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 16:34:02.562000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('29c7a2b2faa044498fccb2855364db78', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 16:37:14.747000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9c76d8e297294d77adb6db24eedbeb88', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 16:57:23.040000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0274b313edb34ed4a323da01a0c3ddf5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 17:01:14.210000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('80dbce7d20b0434bb8659da4acc958bf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-09-2017 09:11:27.442000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4fe21fc872f84b9b915bb59131d6e335', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-09-2017 09:25:00.687000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f5828a7e14cf4295a18c9f0aa4aaca78', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-09-2017 13:22:30.597000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c0867bd17b7a444fa4eac6d3e3bf7202', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 17:40:45.811000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f3fc2727684441a885d4f683f6f14c6a', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('14-09-2017 13:51:58.096000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b8641d108d2b47bba6633ab75d561917', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 13:53:31.877000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cafdc86e7dd9456fa6264632bffd633f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 14:09:45.999000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('846dc8a012764d6b9adec48e5a928c39', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 14:24:16.225000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7b8ee6bed47245749905bcfe7228c2af', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 15:55:21.835000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ced187b0a8634d87a4fffa91aa1fc336', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 17:04:14.224000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e6f5c60838344891a7801ae6823bfa75', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 13:29:20.011000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('da9b5328b7744f4392c8210169925e7a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 14:19:34.535000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d30fbdc722f546d0849ee60a664fc868', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 14:30:13.353000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('00aad0fe409a4fb6aa29b6f5b1edbb9c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 16:23:07.286000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bb2fbeaccd4147db975790b56f367b65', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 08:33:38.384000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1e9da615130c47a485ce81a61ab2ad4e', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('18-09-2017 09:07:46.203000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d60d038fb0554d409ea9a9f6962f160b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 10:07:55.892000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3a4cdc08921b4105b22c09f7c883b617', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 11:12:41.749000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0d7057c2356a4c0087156ed18fa45429', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 13:56:44.197000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5238df6685dc4b04b76290aeefe93772', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 14:24:48.136000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('89592849046441ee91c22e5e62bb61e3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 14:50:10.208000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d229d24bdd6143e2adec0d431fdef56f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 14:51:08.493000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('762e6df1ef514c6db7a236c68536f175', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 14:54:52.699000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('421ac820ed9f47d3907de1322a633b87', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 15:05:08.919000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b73bb1d463284dfda386fde55b8be6c6', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('18-09-2017 15:50:29.103000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('91a8ebdae89947a88ebad10625ae9869', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('18-09-2017 15:51:56.823000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('535cbcd9e2ff4377b7e15652c47f9765', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('18-09-2017 15:54:23.246000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('328d72d90e1f4553bf11659a5bb61945', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 16:13:54.684000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d67a445bf7e24b4a9981d4e47df4172c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 16:21:42.427000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9540bde71cac4128a282337972f0a636', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 16:53:54.778000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c4f2e8c9194b4ba3a2df03e2cfed4f2e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 16:57:39.611000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('891047bb224b40dfaf8074a11802c245', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 17:38:29.461000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('39e4a77804c04cfe80e68c4b384a76c8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 18:14:55.805000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2604c1a4cdec404994f567ab0562356a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 08:26:52.800000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0344bfb2ec284ddaa197eae67ef57408', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 09:04:12.968000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9085d50108cf4ebf8194cf2ef6862986', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('19-09-2017 09:56:28.778000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('70a4cbded3c34b14aa692e88824ed6ad', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 10:02:29.460000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('352e85f3b51248e0a2e1ef2cd2c060c9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 10:23:23.725000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c400605f720142438762348ede8efda8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 11:37:10.357000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4ba1d842806c499ba4bd7e5ac5a592f8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-08-2017 00:35:50.363000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4e38ac3fcf6349af81c7f825ed8aba6a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 08:21:55.970000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('caffec47d8d24622a2e143d7f5ca3225', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 08:59:48.502000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('789c1f3088d04f998e1de5e9bf1abc30', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 16:28:53.238000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4c6233072e1240a7a1898256f6d38683', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 19:00:40.771000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b0a164dd7b4b481fb76c35704688e3c4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 09:15:23.569000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('351e6593d277460bbe5c4528c4a22e2d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 11:20:14.841000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3453924daf844c83860d181c6cb99744', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 18:47:44.008000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('42b4e35be09f4f4b8b710c767baf2dbe', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 09:32:58.245000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2fee818be50e4239bdc2baebc1c5d2d3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 10:20:24.408000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a15ddf3da467422f84e4b11a8a73c083', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 11:15:29.325000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('edde01ce30594f3ebfbb52f0e3a35c43', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 11:30:26.100000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1dacd0a5f52a4efeb21e63cf38dae64b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 14:29:23.327000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('63dc9a2cbb12498fbe8c621bf706bd18', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 09:14:34.467000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b81827a9bc5c4ef2a563d38daadbaa20', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 10:42:15.075000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2e1e139b126a404698dcae1d714d27ff', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 10:51:26.672000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5bdce26717364fc6ab0e85e7ee2667c6', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('05-09-2017 09:36:32.587000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d512ef58794348e6b23f5c761b4a0dd1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 10:04:12.756000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4b6de7cc7e7b4b6a818bde03d0960f1c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 10:05:19.567000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2c785d0581bd4bf9ba0b4f6ae9c40f1e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 15:47:09.559000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('81c422170b2444a5bdcabeab0099f964', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 16:06:07.741000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c816b7ecf69e4cbfa419228729ec0b47', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 17:27:15.627000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('826a9e71d9604af4a9317bd80a4f764a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 19:01:46.953000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1132b7aecf3f46c98bea0f49b7ee5607', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 15:04:27.458000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4e522ea14d8b4416a05d10694a99a2da', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:48:25.054000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2ff690ed5c4740c2ae2f36c1a8d0bc42', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:49:23.313000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('76a39e22ebed43b784f17b091190a226', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:55:22.164000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('39b2523f07244250a3d554de4bdd378f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 16:03:33.064000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c3ab67bef4464074b313ec39f9699048', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('07-09-2017 16:04:49.968000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('26ba7be21a0e40bca4bc4f5bc56273b8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 17:16:14.645000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('246ce2878d4840d88c1c50d0b3353828', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 15:46:01.004000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('538fbb72125f4fb1a360be9faa3055c6', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 15:47:41.406000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c2eabc174057421a815264f3dc0d5940', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('08-09-2017 15:49:56.769000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('23e470d8a8cb4d71b36dd81979f5ca50', '登录成功', '登录成功', 'zhangy', '127.0.0.1', to_timestamp('08-09-2017 15:50:09.948000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6560d3ae5544470190119475c8d665b9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 16:35:09.828000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9599b0beddba4626ac16d587fe054e4e', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 16:35:26.495000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('722b1481a67e4407b37bbba16e0b0cbf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 17:29:19.491000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cb5b3551db524d03b1854cc15455cbe8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-09-2017 08:47:13.381000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fbe359c58f1e4ecd805ae92f2b025939', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-09-2017 09:01:05.218000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0b45646bd59e4a729ba3f6f27760674a', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('11-09-2017 09:09:20.948000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c0459040b08c44658f6312dcc420bbda', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-09-2017 17:20:30.875000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b9fcb36d500f4303b8818473a0d036d1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 08:39:09.730000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9fa068e90a9b4d0299701bec1a60f2ac', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 08:40:05.929000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('70aa1a049a894d769bccf26f49fcc8ae', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 16:02:35.415000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('33a6d2eba3b94d56861007803fbc3054', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 18:14:13.818000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0ca2fcb1f6314c3cac3d220e2db6c236', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 12:58:01.970000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('56df941c7e62475d8cc1849ee2aa15a5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 14:47:55.463000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('68ab04982ccb4e369c4c62cf21e63fc0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 11:45:06.138000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f97b1e0cb37946b287107cf4b3373cb8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 13:25:11.198000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('56a5ea4b7802417db204517fb5737686', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 15:00:22.379000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 500 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('24e8986a84db4535ae5a9b7c872fa1a3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 16:32:26.151000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c631a773f74543119cfc98e8bbb726b8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 15:52:53.266000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('123334363e1948998806c4de9907eb97', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 10:26:59.197000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('73a8f658c8be4118abccd866bfa46103', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 11:49:24.983000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0c5ed8a001d843c6be2901eb4adceaa7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 11:55:17.881000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0b32193087d543c48dca475d6f762f59', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 14:16:09.063000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('98bd0fa772d740639774842f89806012', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 14:17:14.704000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0af527b2f80a429cbd4d98e784fd6592', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 15:00:37.652000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('05b9e9b6dfe34bde80f5bdc63eed7573', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('19-09-2017 15:00:53.540000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b5ad412af2204d10955c02652061825b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 15:06:05.684000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('925440628d4f4efa9131b8aba211eb7e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 15:07:48.253000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('21ca758823f34e28a489d55db9e1d5e2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 15:28:08.813000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c6a12a6ebca44508aa514062c3754a38', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 15:38:41.532000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('df0c3b0d7c3946fcb39e20641ddfd5dc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 15:42:47.858000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bd5fa0a6f05a4d4e9e27d6890baafe1a', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('19-09-2017 15:44:38.244000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8715701922e54f8d99e2638b5d82c034', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('19-09-2017 15:47:45.725000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b606fbf288634772a89e09624020dd11', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 15:49:41.446000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a507873bf39040ff8b82b1780d5c15c0', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('19-09-2017 15:56:55.299000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('21f38feec5dc483d8d6585f3325daff2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 15:57:09.957000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ed654979f6664895bb799ca83245dfec', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('19-09-2017 16:02:50.901000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cd22f9b45b2f4be3a0bf2bbb3aa562c6', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('19-09-2017 16:05:32.393000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('60c6c3fa7c9f4e80acee857a80947fee', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('19-09-2017 16:06:37.320000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bf30c23e0c964bc79b36576b81262c95', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 16:07:37.071000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('41efbf4474a64cc5a5b0109803f30082', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 16:17:20.364000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('eef0754d01d245d8b02eb2aa926ebe6c', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('19-09-2017 16:18:21.802000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3621caba8d4143588a851c30591f0b39', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 20:43:18.795000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('747ae664052b4b4590f2b03f31a0a1a9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-08-2017 20:52:27.535000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4b103946e5eb48bd99bb32665a270a88', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 13:50:28.847000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9af5f75c483d46b99687499dd87af4a2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 14:45:30.053000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f96af45ebe9a4291ba0acbac4b3e5ae1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-08-2017 00:01:29.755000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c2a9ce99450e4d33b52c115a27e91de6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 08:55:01.790000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f74319291092493b9176a26113ceed52', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 09:45:52.146000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8ab7cd6e65be455cb6dedbe0f1c88d84', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 10:23:11.153000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c0115609b4984e428d7e677600756c29', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 11:22:57.490000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d2f4f671cd894c9dadc094679a99a13f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 13:51:27.580000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3372781f565343a7b8398ba8ee08cbb8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 15:27:34.197000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ef1e956c4eef43f7aa8cd091494f4714', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 15:57:16.917000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('25e08e88051143f8a5906f09dd32286e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 17:54:50.968000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('da6a3393e08646258be2e9b1ef24ab40', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('28-08-2017 18:46:16.398000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f078bec0e2564ca2a96abb966704e005', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 09:21:20.185000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ebbb65b24f3940e5ae3f84d9e330523c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 13:28:04.734000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('47efdbb3a8684140a342d6e67e2a3450', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 13:30:40.039000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('25d0dff22b31414c8233927de5839c5a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 14:53:07.669000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1f5804e5d58d45329d9a01c8a7d1b3d5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 19:02:50.999000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b25ba5e609e6421b8e03dfe233d27060', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 19:05:54.559000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e6806bdd810a47048c7c32c3ba07cc40', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 10:45:56.384000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('75cdac93f1d04ada8d4f54562b28996d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 11:34:56.072000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c03010b77d614a91a392554c6b846bd5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 12:53:41.129000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('03ba1a3e56334b5592ced1a49a6f9e20', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 13:19:43.840000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('69b7d706bf8d4612a829ec2ec4ec681a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 13:33:48.671000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a8fe270b85c842439baf593ec7937103', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 13:40:05.451000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7edbf3f661a54e41ad36f016becfe8c9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 13:40:10.022000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('da81e323d1484bdf8ec2a7efffd16c11', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 13:54:15.361000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4232744ccfd243788691b552cf3946fc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 14:45:44.765000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1f6a8ea802d74ea09effadde9e9aaeba', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 15:23:44.369000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('81100c78a84247edabd57c39c974d27d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 16:24:25.541000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b59adb6f9c6f48a4bd068dbaff42188e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 19:12:23.011000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5594dba33daf4d0d97d5a3594cd9c247', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 13:39:10.969000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d08f59239eb649d0b9876ad55fbfd1e5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 11:53:16.201000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b2a63d61d8044f90a9121c891fc12ae2', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('05-09-2017 14:26:19.468000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('69535a356c804ef2b6cc138784ee116a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 16:16:50.171000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3732c12621e54fb3a2762ec1f8bf6831', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 16:19:25.717000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('304ce0c3d3b74b538fadb7ec34cab415', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 08:30:55.753000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6c9057191b844b299cfe3885ede8b07d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 14:03:47.291000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d1882c06092541e2a1c47f4cf059fc80', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 14:03:52.975000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('77f4ea9fa7d646a086b5a1012667d17b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 16:12:22.348000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0cb3d6c3069742bfa81b09687704b9dd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 09:37:16.787000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c7c021e74bc84d5e9afcd849b9e9ab2e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 16:41:31.896000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f8e898613cf04b1a97c0360f6c80e4a8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 16:50:37.619000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bf18fe647caa4b79b7badc5ca5502102', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 17:19:28.969000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('30f709e7c89c4698ba5a5a6cc4ecdbe1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 13:30:51.584000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c72f92ae7a91405487477f36fce5d144', '登录失败', '登录失败', 'qqq', '127.0.0.1', to_timestamp('08-09-2017 15:38:59.869000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b8a072d9ac004d529e3eab33a6966ce0', '登录失败', '登录失败', 'QQQ', '127.0.0.1', to_timestamp('08-09-2017 15:39:12.401000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('999414f84d9942cf84f27214241969a4', '登录成功', '登录成功', 'zhangy', '127.0.0.1', to_timestamp('08-09-2017 15:39:42.848000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('df4ca497f099456bbaebec7503d93ab9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 15:25:32.268000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('94b8a861bedb45a9aead6339ab3df045', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 17:08:21.115000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a9b61f5a11054e639470b25ee180da27', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 18:06:29.834000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d5829412de5e4b8aa5ff12ee8998e07a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 18:07:05.553000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e67b2a563c814ae38927ea0acbdd1e9b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 18:23:46.735000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7c2e5e9251f445e0b1d9f059b983e740', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 18:46:57.008000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c256090974ec4211817ec709e6f6a55e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 18:57:14.296000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6789ab77f8cb4265b896531d4a8b4aa5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 19:34:52.068000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f08222ba85f24ff2be50ce0eb513b3f3', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('15-09-2017 09:13:12.025000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fa50dda51904476db739b4a7f0e5bd8a', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('15-09-2017 10:17:23.792000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8ec9b5290d414cca933dfbd076480c54', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('15-09-2017 10:27:06.507000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f5bd7ccdd2c244b88b79f0048f3a2d3b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 14:35:57.574000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1f491fad378d476e9d44ef11cedb3f88', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 15:14:38.659000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a0dd36d3b48d4fa197fabe1ec6ee4f30', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 17:43:13.629000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f3aeb67f9eaf4b8cbb1bc66d34cdc23f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 19:18:46.176000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('efa692cef1384078bb50989c2ee32278', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 19:23:12.556000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c44dc12e17b14f7c83fe3a27ed865322', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 19:42:21.275000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a108995a8ceb405ba5d9954d0e1ae0a5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 19:44:42.700000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0a40bb9d9ea04ae7b3f5c27f7025c1bd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 19:54:51.329000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ae0311ceeb2c4e79ba40e034b81194c1', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('18-09-2017 10:21:47.798000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('90216cbf06d24792bed7eaa6ed755a16', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 11:48:25.138000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fa85f0fd2ece4fdb8298974e985695af', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 14:14:58.867000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('637f2b35d8754d5e9910b2786b0e488e', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('18-09-2017 14:18:20.454000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('82c7b136381b45509ba92b87df3453aa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 14:19:00.979000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a7f7681fb2534a469db213ab2c186ad6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 14:39:01.234000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2f340b8bd70e4c36947bd70edd66d36b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 14:41:08.712000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 600 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2bf1918f87e6498ab90342935b10888d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 13:25:50.149000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3d30745206c04307a905f326b89773f8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 20:29:10.199000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b54d3baa8cbb4b2a8c312c021c45e997', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 20:30:51.662000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cb10fb786a8a49e2a245669bf3b339b5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 22:19:56.897000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('44670f1df391440a9f82e1ed81dbd048', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 22:29:31.057000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2648365cd264499a8df342a065eb1d78', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 22:36:34.613000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4134bb556b2f4329b6a1bda467622827', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 22:38:54.273000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('33aea95d35a143e8947775e766b2a63c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 23:04:56.799000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e671f1d305dd4327b0e6fe6bceee4320', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 11:16:54.519000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8f20a87bb38e48858901e519eebcf8d4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 11:18:47.670000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('afe784494bc241d0b8a791cb0b04bf22', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 11:56:56.888000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('50ded90f2ed5416794ef677ea59f1076', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 14:48:22.642000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('225619f3062d4422911318da6e5b9e4c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 17:22:45.429000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e1e30ba708df48a3b70622f3ba24154c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 08:34:09.026000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d30b7c97f174407da8cfb34998d07cac', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 10:30:44.679000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('059cf8890b4a4caa89a44ace4f886e70', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 11:18:39.024000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f15d211a70fb4a78a636611b4433aed2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 11:49:23.103000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a5d47452f2db4f07aa06c116f8832e91', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 13:46:19.457000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('77d38ae8ddaf4748916e90a5e46c61f8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 13:55:11.504000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3ad5919fd48e431780d9d861c9ca735f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 13:57:37.967000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('69774344483b474b8a6aeeb6642ba27c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 13:57:43.181000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f1fc5f2c75474b9e927327f9c1cb511b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 14:08:38.700000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9e059c1ae6c9423d94ced2e0b0af48e1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 14:09:23.753000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b24eb6b7ff08496eac0e28110fabb34b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 14:13:19.272000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('54b3814909ba47df80d22803f6bb2466', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 16:15:55.181000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f544bade8fbe48c0b2ed4f55ffea4845', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 11:27:31.861000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ba86e164c7b8442b9d1f91646d480cce', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 11:30:35.422000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8cee25cfa7e84da6b92e126d920aabcb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 10:08:46.779000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f4fee71949a845799db11317ac981edb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 08:57:57.328000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('402f64c7662b4f07bfc8a17036746e7c', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 09:46:36.650000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('40b00236329745af8514acd61cf765a5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 10:35:18.703000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1e6cd0ddfab248b892386e11e309491b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:40:12.818000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('27683dafde7a4268b61b8a7a07fd96ab', '登录失败', '登录失败', 'xinhsp', '127.0.0.1', to_timestamp('07-09-2017 16:07:30.937000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('01bc1cfddb1949bfaf56cdbd82955d36', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 16:07:46.743000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dd981c6c4ee7427487157dfb6d4c5036', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 17:12:01.050000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('079d95f9f6df4e0d860cdae378d9ddb1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 17:13:32.138000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('792ac4b7ff304551925c46052a5af627', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 17:52:22.964000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6d6d8bc62af1470ab48150a6cbdd1603', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 18:43:09.486000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('770b50d4b18549739e1a957fa4ed78c1', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 18:43:25.059000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f591f794168c40d89a5ecf5efa7e4108', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 18:44:17.191000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c6b7a7f065ce4dc1af37f9a10f6931a7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 19:14:49.898000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ee508b11682f449b8c93503404dda62a', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 19:19:16.849000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('533f2eaab58d4f718066877063f0a658', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 08:51:56.782000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9057ca32704045be9963caac058f30db', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 09:04:05.172000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0af675510d724a7a94792d01c9c9b8e0', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 09:04:26.523000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2d72bd23afbe4df9879f5b2639f51baf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 11:04:29.036000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0d17a3d7d89341f49a3f5576d732efb1', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 11:08:41.100000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('79f6e5e946144e2db5305fdf6db69abd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 13:30:22.248000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('659575cdbd6c4cab810d6da294068f35', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 14:46:17.748000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f9a5c77c03184446851df97bcfad6435', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('08-09-2017 16:14:46.283000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c31f6dd0741c47729499f811ed54d0e0', '登录成功', '登录成功', 'zhangy', '127.0.0.1', to_timestamp('08-09-2017 16:15:37.071000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('72bb3dbd1d3640c19a9da9a5d5ba81f4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-09-2017 11:29:20.449000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('de900ab1eb1e4337bf0b4f0522a86dd7', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('12-09-2017 09:55:03.957000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0ae04356bfa84b068f428e9dbb8b86ed', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('12-09-2017 15:35:10.933000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3cc166b852c8451a9df5694c0c866b03', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 08:59:01.117000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d16a3713e1e84b72a95ef47eb989bf85', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 17:12:37.489000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e5d4087343224a889a022a35432ce1a1', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('14-09-2017 08:56:50.914000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a5b7ab6a8a854715a876d80b0c99f26e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 16:48:45.335000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5ccf0fd808ea494ba5eb9003da13ac1b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 17:25:42.493000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('eb57d85608af4579a2ee1f9c99dfe508', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 17:26:01.572000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('921298023a3f468db47d4fd782fdcf52', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 17:41:04.595000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('163e0eede1d04947a9720437e0653f3e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 17:44:12.505000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1a2e534342a04e94b7c0e42bec84dd70', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 10:10:06.285000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5eb537f1990740ab8365716721b2433a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 11:49:19.121000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2b80f8ca91464a50b34961336e49e2bb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 11:49:26.660000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ccb13be38834422e881aa9a30c88ea27', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('18-09-2017 15:31:55.623000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('deb0c0d796ab482a86f54fefab5ae3d7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 15:34:52.574000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b194d98126454aa390f071f086d5f268', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 19:07:33.009000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e8596137b93e40749afffecebe8af3cf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 08:43:36.657000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1ee67167244e4b64a234699cf2c3d9b3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 09:05:28.772000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cda6e699db6b426188d9902dcf3bfa57', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 09:08:52.875000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('37795380c3b34e4aa89da96fd50c7310', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 09:53:35.790000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0cd42e57027946198d133c190154aae6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 10:27:55.324000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('34a9e90903064518ad15977364705a84', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('19-09-2017 13:26:40.339000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('edadc70a52a14708ba0d8e3d8a99ae08', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 14:28:10.074000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9cc89301c4a0413c9a5c80ba4155aa04', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-08-2017 00:48:58.555000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9ece4d9e9cca454ca77f877149d371b4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-08-2017 00:51:07.086000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9fd234258fbe4eb6b7b51c2ce1731a53', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 08:39:42.011000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d6d3276bba1d4c1f84a887cbe2c4c5de', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 08:53:13.943000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6a5ced67313e4afb8eb9c10fd2b57096', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 10:08:01.650000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1a6418ecebea4704baa13a0ec225dd0a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 10:50:47.697000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cafb1146578c4dad9ba2d80d5d216d63', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 10:58:44.816000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('70f318b8ae5b4917bc70bd98e251491e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 11:03:07.190000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e9a47d3ea1c946848f5bb57318d82cd6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 11:09:31.719000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a97cad81d7954508bfc880df0ba8927f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 11:16:16.124000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('323420791b3d418791b1f49aade39164', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 15:00:51.287000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6fc6158c94fe4c63acf6701292298f06', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 08:26:57.013000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('68d3343ca60c4be1bc3becd6c341abc6', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('29-08-2017 08:29:29.436000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ad733c5daad149d5b60f581488813b9f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 09:56:21.767000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('76a990c34a144eb58f594b834b777877', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 10:25:38.316000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9266f9d4b5b042e4a88a8c26ea50e7d7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 15:57:10.849000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3e0c4835830949eeb814e1530c76a0dd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 13:02:22.053000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('77854382862b499aa4341b75f45a2d37', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 16:20:56.156000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e7ab6b92596b4eb6818f3cf57e2fe617', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 11:27:42.432000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('24925281fbe24c47935b9c006c1a386f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 11:34:30.483000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('92cc28e520124ce4819afc4078e80b12', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 15:35:19.386000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e00008e18d27464aa8854e3cdffc251e', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 11:45:09.964000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('949844e8e0634bd8828c6b922d832636', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('04-09-2017 09:17:08.918000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3ff77b3bd2284ee8893376a1e02a011d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('04-09-2017 13:45:29.224000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5d533c4ae9de4e709d38af9ffcce2c3e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 14:57:57.775000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 700 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3a41bcea49724bf689441a74b07bb827', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 15:14:25.903000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('393f5e8f5a1b4f5fa1292f403d2567cd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 15:48:22.662000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('438d5c9591404c89bd739d466e76bbde', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 18:46:27.243000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e1d504884787402e8f51ad7313c83617', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('06-09-2017 10:16:38.290000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0b6dd9ea79374b88b3618302d3adc8ed', '登录失败', '登录失败', 'admin', '127.0.0.1', to_timestamp('06-09-2017 13:51:46.066000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('693a1a8841b545e582710794407662d5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 13:51:58.765000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bd9db3e3c1c44dad893cc8540778b6fa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 13:52:50.390000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a96dd9172adf4ec4b55a39af29be4be0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 15:29:57.513000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fd48d815a18e47eab9dfa1e4b798ee56', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 11:09:31.537000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('45f0edafa2d245c39f4489aa2f7a270e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:43:05.276000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fd878d2d12f54f3db10cd78a5ce97242', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 18:28:29.689000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0d82e339a28d49b8ade60a0e025f606d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 19:06:17.658000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f4837ca7a026493fa286567c32894314', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 19:18:20.330000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f25f500bc69f456a8e8a27fe23b3755f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 08:36:59.464000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a2d04050dcda4acba0b51854ea7759ba', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 11:41:14.003000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ec9aa8cced4145508ebc37dfd30843a5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 12:01:04.520000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('15359a9ff23d4f52b648d3095ac79968', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 13:37:59.651000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('51443f6154f3476e99b5f3e2c5079a0b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 14:46:04.731000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('48d55715cf504cc7865b6dd054036ab2', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('08-09-2017 15:29:56.870000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('782899197aab4d389881b1a92e329bc8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-09-2017 08:54:09.994000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('42401dbaea354690adea820d0dd4b159', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-09-2017 16:08:39.256000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d1ad61abd1b64c80b3ef8f97cb72183b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-09-2017 16:10:37.362000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3682f627bf8f469c82ea9455b61d21a1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 09:23:02.742000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('77c569c500a44b80b973d32a4945bb97', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 13:39:12.813000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b80016edcc8048998cfc9ff8e0deb2c3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 14:57:27.574000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d6d3852f3be347cfa289a311298c2035', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 12:01:24.935000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ffadae60057c49d4b9d03b49cb7c5349', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 13:32:46.380000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bf510d656fa94ea894ff810704f1984f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 16:29:27.954000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('45303e3ffc2241cea0ef30dfcb4dd8e4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 16:43:05.255000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b779c975911e4f208025477397bacad5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 18:53:12.653000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('28d20a26c9f54c83bfed4d9c877f2959', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 19:07:37.053000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7947afcf7851494c84654bc4595d830c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 19:09:16.868000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1dc63a9770b140e4a06b68ab7c3723f8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 20:00:29.024000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1206e6737d3b4e67b4c4669ee865d953', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 20:09:10.633000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d4d253baafe04a42aeac8416d5242935', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 20:11:59.228000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6c3fad8a9b2d4d9092eee3d6e56b82ab', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 20:18:41.740000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a360cf2f19b44a1e8133f70b05701f62', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 10:49:05.233000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7435dacaf82e45a1929b818f70db797b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 11:10:52.123000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('63f1f893ba584e718b3f9b58baa9bf4e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 14:57:48.852000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('849306ac65614b59a49fe4673c844e5e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 15:02:55.784000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a96a01a068b7458a8a3e76a2a290c4ea', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 16:14:30.457000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('35bd6b3efdf94768b60b9cde3293afc2', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('15-09-2017 16:14:58.351000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0315a73728234cb8b5a49179c87e760e', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('15-09-2017 16:22:17.512000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('705d2cd96a8e47919478d2ef8f7b2896', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 18:41:13.965000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7646beefe28d4fda872119ab0f0c4c11', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 18:44:37.191000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e1dae75494ce46089cd1bebe0faae8e8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 18:47:56.366000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0d3152e47214410ea2a3a51e1a2300e5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 08:23:54.284000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c68dccfb29334594b45b63f85cf58412', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 08:56:39.256000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9bd205b12a764f9dbd8c267cf83ee2cb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 10:42:08.461000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4e9af5bcfce2458c8b3883163446dba4', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('18-09-2017 14:24:42.940000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ed862cebb51c46cb8ec248c5e10255e6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 11:34:04.181000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('298cc40713b145c68c509d0f8e394579', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 11:55:43.924000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2de1d1e260854a8cae304298da9e5e8b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 13:12:55.430000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6587868923074f8fb7d70756c0985cd5', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('28-08-2017 09:07:22.395000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f5b9158986c8445c8067129ef3a8e745', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 09:55:59.221000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a8ba816819614ffd8d3c6cdea3fc0b2c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 13:46:49.927000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('92bde414d55842ac90a541f21314d795', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 13:57:18.737000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1aae27420d424989b51d6baeebafc382', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 18:32:08.057000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f129175ff03f48bd81056ede3f541f23', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 18:40:41.601000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3d239cbbd22b4ebca0c8a7a4e6819e0e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 19:04:39.571000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5eb9502197cd43259e98696526116a0d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 08:43:22.030000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8da9d640aa8242c6bb24c39de8725e28', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 11:41:52.325000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a008e7c7c893424eb6a5cb5a9204f608', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('29-08-2017 13:18:30.466000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1f6f46ea979e472bbcaaf7b2d92296cd', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('29-08-2017 14:40:05.461000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('071474bde6f34bce9c0b5c28cff84067', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 17:01:00.021000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('822cea6b7ddd4b6d94828357cd2bc0fb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 17:28:07.420000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8b23e68c008b468891d2030bd390b40e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 11:50:21.989000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ef30312d027147b1905d2fc6ccb18d2e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 16:25:23.033000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c5abe57fb6a847bb8fbe4ac305cdbed8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 17:44:46.174000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e2b07173f1a640d7912b2b73214b8301', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 08:46:15.070000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('588e7f52d3b0464cb9a680cebba4c722', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 08:54:47.272000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c9c58327fd8c44e5979ceccb8dd7fd54', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 08:57:15.127000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b04b65731e164d68a0c99b6e2ffe762f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 09:32:37.672000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('508658a86717424986c0beef58b21d7b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 15:02:26.523000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5917f442824d4b09b233de74466419af', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 16:26:42.414000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('21329c0865a84bdf9c6beb78f0de4428', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 17:28:54.956000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6999aacc0e414a25ad0c32c4d527affc', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 10:31:03.028000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2c33126cc80c4a199ab24e9b40be0c2c', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('04-09-2017 08:30:06.711000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4448b4737c814b29a8505c87bad7d29a', '登录成功', '登录成功', '系统管理员', '192.168.6.192', to_timestamp('05-09-2017 14:46:08.595000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('51246b865c5947d787e50f6783fe0815', '登录成功', '登录成功', '系统管理员', '192.168.3.84', to_timestamp('05-09-2017 14:50:58.010000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b31bd6a702cc4acaa051cbf11ebe2320', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 14:51:22.745000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c69d68e9419046989b69a86193563bae', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 14:56:20.193000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1533dd2d731942d394523afd242f6dd2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 15:13:30.279000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('85ac573ba62246feb09fa569091dc2eb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 15:55:14.864000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3ef519a44e1648beb04ba33f3e58d48a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 15:18:10.075000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('94b4dd55dd7a4403ab2f16518267235e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 16:46:11.628000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7e94abdcb41e42f5b713065714150309', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:20:36.274000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ef0a8c10aa254540a26031750a7367c2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:21:59.069000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9bb6290a17f5456f8d8eb840fe5c29ec', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:34:47.936000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('249a22102eb14ddbb90d0bced2862c6a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:36:57.496000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f2986ba0481c40be86c0ad1327ab917a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 17:09:27.477000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9c8f3c27c11540358e683705f02d0586', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('08-09-2017 09:25:13.872000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('41ca89a995504481b23925146b597437', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 16:13:06.378000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('104824d17edf4f39bc47b9a48c2254cb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-09-2017 08:54:27.283000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7c2dc3be306f4591b68626b858f80208', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 09:17:47.188000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9f590aad0c5f442585b2d243666e8e47', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 15:41:12.553000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cdf0ff72b2314ebfa1b5190cdf8ac905', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 15:52:04.580000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8594aa25991649a990b8fd2357abd231', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 15:54:00.226000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f89de46f37724e5cb53b251656df5cb5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 11:49:00.075000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b97c4f24b5a040bda485fb30fd2817fb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 12:13:26.520000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 800 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e0a95a560f494c34b22474b1ab4130dc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 16:13:53.134000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bbe924a2ac4840129e0ec75fb5da0c06', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 19:03:31.417000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('aa3537a8b0ee48818f84fdd710c21b11', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 08:44:49.057000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d74fad5901db4373ae25ad32b930b2a9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 09:07:31.634000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ac1cbb444813422188e9d0a5c0e25fe8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 13:34:25.306000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e75c27e9ff33462ea04646c0c43f4c1b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 14:30:27.404000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5343881526254a40b6188d171975837f', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('18-09-2017 15:31:33.705000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b0ff548fa2864507b9241c21d7f2f6d7', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('18-09-2017 15:33:37.914000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('24a03d43741a4c038f21c154f04beadb', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('18-09-2017 15:36:07.410000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b42bb718bd7b41609b5915de2caa5f01', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 15:44:08.298000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a6d13246507f4fa7aaf91bed6611993f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 15:46:54.797000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('feb4ba98963c44028d924cf2919e9ede', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 17:02:23.303000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b23222cb70a54121a94de69493076f8e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 18:54:59.729000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5bc34274efec4c7e9834ff60cf6847e9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 19:00:22.142000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b02f48e1dfed47bd8a12347c50763f23', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-09-2017 19:01:44.734000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e35cf1b900ca48d8b7f69578f6fe400b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 08:59:37.246000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0892b5eea6534596a51234413436972b', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('19-09-2017 09:11:30.020000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('925a278ef7bc45468bcb589d158cf90d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 09:12:04.818000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6df2ab5ddd94488e870f164cc7b220ee', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 10:33:42.210000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8964f34780a642d1a3385afd9f8e36b7', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('19-09-2017 14:07:49.933000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('17f1a0d7fb904372a3d234715c529d4b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 14:20:01.443000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('75a6a78bae7c4eb18d29e7316c1cf87f', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('19-09-2017 14:33:46.285000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3fb92e79f95c49c28c23a83b981625f9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 14:38:57.898000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b5df2aaddaca49f59ee912170c12fb47', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('19-09-2017 14:57:59.740000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('74d5b0ecf48e4149a2aaaa985551ec71', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 15:07:41.114000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1c77cf9f1acb43228ed179a2160a122f', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('26-08-2017 15:11:24.207000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8a6b1b297040403380577c720599c3ff', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 15:17:02.600000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3c38d72f4d114195a6d90a6d86739b57', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 15:28:04.449000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('913c5349532b4763ba84dc316bedd522', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-08-2017 00:20:56.534000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('57328dfe387d4866bbb4c8e365cabdd9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-08-2017 00:24:44.016000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('924991c0106d4fa59e811ffb4725c84e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-08-2017 00:29:48.961000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7d6d2cc2674a41b98e8b14b24a4f0a5c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-08-2017 00:47:43.545000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8f9f292662de4279b7dca8410f2c8969', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 08:35:30.587000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e7c0b177e6bd483d93e4d27830e02eda', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 09:01:15.281000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('542c43a5ad4b4785ab737abf250faf56', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 09:02:28.689000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('364a9554e4ee45a7839fb61ecdcf9962', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 10:06:20.962000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2450b348feb740aab11ae1496f13a28b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 13:18:47.991000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fdb23ed4be9149f7a692e503e5866925', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 14:05:56.461000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0fc9c1bb505b402882aa73b737e68020', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 14:47:34.233000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f5c3a5bf75064123834ff49f1cfec79e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 16:12:30.327000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('edd6163ca0aa4fa8a3b444ae873865b3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 16:25:37.501000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7a4fba6fdc6349829ad7aaf782585509', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('28-08-2017 18:44:05.983000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f74c989ee42449f287797f8e4a21ab49', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 10:34:47.600000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('76429c56e5b749dda680027cdc4b1a2f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 13:52:52.667000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('43ed568d05cb45f08edaae5dd0844c4c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 15:11:41.489000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('38cff687a9fb46d785920d781675c0ed', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 15:17:20.631000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('320eecef7c1f4f4eac5476c0ffe34985', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 18:24:26.652000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a75250dcf97a4ccc9aa460068636a601', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 11:12:28.206000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4bdaeaa10778452c9a51bb4d48a81bc2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 13:26:03.362000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('80e24c9b31134d088ba9f2caa9aa4321', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 13:43:17.493000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5324fb3571074b0fbd7bbe7d383c2276', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 16:25:51.339000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('611b6a7e83404387b4b767387f1a1f64', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 16:35:26.336000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fa5fdd29a75c43b3832429c6bed7e2e0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 19:19:46.541000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4536ea88d18047b696d281e707cbad9e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 08:53:36.553000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('87d29e4f7717402ba921980ea0e4f09f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 09:00:49.420000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('df1996cba9b4471b8f4827657411899c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 08:43:16.337000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f0ecc914349f4fee901f6556181f6073', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 08:51:34.664000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d8f62560fcc0405398c196c3e541b27f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 10:29:55.162000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f942d722c9c34b2b9074d1fd3030986f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 11:38:39.524000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('449d48b875644bc585cdb3fcf63b08b5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('04-09-2017 08:27:59.991000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('233e052ede894d9bbc38bddbd8a99534', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('04-09-2017 09:28:14.595000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('96251e55faf34476970e679902498884', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 09:00:10.565000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('891c942e9027475f858e3f473176f073', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 09:14:13.595000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3590978f95f342aba91951aa45d41f21', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('05-09-2017 09:26:52.583000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('22002f1270ff4b00a8a9be08e96019de', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 14:17:03.481000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('df1d3309708847e99e2cf3707bd8c84c', '登录成功', '登录成功', '系统管理员', '192.168.6.192', to_timestamp('05-09-2017 14:24:13.888000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bb23cf6f28de4412aab31846f704de99', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 16:07:38.844000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3a2794d14dc34854820f9cb42cb8a97d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 18:30:15.915000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7d1e6e381cc443fc830cdb607b799f3e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 19:35:09.608000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8cc3500c3be94fdb8f50bc29a9a2c7e7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 08:32:54.360000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d861ff1cca0b4058bf428b8c4e1790d6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 15:53:44.163000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b2384235ebc94cb98afec22a9095b7c2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 15:54:24.254000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('10bb571a63354fa98ec41505a32d00e1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 16:05:28.158000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('796eba357b7943869bb5f804a75e71b2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 18:58:11.568000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d2faf8211e784a3db7541ca7cdcd6d16', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 08:38:21.834000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ec3c23f45c0842a4a72575c819c6fb69', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 13:45:58.845000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('610508dfcc064d0eaadab3ab3248b3ba', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 13:54:50.597000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1b0300f7651e43fab1501bbe252af0ed', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 13:56:55.783000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4a74058eef0745cf807b4eb2e4a8c4eb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 13:57:52.004000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9f3941ce77c14851bfd43d05258744cf', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 14:19:31.287000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8893d10d73144c31b718ee5b6668c842', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:00:45.661000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('09b1e18e7912472eb76730e36a9a2692', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:39:03.939000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('79c94680df934924be5d63750c97d7db', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:56:36.783000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('971e4e466c494026814c69ecff4dbfec', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 16:03:54.644000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2e1e206b4ef94b869e5268a75038e328', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 16:05:37.788000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('832fb0a38210453aaf29326f7d290f47', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 16:06:05.319000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3aca5db046684d36ba4dd5fefcb56649', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 18:49:00.335000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1235dc2f36704d12949d7cd5b282f404', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 18:49:24.506000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('93982607f3b94cad801ec40b9de2071b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 18:50:49.401000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('60b7155be4314e84a57440ee0b8a9bef', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('07-09-2017 18:53:23.314000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3350bb6459704ad9a08bbde716a9bf93', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 18:55:34.888000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b8d8539166d045b48bb8a9be1c350767', '登录成功', '登录成功', 'zhangy', '127.0.0.1', to_timestamp('08-09-2017 16:02:58.007000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c00bad5684714920bfc71506dbba1d26', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('11-09-2017 08:46:50.585000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e9948a32f50843d9b03e65c59cc1a7b8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-09-2017 09:04:25.060000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0e3d82fb01cb4c9ab0c8bc5f1a87b99e', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 10:13:51.063000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('baff011bb4304cd48018dc0456cb123b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 11:20:24.684000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fe359809620c4668acf123020b628de7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 15:12:14.695000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3028efbf97e4476b9820790f3b28d891', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 16:39:31.583000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('48fdfd247f5d4cdc9b2430eb663ec307', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 19:17:25.502000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1b591ebcdbd64b7a9f5d1790bd4ea4eb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 08:36:09.293000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 900 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a0387b4295994a3c8c85a2c4039ad1fe', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 14:41:56.585000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6957fdf77c7245528728be0023d47ec4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 15:50:40.499000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('52d13bb745fc4bd3be31cb1ac0522ae7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 22:03:52.331000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ebc7a968412149f6b56a966cfe7071d6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 22:25:53.257000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('103369e149d440568b4f0b9dc064a5df', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 22:28:26.312000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a81576ae5f38462180d01ef3b910d454', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-08-2017 23:58:16.870000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d277aeb1e44947c6a051975b7bdf5552', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 09:30:06.675000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2baeb3de2ebc4c9095db016a3448e3d0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 10:37:31.371000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9ef6d9b0d94c45f8a48a21ef67b7afc1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-08-2017 11:46:04.246000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ec0aaf18594e4ae7a8c6d4abd608e364', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 14:23:00.071000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3005b7eccb764b69b48bcd677d0a59f6', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('29-08-2017 16:28:45.673000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7ea0f7c517cf4a45a30d16bea464f409', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 16:38:41.744000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1bf822f3cc8f4384a092005d9b2245c7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-08-2017 17:17:03.561000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4019da9160724e16921665a93e5044ef', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('30-08-2017 09:10:38.239000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4d9657b7af9d4ec4a20b130b8c772247', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 09:21:47.625000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b018f279f54c48a2afb4e202f1e622b9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 10:52:27.888000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('73de32d3cd0b40d6a4eabda0a533b595', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 11:32:00.006000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b300f35e3ea34389bf093c09df788797', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 14:01:05.279000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7f9df4d2a21d41fbae153b96686c64a3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 17:47:16.962000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d09206b75cf24c699eed9d44fdb47a58', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 18:01:08.087000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('06bf04ea033e41908c5972c0ffdb95ae', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-08-2017 18:57:31.739000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2f60cc59f0b34f7ca9dbf5283aaa3d8b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 09:34:42.482000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a7c355cb5ef049089f4c5e3886c5bc7c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 09:42:57.105000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('45a47ac103fe48c9a3312231afd94d7a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-08-2017 09:46:57.894000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b6494cdfc8d44818bddc99203a0c85e3', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 11:26:46.465000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fe89968a670946fab7fcbcfe56c3c55b', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('01-09-2017 11:36:28.467000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('94021309a2a14de7924c283af823f128', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('04-09-2017 14:11:35.195000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e22b0a8d1b514f799eef7e4fec6a4e37', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 15:14:52.676000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('940a2c93932d4a95981c5ce4e4e69005', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 18:03:59.203000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e15427948d684463b1607d4e433a8387', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-09-2017 18:48:35.442000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0f356af798ec4bc4b1f30eba0624d8e7', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 09:47:46.391000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('eff2edac80ec413f8a4a5d4ca3259b98', '登录失败', '登录失败', 'q''q''q''q', '127.0.0.1', to_timestamp('06-09-2017 09:48:48.877000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a5e6f41eece64d08ab20f6cba3462dee', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 09:48:56.127000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('177387ed6f9c42ca8e93d380981eb6ff', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 10:02:23.865000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fd5fd3628acd45aa84475b87a3163b37', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('06-09-2017 13:46:56.315000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6aadbe78f728499e96b0a3895ca79ece', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 14:54:01.418000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('51b40a76533c4d59ae933750186e8627', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 15:28:15.054000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('527682b24b58454ab96de0e05e74bde1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 16:23:27.234000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('98062f77f3144b2fa0f29492fb74c76e', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('06-09-2017 16:32:44.336000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('011d6602b5a4400db88739a24ea302a6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-09-2017 17:46:14.514000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d17fcb4c33454ff08d4d19f6ced4871c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 10:14:59.793000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f5daa39e45c14b74879e550d9e922d98', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 10:45:06.037000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('25fee61e46524c8fa1e0252e17bf8c29', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 14:21:32.209000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1d6f9688860244668b3318fb79679583', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-09-2017 15:33:37.848000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d80d02ef918c4060a063a4c1949a5ff6', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('07-09-2017 16:15:28.328000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('24fa8be1688e45d1a0172394267c80dd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 08:41:43.653000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3d11e120ffe348b084dad6e6c963da14', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('08-09-2017 16:19:54.784000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9a1b47fdca084e16af535c87cffb5998', '登录成功', '登录成功', 'zhangy', '0:0:0:0:0:0:0:1', to_timestamp('12-09-2017 09:23:39.039000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('248d0a2747f945809461185a396aebc5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 10:05:30.129000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('02afade50bc640d7afa58a9c331496c1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-09-2017 15:24:06.636000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8e10060b5cd84a06bd106db95672c666', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 09:30:32.113000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cfd0defed8e54146957066aabdb871bc', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('14-09-2017 15:01:52.303000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('65dec1bbc1e94a4da80cf6bb442a847a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 15:38:13.759000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('36e67e9cf92740e390458346d23b0a72', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 16:38:30.256000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ce62a22ed9eb4b8e922c9a0b4a823fec', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 18:03:08.793000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c81bd22a7c254a57a659ad6af9157a3b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 19:00:51.621000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bf96fdc959b94ce0be2aa1f195ee48aa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-09-2017 20:14:38.049000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2dc294db7bd14db7b977f7744e037d67', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 08:46:38.291000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6521965b66f1491ab0e2af04e64fe340', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 09:07:39.109000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('56e59bf762f04f38b8c2eb2b0ba6559a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 09:07:45.363000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('008b09f3c48141958a5268e0a47af77d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 10:52:24.944000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ea909bcbcf214b3f92ef334849447655', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 13:09:06.131000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e3bc50f943f44683bb4b2fc19b19e752', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 13:18:31.850000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dd52ae7370a44e3089ddd08be5a2b6b9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 13:22:46.589000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('77c03940d88e4b67a963595391c7dcd4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 14:12:29.443000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a749bd6712ce486abf1a983a2b25271c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 14:18:31.238000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2a7a091d03a742b382022091601fd936', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 14:30:48.140000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4e262a29ffb94e94a8a5c2bec964fb78', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 14:31:30.159000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('542d1ae0f38541bfa4becd5c6070ad05', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 14:47:46.884000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('53442bf991904536a4ea835ed345a471', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 15:01:56.237000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('944ace6e0bf64d819ecc82d54e514cea', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 16:26:14.049000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('037a32250a9346848449a1587b863d04', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 17:47:47.703000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9bbc2e707c9641e69b8bc562cfb00189', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 17:55:07.855000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c02b78c82c2c4110897021b0b7d4d749', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 19:09:25.272000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6250e7ff040b47dda908365f18e3006c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('15-09-2017 19:28:13.108000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('70fe163996474d50b964e1a8b3f5ecbc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 16:32:03.018000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('017fd11f68fe46d1a848df4f19e9648b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 16:32:51.278000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d8ece9a46ef64296a9e00d79c48036c0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 17:16:03.554000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1caea900b9a64a01b6a11c15920f6d9c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 17:43:16.061000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2d686e668be2451fbff0d986e937b2eb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 14:03:55.659000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f084067d3b984fc5a677843cefca14a3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 16:13:19.410000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7ee9b789bf794ffb91ba1c56cb227dce', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 18:40:54.546000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a0eeeec0b0894a3fb571ed23ecbe16d3', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('21-09-2017 09:21:50.611000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('133184a400b14bc38be5272a7d495a5a', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('21-09-2017 09:23:31.200000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('93a492e0dcc34e6fbe20cff7509444f2', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('21-09-2017 09:25:04.675000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('76660497a59b4a79b7bccd67a39c331a', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('21-09-2017 09:25:26.858000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('87ee162181724dd3885dd45284b6a9b4', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('21-09-2017 09:28:46.804000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('27c0dff0f652496e9be38177fafa2acd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 09:29:42.572000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('279e04e505b34be586e7cff08e4056ac', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 09:30:40.392000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7089fafcf3914525855efeb5b8afd6b8', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('21-09-2017 09:30:42.946000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('12ad2884780d446894f3792712fc2d49', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('21-09-2017 09:30:55.130000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b543766ab60a4d608de23307f31dec35', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 09:32:07.697000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4371dd7ae9bf4b6ca53adb973ff09797', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 09:35:17.984000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cb7a34f0508246cabb8e8cbbe746b9f7', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('21-09-2017 09:35:20.158000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d0491c4841414c12ab20dc3b6cd3abaa', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('21-09-2017 09:35:57.879000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('402106ba74dc4320a863eaa23808f480', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('21-09-2017 09:37:32.244000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('449130ff2d264909b920266304abe678', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('21-09-2017 09:40:13.096000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('aacbf172d1ac483b9e6ab58ab66e52e1', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('21-09-2017 09:41:27.180000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ceb769b84f44459297a0d52805187b1d', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('21-09-2017 09:43:33.260000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8532a8533e174cce91d3a0f33c83379e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 10:30:15.244000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 1000 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7bedbe6ad2ef475885dda564c670d740', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 11:34:38.978000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('63dcdc96f1e045da898409d67249196e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 13:06:21.275000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('81f01ca52e6940288838ae81d6532a32', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 13:07:46.574000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('18983abd6cd347a2a8aaaeb2c7303fdb', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('21-09-2017 14:26:33.735000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5290c2db3f25459a8f7d8c84878b1a68', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('21-09-2017 14:47:44.964000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ae3c5fc65326495892357960332c6566', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('21-09-2017 15:18:25.674000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('90488db5bd3344abb7b7ba0c05652f8c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 16:05:24.767000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f7840c6432e84ad8bfcdda9d659c314d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 18:21:18.066000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5d3f18d4a0bf44ea90b32e715c327ded', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 19:51:22.993000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f92db4cc37ef45eba80e999e36df04c5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 21:36:15.015000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0068f19753db4ed99f40b973b5306afe', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 08:27:12.010000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f1e883cc685a4d87ae64b0bf6f6cb589', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 09:26:27.873000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('73146cee256e4479a2de44b6210d048a', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('22-09-2017 10:36:48.632000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2f8540b7d9e24d23ae078f3ce748a21a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 14:20:35.388000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('afc56f8bf4e946d29de120946ae5ee69', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 18:34:27.271000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3349d2fcbbc74afcb0ef22f6e33871ce', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 19:00:08.495000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9d1b985a49894fc1b31cc17bbf6e07b0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 10:00:45.654000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d7c24bc64d1e4444b62bb4c019c825e7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 10:10:56.513000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0a5a7b94bf1d481c8f1c6905adbd79c5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-09-2017 12:43:47.160000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e678b630390f41b997fa8c1ff01c4b24', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 08:40:33.692000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1b8e77732e7848bf8c9505b179616a89', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 08:57:07.031000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('25cb3190b85a40e4a018b635f7d0ea78', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 09:49:50.879000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9a1c29e6c71a423ebedb09d38ab655ef', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 10:55:31.627000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('69e097b6f005471f96b3423e5b397d57', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-09-2017 11:25:16.183000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d5d4584f96f6437a9181199abe461aba', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('25-09-2017 11:29:39.643000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c96612fddb0d45918051b56085c11576', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 11:46:53.517000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bbcbb0fb3f464a6094431fb21f831265', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 11:50:09.727000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('50769014fca94e3897041498bba3805f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 14:44:15.500000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('09858b865cb54c76ac730c68603680e6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 14:57:58.205000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4c84678d57364192b72d77b9d4d8a67a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 15:15:50.354000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('846b6a9001584a0fb7ca0b0a7f725c15', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 08:43:05.658000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ff5f135ebedc41c2bcf3aa73f2219959', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('26-09-2017 10:02:17.506000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('72602be7ff964f47a57e342b61a2ea9f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 15:47:12.812000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6d5059ff2cc1413c8cd3dcd6769ba4f3', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('26-09-2017 17:28:00.497000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('09167433e7e8425e8a83d36f31085264', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 17:37:32.550000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4a9216d05c6c4c189601540ff7c452f1', '登录失败', '登录失败', 'sysaddmin', '127.0.0.1', to_timestamp('26-09-2017 17:53:28.265000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7286b986c2a84f5bbe9cd993a89e3b49', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 17:53:42.382000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('609851bf3ca049e3a4afa95f1ab040ae', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 18:16:08.392000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('aa929c684eab4b14910c22f705b979a1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 18:21:57.044000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('98c48e44894e40bf9404b9b2cd73f941', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 09:43:42.402000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1a20c0fb419147d8ba2ef90bfd4bad0a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 10:08:49.677000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c259421403b1414bb4e45e938a825a41', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 10:41:15.182000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ece43986f37e43ccb28b9a26da8d429f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 11:11:17.596000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('10938dd86b9c4b68b7a0e3b195dac5b3', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('27-09-2017 14:26:19.072000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d97d2000f2a347968f99f99df06a9831', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 15:02:55.441000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('44e8472e7d764459b494f5c27efa6672', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 15:34:31.235000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('84a1fd8846ae438eb9cc144759115728', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 16:12:27.660000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8964711ee48948c790039a54871796a3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 16:26:18.834000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e9431c3676ff4768aba9e63f14d7e280', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 17:22:24.309000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('85a8671c11644d39bcca1eec6c9ff48c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 09:14:16.345000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f5021228146c461e990f8dda9b9bf97e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 17:06:39.269000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0f4341d5989748449671971d0c9c75c6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 08:58:40.555000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f9bb946e031d443f8f9b93f04c410503', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 11:07:37.957000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d1a9ded94d614918b601e7f07864e6df', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 16:50:49.391000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('89c54262307245ddaaace6e04fe2e8f8', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('20-09-2017 17:01:36.479000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e7a0ccb1e9db40199ac571d0290b5e8e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 17:20:04.407000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('345c0309a1184538883ec78dc4c489cf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 18:22:09.614000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('342094a9c1c145adbea6916a97a52e15', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 18:23:31.558000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('67d895fe3324411e9549f18546e643bf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 18:39:50.412000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a898181d7d114d61b9c307153cec7596', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 18:56:48.769000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8209ad2339b14914a523d5e02c38904a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 19:04:29.961000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6194d74d5aa14054b2c16749c1be1ce3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 19:05:51.237000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3b0e8fc5986a43fcb11252d3103ac15a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 19:07:42.341000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('79537930e9a240dab750fc715d41ec0c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 19:17:47.504000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fb6801f61cee4fe9a901950354807a51', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 15:44:09.890000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('caeadddb8a8c44799ece1d8357f2998c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 17:30:54.909000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e4c1bdafa6424b96a02b8d6c9d094412', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 17:31:55.419000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('580a8b9aad78446da1a911294104e472', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 17:36:34.866000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('837f451330fa4f7898df7d51116b2de0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 17:45:22.498000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('54e79b7c034f41cfa20a13608fcf140b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 18:45:30.135000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2f9cbf52c9d141d8a83f49eee025fe72', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('22-09-2017 08:59:40.225000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fb11614127574aa59552ec051c11a4f0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 09:30:20.904000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('20a5fe1a51514769abe874294909d4b4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 10:17:42.210000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bdbfb557142046f29e19e223ca96d4af', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 11:45:39.426000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bcd7675b63b24d1483de54c068ab03a0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 13:40:20.714000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('53c2619d0d8f4beca13eece93245bba1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 13:51:33.007000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5dd376876f6c48b99f179d6fc0c71e05', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 13:53:35.294000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('187a582446fd4801a16a1dbc26d000e0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 18:19:24.643000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('55d1c4e15ba64a8a8957caa3c03fe6fd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 18:36:57.715000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9c1f33c2c0bc4bd494e8f1cb20b63be8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 21:12:23.754000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fdba7c1122704e72b3d263291d1a2014', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 22:48:18.757000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d138f2b6a2274a3791afbd203daea915', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 14:18:32.383000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1917ff51c7de4488ad01279f17fb04b7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 16:59:50.185000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('24155dbbf1964f4294243b4721d6889a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 17:11:38.521000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('179d39975ae345eba6c61a4da0c14d18', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 17:31:18.369000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3e622243b26e40f6852abbe7e134e046', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 17:33:40.032000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('951436ca72ce4311baba3c8b01f55fab', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 17:39:05.757000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('523e4c012fe34499b5f6be7e5bffa087', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 17:41:15.691000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ff393ec7ad1c4c40ad697b516d347933', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-09-2017 17:30:00.911000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5bfc15fcb32748e68788d59d0fd50c4d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-09-2017 18:26:21.025000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c354287926f443ec94773b64c330622f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 09:10:12.226000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('49f8c60aec1e454b97386f5554ca5f96', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-09-2017 11:27:40.879000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('831555a45fe8461485f5778720a16900', '登录成功', '登录成功', '系统管理员', '192.168.3.76', to_timestamp('25-09-2017 11:27:36.715000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9556669d031f4bd19c7660c962e513c2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 13:49:56.108000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7244a3e660e24936a1ce5d390fcc74de', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-09-2017 13:51:24.014000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2eacad9a32b34e45919e710be299af44', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-09-2017 14:05:47.261000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e101fae380ee4e2a8e186b4c0530ce9a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 14:32:10.467000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b99947b12c1043cfaaf64c7c9a65aada', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 14:33:47.779000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9630353ba7454f039f196bba7db59286', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 14:40:07.604000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6b4c44f28a09491585f26e80ddd3bc6a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 15:33:50.142000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 1100 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('60b13aec625341819627a00331255fd6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 15:46:15.132000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('faffed4f4ca44e1888b8fa2ba09d9dc0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 17:40:06.847000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3233986863c8499d8eaa4dc064c13b58', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('26-09-2017 08:48:23.495000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2bfcf91077424401a398d9afd1ea9f39', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 09:48:18.731000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('40c552c91ec84a2ca85150a8603417fc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 12:03:51.401000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('05b992c89216468f8db66ed109119917', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 12:20:06.322000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2eb63b5a599b4ca5abcc650cf8b00ced', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 12:57:14.744000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('803b08a9a8be4189b913a869211a5e05', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 13:13:55.450000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ac98db2153774d38a24045825e377c65', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 13:14:30.473000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('157d6fdb33f84742847515edea438ae8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 16:43:24.693000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('00ed8ec576c741ac89aaf89d54f6f45f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 13:13:05.986000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5ed3c4e2fcd44f8c8cc0d816626a82e4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 13:24:39.401000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('354250e9487b44e4a4d65465dd4a9496', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 14:07:33.206000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6724361c530743f497fb09efe2bde639', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 15:33:51.916000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cc5c26d790b4465daaaa9a1982bf9ba3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 18:39:57.914000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e93aec76a01c4922954bbaf93b2aa068', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 13:07:57.473000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('476be577d70c44f58a34ab75312c00cb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 16:00:35.342000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8d54e502544647f984494a780f023d4a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 17:29:53.698000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0a049c8f41224b51825f045b3b0d6cc0', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('29-09-2017 08:47:13.007000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('09f686f829244eddb68d4855471a599c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 08:55:52.766000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5971aebbc14046729c058ab33eeba388', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('29-09-2017 09:53:18.362000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('584e992f85d74807bdbe9c28a1fc1772', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 09:58:11.691000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bf331e9e8b5d4c4fb6c699008b7909cd', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('29-09-2017 14:22:27.838000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1e0774eaacbc4b23948e890db01f908f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 14:25:14.225000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0bc916e4dfee493fa6e51a56dd31e816', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('29-09-2017 14:27:40.042000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e110c7057df649ef95d2680c8f8bd252', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('19-09-2017 16:20:31.781000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ce780457d4994792bde46255243477c2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 16:38:38.578000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9a637dbf16864e60953251eb1969ec2a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 16:44:34.034000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('49266e7356384c4f97260bc33f042c08', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 11:29:24.854000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('355dc791beda4420babf114cd2c92a78', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 17:29:55.124000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('88085b5547f440b18b8387c73c53e4d3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 17:47:04.809000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('24112d71bffb45a69ae59d0cedd95ba2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 17:58:57.260000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bf90cf8b6fbf4f44b374fe975b48e5b8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 18:01:09.464000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b57406fc6f6946a1b2267eea2a1d82fc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 18:05:22.050000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d5c44a2c220942fc93a9e5d11b5b5948', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 09:19:59.335000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('eee30241aa89493c96b8ec24b46b5174', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 09:35:45.781000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('86ead6822a484d4aa6a9c9190c2c379b', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('21-09-2017 09:52:39.120000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('46059285f5444895bd541fbf9450ce32', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('21-09-2017 09:53:49.648000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7ec3b9f35548437aaf6c55efaaa4d8dd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 10:14:17.295000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c047635ffdd346f59b02950096e6cc4d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 10:16:26.224000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('455d9285c56042e1b82c3232aa1742e1', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('21-09-2017 13:29:30.963000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('55d0955972394dca9b797d59758d59af', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 16:06:45.041000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('10badbf07d744738b8a99a6df713ac9b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 17:07:38.905000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cf80be9e3b7e4bb585e44c2ee1d5e19b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 17:26:40.358000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a42076d2580d48278b277c9434e0a66c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 17:29:17.144000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d6c1bbc1f98a440e9760d3cb235433a0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 21:31:01.788000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('05ff8062ed494a6b8fe602953b515087', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 11:04:56.385000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dc4d492f6a5f4cada824f238f9189608', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 11:05:00.672000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a8943f1c7f7943e3be4942a22975386f', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('22-09-2017 13:30:40.498000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c15723fece7c4407b026663ad841a969', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 15:34:57.657000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('99995355deb7402391f4952ce9a4a8ce', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 19:46:46.426000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5a962fa5307744f680afa75fee65c448', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 19:48:39.501000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d6cf2b53fa78447da2cec7de47a8732d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 20:00:54.774000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7521aad5d32e49d39aa2d698e3672644', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 20:59:48.894000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2634197b96e14ad795444c0234099ca7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-09-2017 19:22:05.731000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b300d10806544813a86d6cc43a8ce06c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 11:40:25.612000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6e6dd2977694433e900424b328becaf9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 11:41:08.117000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8873d6257f2d4c3fba95114aa1167be2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 09:48:56.022000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1fd430c574e648948372eaf7b8040952', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 09:55:54.263000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d2e6baf2dd1d4a63a454c8fe23a3d88d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 12:52:14.227000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f20e7d6fcdfd45a297d2e8ac576c84b1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 15:40:34.861000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('248fdd28dcec4c71a30fb01cb170cef4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 16:12:05.658000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8a1c06a62086432ab6bd06985f295715', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 18:05:46.331000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1a97647382f94ec1adb57804122fd889', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 08:34:09.111000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cb01ccda01aa4834904327399069221b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 09:31:51.536000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7625e83a9d734683acf0f4df1b9bdab1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 10:50:07.638000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6b7bf81f59854559932d87d85dff70ca', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 11:41:37.601000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4b3dd080ae564e119f7443f7d62d7bb1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 13:16:13.189000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c61411a1c9274dcfb71e669e5798419d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 18:12:38.757000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d5f86fc277c84a0eacaa37cc2102e079', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 18:18:24.363000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9eb59e925ad443bb8a6d37040d72613b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 18:27:42.418000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('50452015896a4868ad96370014d39322', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 10:35:05.609000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('64b50286cbf14e35b58a03e425f55e55', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('28-09-2017 11:15:07.735000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8ad83e0477ac42659cc70914ba1b6d9c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 11:41:20.440000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8c82f65db8e6464a85ea5cad2c5e3a87', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 11:43:16.078000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c4b50835572c4b8a8867111e57cfeb4d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 16:06:25.760000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('efc7e758261b4341b11fac0fe1db6c32', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 16:12:27.365000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3518b1588adc4863a447b4535ae50c2e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 16:28:08.244000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8219248285284678926c04e6520543db', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 11:45:21.016000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a99a7d48957b46d5a197a8dfeb553a54', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('29-09-2017 14:40:14.568000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('618077c0424e41188c0eb9bd19917807', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 15:03:30.420000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d9bf28a54d2749efa826d9f2556f7804', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 16:29:50.646000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fb052351c1904b90ac4acdff37e4d502', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('29-09-2017 16:36:05.472000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dbbf5242b2594e3292e269933773cfeb', '登录失败', '登录失败', 'syaadmin', '127.0.0.1', to_timestamp('29-09-2017 16:43:47.452000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3b938484b36e4897b6c0ca8a793f54b4', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('29-09-2017 16:44:06.999000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6f59d2fa47c8470d8e1fd12f45cabffe', '登录成功', '登录成功', 'zhangr', '192.168.6.114', to_timestamp('29-09-2017 16:54:32.996000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('61e41e18a94047eca81baa60ab8de3c4', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('29-09-2017 17:10:07.656000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('96e5510b654a46c6aed51fd52f623f0e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 17:35:18.961000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('19d67cccb0ef47f0851a5343b4e75702', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 18:16:39.261000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bee4c937d55247a49e43c16eecb17c16', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-09-2017 08:43:13.765000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d37f33868bb249e7ab6f5bd58974168e', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('30-09-2017 08:48:20.699000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('995c4140d8234bc398a068c99e6829db', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-09-2017 09:06:25.746000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('779c15774b204c8ab77189d39986ec47', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-09-2017 09:42:49.882000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6644c5ee678d4491b90f374eb0dc2ca2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-09-2017 10:13:44.211000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0421925f574d43d5b8c05fea121f0aa6', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('30-09-2017 10:20:33.623000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('179f715b4e314bdbb4c2e0db690d7807', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('30-09-2017 10:21:46.163000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b0396b037105450988b2827a5753d9d2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-09-2017 10:26:57.117000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b4d52ccc797c405dbc32caeae7285356', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-09-2017 10:57:39.292000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('92802d03633f461ba104cd15edc29633', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('30-09-2017 11:04:00.606000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d5c93cec91bc40dc96bff7e4b391c7bb', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('30-09-2017 11:07:10.099000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 1200 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('19b64d92b4434a93b8ee8329f45a1403', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('20-09-2017 09:15:41.511000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bb552e47c3904b91b1f560d54d84d0c7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 15:28:02.894000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2373f48dc67842c58170cd1fdc92a241', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 15:47:38.004000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d8175e4920c64ce4a3940a1520a49bfa', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('20-09-2017 16:21:26.743000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f32d2f55a32049058f58b31b8eb42e81', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 17:15:45.073000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e78e844451c140288f4555a6a6844a04', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 11:57:10.007000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8f26bea030a446928d964db9e0988fd5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 13:33:14.110000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('70b2c51176674888874050af9c31323c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 16:38:01.010000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2218efb436264145891cb33988d40873', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 19:25:08.154000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fa6d5a2d4ff040d6bf9315f2762251e6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 19:56:11.938000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5a5ba9bf371841b699ad28c9206d1474', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 08:33:50.543000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bf55e0a79ab8401a8902178114fba51c', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('22-09-2017 08:36:57.721000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fad03364095f4a098265abcfa59c180a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 10:08:51.454000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('70d8824e47cc44e99b33189b1dbaf356', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 11:45:11.642000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2c9e4314965d4a93980733d502748233', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 14:05:53.457000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2c7b2da3fd904e3c8e70cbe049acc32f', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('22-09-2017 17:03:15.514000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('abf7d67c3b0b4be89a679a0a08881241', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 20:18:22.133000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3b48f6b7d4c340609c3d1d1320b8fc4b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 22:04:07.066000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d7634eda59924ee1acb071506687e17d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 17:03:12.053000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0eabbf6c00984299881b6ef005adb821', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 17:27:14.456000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('33fe382f36be43a08b003135ea408861', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 17:36:39.549000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6b236182426f4f099d54f4b1e72026e3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 17:37:37.325000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4ebf4f623d2640999411bcced994aea0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 17:40:21.637000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c9f7cdad1df04981ba4dade11180a27f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-09-2017 15:35:23.986000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a46bc01b1b3c4f14894dc8c1f91f08a4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-09-2017 16:18:05.922000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bddb86639e3c44efa5ecfbf2343d07af', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-09-2017 16:25:06.517000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4ee7a0210b9647c1806b3254a25474d3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-09-2017 19:18:45.204000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bb6f1516f6da4afa937ce8fcbd0d9ec9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 08:47:10.113000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d83358903cf14dc48304a6d24bf07967', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 09:34:23.332000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9a01ad58f1b247da99eab08a3640e122', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 09:36:25.580000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b797434e401e4ab7955a46b9a65db625', '登录成功', '登录成功', '系统管理员', '192.168.3.76', to_timestamp('25-09-2017 11:05:29.823000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('473d877f4fdb429f8c10408a109cba47', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('25-09-2017 11:24:21.309000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('da8a822f5876481ea4cf5de4c82d3d12', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 11:41:40.752000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f7eebb0b25b4494d9bdf4181fd4b9431', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 11:43:23.783000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4c5d59fc0c1942abb94b483e6d17dcd9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 11:44:01.152000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6dd69ea5e23a4deb9d8c1fb72e80a2ae', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 13:09:13.157000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('60f0a50c05a448bcb031ebbafa47703e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 14:22:10.934000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ee47d9bdd4804d0693d5aafef79f2913', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 14:25:16.125000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3082f3cde3dc4a2086dfaf5c7832a8f1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 14:30:47.459000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4ee5010eff4a4c918f7e70ffe5f099ad', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('25-09-2017 14:33:11.265000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0aaecaaddc74462f85633c5726f2484f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 15:40:21.684000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9aeff76c6bee40bc9cd3c33077f3a375', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 09:33:45.151000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cb37e45ec1204eff95d48b4ecc70683e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 10:18:39.799000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('49d1d2941c274fa4b46bee90574d5a23', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 15:18:10.230000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bbbd0046a7964adc9d469324d9d8f666', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 16:54:43.702000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('61539b9a4a0f4a3caee453ab3e27d2d5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 10:05:14.303000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1f95bdbdbb104a4792dd7a9342eba315', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 11:26:04.953000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c9d120a8bed946178ad707130c3bdb40', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 11:37:14.328000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('55af336f99ec4ad3a8268636ed06d5d8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 11:51:19.861000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1e6c8d37f4274ecea1f29d6e2e488711', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 11:55:52.712000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3669e94dd6a04b01af30910010f0142f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 13:59:01.655000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0ae36e1ea1644d069cda698731e02bbd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 14:23:45.234000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fa184c4891024d51b9703c96595cc5d0', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('27-09-2017 16:48:01.851000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('78933a4b77a1494ea9aab26e2110942c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 08:47:39.878000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('347a33bf072d42faa9775411607cf702', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 09:07:12.449000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1c061bcf820c40d2ad93921a971788eb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 09:35:30.064000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cb35546770c8446ea96215f13ed60eea', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 09:14:35.799000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cdabfb9d8d8e4170be04a403fd3ab5d4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 09:26:07.671000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('61926c0ba8ad49329b1711336b8050be', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('29-09-2017 09:45:51.905000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5da5d7ace4564d91a23a426158d4e179', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('29-09-2017 10:24:57.993000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0edd01842fae45b299d7818896634aed', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('29-09-2017 10:26:41.702000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a7260367bf8b4196b2498d1d2fa8adc9', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('29-09-2017 11:15:58.110000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d92bcf72f77141af89ebb85b9f5ece90', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 11:32:45.997000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d2881a85e01d458798435349755b290b', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('29-09-2017 16:04:16.794000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('aa233613662c4c4f9f4b64c8fd665479', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('29-09-2017 16:06:31.531000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('29fc2273ec0847a6840cb83b8991460d', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('29-09-2017 16:11:04.282000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('df93cc650414470ebb780078052dfdb6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-09-2017 09:19:04.331000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ac9bfb2ecb534e90b4d289fbda593747', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('30-09-2017 11:07:34.279000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('52d72c58dc964fe7becdf82a3e72da67', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-09-2017 11:30:07.266000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('405b4229347b451e9da1b632ab6707c5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-09-2017 11:33:45.920000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c2af6726d0404d528f4562265cac8e7e', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('30-09-2017 11:36:33.635000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('22de05fa91084774b29fccc37a421361', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('30-09-2017 13:08:03.502000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5104f8811bbb40cd8c11e5c8f3d61a65', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-09-2017 13:09:13.281000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b51d0b222c274f479ff17d4dc9f9f4b1', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('30-09-2017 13:11:46.303000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a0ada0808d85416aa63e556cd85fdc40', '登录失败', '登录失败', 'WW', '127.0.0.1', to_timestamp('30-09-2017 14:16:15.656000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e4f6c137843f4effb80743709030b3a9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 16:52:31.283000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('131d9d4d92d6413f85f6cc71bdbb081b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 18:36:46.228000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d2e835824e8744ca8a677b09000947c5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 08:35:15.196000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('05f4af3dcfb74d50bd162c94004b3833', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 09:34:12.105000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('04adbf482fce4712ba62db8282ff4c51', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 11:45:36.950000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('112e2ecb038a470da07a0572e2eb3b3f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 11:56:43.919000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4d145b34d02743b8981700b6eeef6d1a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 16:21:10.212000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a1122ca7a6b841ff9cfc54c4e190c302', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 16:44:39.433000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c9ea6a9c71cf4356915cb7ef9112e9fd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 16:48:08.839000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ebe14e98486144d4ac4050d8e5e1a86f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 19:02:04.216000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3f5bb5dc87ce43a3b63e6542054b482e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 19:08:38.756000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('aefa83035823472681eb88ffd3cdc40c', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('21-09-2017 08:45:30.351000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('59c8a7bac68f4607879c835e39d3c4a9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 09:57:04.206000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('50d1d16135624610ba1ee6639b58b39c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 11:04:07.212000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3bf7b29f300b40fd9170c36a3d955e1e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 13:16:57.494000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8113b3ea70a84cc8a7dc9f9a5ad5c2ca', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 14:15:26.539000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c9b7526d27aa4ecd973270963481b5b8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 11:17:14.809000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fcd88c28cb744c97996c0fb59e23d3e1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 14:03:44.833000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('39141f4da66e4bfab07d73b49de0de57', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 14:09:10.298000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b5a615472c984ae1b5006bd96352e55f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 17:13:08.557000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('01da5edf3a34405cb7d8010abee44db1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 17:28:01.570000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('16418dbd1c9c4a69a2711c7610f6f3b8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 17:31:38.740000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0cc61afd35bd4132972f9d042cfb3e90', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 18:58:37.520000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('679f0b9db6dc42fd84b8d3a88686b2ac', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 19:10:40.563000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('507d484a83034478b96096a34f130a94', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 19:37:39.562000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 1300 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('373ca7e5cb214504bce80fef73f6b8cf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 20:09:00.480000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f73f3271ae6d4b4a9c67e3dabe3dc11a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 20:15:20.320000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d618b54b4ea34bd5a5e21720cd49231f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 20:55:18.249000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('42626abf1afa43a49fba8097624083c8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 14:12:07.486000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('91e5721970b84bec8c3caa840aed8f30', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 17:12:24.886000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6a81268cd08f409ca75223a7b7565df5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 17:53:28.163000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f1aefef2f014477d9558e15017c31a0c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-09-2017 14:27:10.165000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('528958588a4a4285bcf93e8bd8d3d200', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-09-2017 14:29:25.161000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bc824e14977e4781885a9d6ff560f999', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-09-2017 17:19:25.547000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2eb0144323a241cb8aa21de0b02be3f3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-09-2017 18:29:38.742000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('606e018fce614e43b340be1fbd2de2a3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 09:30:07.391000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e109fd0ec8f94284a4407f88630c7074', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 10:31:05.599000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bf9180aac13b4693b048886abe23b70c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 10:36:21.089000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f565db49dd614e9eb716cd076aeda976', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 10:37:23.816000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('932b2ad7ad644265ad2b7ee227e166d3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 14:09:13.522000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d307c6c24f724853b9a4349e105ef70f', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-09-2017 14:12:04.687000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('60170d33c47845efb1eb4621c02617ec', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 14:44:49.943000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('47fc15d819bd45dc94aba4deb25f0dc7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 19:16:26.472000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('07c88353e29545a5beb67948c5afef26', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 12:56:14.127000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c94b8bfa0c9d412688cf33119f81dae5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 13:13:06.087000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fbb8ccf5a79a4e8093e963e0b83571fa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 13:46:58.474000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('89360d7d89cb4af4a278163d418aa593', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 14:11:59.183000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4be9e757e90b44aa98ed4b2afc5fffdb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 14:19:11.684000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7c507bc11afe475dbab467a6c27998dc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 14:28:13.019000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c88d978b6b6e41889d113ae32ad71264', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 14:42:05.198000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a5715cfecb8d47d8bf08f15317bb377f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 14:44:02.430000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6724c9845b664800894c8f97f019a468', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 15:57:41.280000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('be978fcd22bd44eb95ded09e32ab9d82', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('26-09-2017 16:16:09.285000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bd10c4cf2dae49ba873aa08a29875b69', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 16:29:20.978000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a416c144c662447bbecfa135d65dc006', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 17:16:23.868000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2870862af8554cfdadac9c518edb8b11', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 08:57:26.022000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b71ff40e9855430c96e48e083862b763', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 09:24:54.370000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1b7af2afc67c4c7785c7e34e80dce5dc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 11:35:40.498000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a20d382f9efb4ed4bb41b7a86e434200', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 13:29:34.039000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('886cb6b02d4a433a9e0d2a7594ad43ea', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 14:04:43.956000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e066f3cb0b904e75a251aa5107dc4ce5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 15:39:56.176000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9ddeb051d2854a4ab233682c6ecae218', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 17:56:22.178000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d7d7442a6c874cb98b447e238a1c0506', '登录成功', '登录成功', '系统管理员', '192.168.3.76', to_timestamp('28-09-2017 08:37:58.220000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5c3e76803023436f89d17939e3a8c89b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 08:42:40.776000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b3b33be1dd4946a9a11fa701c2e9d1f0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 10:42:53.447000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('64b8e83317a345c5b687b2852ce01b37', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 11:38:41.925000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('14ada548788b42dba2f2f758d1aa2718', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 11:41:49.855000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('231a12beb3da4623b2b3787466bd25ec', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('28-09-2017 13:24:59.871000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e76937c630c5406f8f2ac78220f372e7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 13:25:58.632000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cb31e20f36eb4569a31eccad1d25474d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 15:32:11.194000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c41eaa890f2e4875bb98ba85870d3d39', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 16:34:23.921000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8c2d1115b7964d369aab4e4d99cf924b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 18:44:49.449000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('df7cd2b0376a4ee48a4b3482996a770a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 11:27:27.180000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8a7c8412940d4371b41555857137d0c5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 11:49:12.282000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bca50744b8104939a54e55edccacce56', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 14:56:29.428000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6025094ccf5e4b9a88f9fdbad17b215f', '登录成功', '登录成功', '系统管理员', '192.168.3.92', to_timestamp('19-09-2017 16:20:06.119000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cc0675e8297d4d6cba522e4c3d5a0396', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-09-2017 17:19:32.622000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0a6cda672be84a25a40c35a1307ccd01', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 14:09:03.675000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2bc43c903de74202adfc4eff3a682d85', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 17:25:21.560000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3739cc98d7454ea49b8232307843cd60', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 08:32:28.340000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('938f3859b0a84b61ba12c1b25e5a9670', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 09:49:22.941000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6678068c11fb4408aedc524e2aa4afdb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 11:28:36.060000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e6a619f8bc524e6897f5b0ff79f8a940', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 14:01:29.417000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('33d1bd27ddd24980886253d861ddd473', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 14:40:35.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('10c90e4cc9c546229d8f1a1b6f5e336a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 14:57:40.850000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c14a4b42272e4944bb8ac68465d3521f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 15:26:06.986000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('98815a5f2aef4f4ab4053078e3a5fc4d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 08:51:39.440000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5397f4352834495a9bd9dfbeff457f85', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 09:25:28.618000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('426f825f79094c80b6246e3eb7678ba4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 09:52:21.888000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('95b20a977ed248a5886fef66baa73174', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 13:39:20.515000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5d829e4ec7e54beb92e215e4bfe288ec', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('22-09-2017 13:49:29.389000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c949c7e491f94d00879563f34931c801', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 17:52:04.368000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6f18178c22124e6189e99d1037859fd2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 18:36:37.473000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c64e1414c1c24c5dbd99b508dffe073b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 09:49:20.031000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('60f41f7ad3b749b7adf66a3a7e59093a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 14:37:37.064000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6b81013eb234404bbc0d4a0c46d48746', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 14:53:18.978000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('af97e7fc11814b048dd1c04b6addd11c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 15:11:18.524000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9ffed85c63934b1e9ea86db5dba8f1c3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 16:57:22.536000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1b5348eae28242a28dc3425cc8d83bcc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 08:32:15.209000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0dfb47d36a0a4433aa69ff435fdd866d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 08:45:31.182000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bc9a51dc64c644bbbaafea49f9cf7517', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 08:47:04.465000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('329e195fd1464960bf834000e4b439fd', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('25-09-2017 08:49:14.816000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('34a6f1b1892b45cd84a2b34926babcf0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 08:51:42.114000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('99ca565c89794989b10351e36a43f4da', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('25-09-2017 13:34:17.329000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fa822ecdfad3497c9aca0471fc466c65', '登录成功', '登录成功', '系统管理员', '192.168.3.76', to_timestamp('25-09-2017 14:50:56.140000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('44215160a8fd4951a46e702602b6c6ec', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 15:22:35.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b4597957add94e3ca2260e5e5d937e15', '登录成功', '登录成功', '系统管理员', '192.168.3.76', to_timestamp('25-09-2017 15:26:14.451000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d18cb7421fe2465aa88e2a58e167de52', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 12:41:14.243000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d993db25937345f884a6c619437a7719', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 13:08:18.534000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c529c5a9c3dd4d55b62d55d76143520d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 14:16:06.863000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2c06e9dabde6426d8260440b95266373', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('26-09-2017 14:24:17.497000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5337e26676f2476b84a41d3fdd532ea9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 14:30:29.130000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0c95ca65d0cf4b1a9c8205617e029a45', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 18:41:39.581000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5ecbb7e21c6844bcbae299d05d0d95af', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('27-09-2017 08:29:23.089000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1e52f51349b04fe593aacfa6309df59c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 10:42:49.065000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a2c29c7da44e4841a1de4a31f19fd2f8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 13:19:31.213000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0044d21dcd534df4a1333651fdba31b3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 13:22:20.952000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('447209cb38cf44668e72748fe72b3c35', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 13:33:00.224000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('30a40d5ec965486bb5698c75437fd4cc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 13:39:46.298000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('014b41d74ccd49b4beca0e7daa61050c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 13:44:20.568000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7d52e768108443608b440fbfc38b67f2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 14:25:23.265000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0786d20af13b49fe80b9798a1b767c4f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 14:46:12.872000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('63f2d5ee3d654ff4bf682b0a9c8c9715', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 18:00:25.229000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('822a9ff75b9347bca8cffc39baba390e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 18:41:23.119000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('507e8f4f7846471aad8949dea94e876d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 18:54:49.537000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 1400 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('eb766377173443b88ddf28648ad3c67a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 18:56:55.160000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1b2e0cf12ba8443e87a7d1ba877e808a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 18:59:50.041000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('eb522493d8b146a58b6b2ff8ef4b0371', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('28-09-2017 08:42:32.656000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ce9c2c1458c34497a57b721476ffb248', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 08:52:36.081000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4acd6f9beae242009230ec696fc6918f', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('28-09-2017 08:54:25.031000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('85738d21d4cd418b951208b7bb5ee382', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 08:56:02.373000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f6f9cf62aa504ab4bc9a49350fbc6936', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 09:14:14.705000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4284098af8044dd3bc01e488680795ba', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 09:53:20.278000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('652a312210b24841a39f6fc74afc8082', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 10:08:19.374000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('310783ef27f04baaa4c671c7a565560d', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('28-09-2017 10:11:37.522000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5d0d8986330641afa554d0a720b57256', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('28-09-2017 10:15:16.281000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cb5ccc89c49e4e5ab5e2c8d46a95be54', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 14:18:43.911000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('93d6c1c1c244490d9e7a5003bd1ff020', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 15:27:21.180000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('448586c324a74e69b6e4fb5a0e5ff4b2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 15:30:48.162000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e95e2fcd504a4f49a30437fcda2ac30d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 16:07:51.558000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5f67ec36b3e04c898e006f8fe0070d33', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 16:08:06.327000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('628c84f0c45a4a7a86b46d9452078714', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 16:23:44.847000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b4ef5df1385c4a71909f06fbb4e124cc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 10:33:07.310000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6fdf0aa59fe54866bb3e2c8644c641af', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 11:09:51.838000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2818aff400b142c490fdccbcd3b049eb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 11:11:56.382000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('16830a8946f6491c880b9d7690664ea4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 15:00:04.545000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('222c0c1e431c4b3cac2555cc329e2ee7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 16:01:36.396000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b9d7c2d7a5684cb2b5ea0130acb4115c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 16:20:57.595000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('aa5f1f22e94c4e64bd4305a7170e63b1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 16:37:41.211000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4e4526c37212427dbfcfa1074cfde287', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('30-09-2017 10:02:09.968000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('09c4e2126cc94c3685c0fe76fdd51d6a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 09:36:35.288000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('59f2ede0e42b4f83ae795ad6d142bcec', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 13:03:03.891000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8c5668e8b04f42c69a4329dabaa3ba9f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 13:04:19.575000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c732b6422ef54ee8ba90e24503b6f46f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 13:08:02.064000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('33fc2ce1ebc14436bb34c96ae2853653', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 14:40:11.278000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3b5021ee0cfd4b668a2def386c2f7228', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 16:48:46.992000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9b4471da74bb4d20ad37c3e111c57afa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 16:53:14.105000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8afefc12dda04b48a7aa173adaf7e22f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-09-2017 19:32:26.817000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6f00c1df56dc454d8c09e2044649706e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 09:12:37.960000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4ba2305cb4f440d48b5a2000bd3c0617', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 09:13:14.885000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('28aeca4d5a3445d18358f2741c285b59', '登录失败', '登录失败', 'RSJYH', '127.0.0.1', to_timestamp('21-09-2017 10:00:50.270000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cc723559baa54de78b54163f68cfacf7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 10:01:01.528000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('03407b8e1b79434a82e10d3aba80c90d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 10:12:20.474000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('03e3461bb2504613b5198dba8ccc22cd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 10:51:10.900000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f558ca92ff5d467290c8ceb0276ebf58', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 14:23:57.001000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('02e82b7d0e3643eb958a7be7a1b6f6bf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 17:34:01.346000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1a1794e2bfb94f359c707692dbea1295', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 20:31:16.351000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('17073af89e1945688bf4b68c1cc5b020', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('21-09-2017 20:45:41.213000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4c43dbe0be354ef4bde14ad1c5820139', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 11:14:24.383000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6de77e69617c4c8ab680801e8f05228a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 15:36:10.794000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('60c37ef64ffb451fa004c3e43eae9738', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 15:41:30.720000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('81ac76f63d8f443ca60d3727ec8fb446', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 19:36:30.151000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cf3c2097a8644eb0b8004f5783916e6f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 21:10:31.410000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d1c5db171b9344b983a7ec86ee670fa5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 21:24:34.750000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('697fb9ab96ad44bf9230817f541f7f5b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('22-09-2017 22:05:49.616000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8d257e3486c34c8fabe5e800c0512886', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 09:37:53.765000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('db00493b1ba74f5c81365802c7a33506', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 09:47:36.983000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('34cd521753114e2d9fcaca44307752b1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 10:50:47.871000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0c8e5cbfea1c4c71b788518f162858e2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 10:55:16.941000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4729035b39f1492ca99983786f9f7e9d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 14:03:53.354000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('50483031c6ce4a2281549d13e922eda6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 14:06:12.465000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('304709a5ce28493f9eb545c2ac3e80bb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-09-2017 15:04:34.177000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f8e9faa3fb0e4150941027b26ac3bba2', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('25-09-2017 09:19:38.599000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a771e58516324c9c93b62e2d6dd00ec9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 09:27:27.234000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1e9a45a49f214f26b99f16610c9c4b1c', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('25-09-2017 13:36:05.764000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2ce11b4cdc18429f8cb115a08164b102', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('25-09-2017 14:52:04.627000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('aba3b45594744afc91aac163dc7c3f3b', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('25-09-2017 14:56:23.728000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('939c79d8ae86413ca7cc02c5797d43b1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 16:21:55.813000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('29aee767f4324efda376715b156b7c3c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 17:26:52.963000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5920039cf4ab46f089e65b2edf1a4121', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-09-2017 18:50:02.485000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3673073165c84d508685462f2f21a09d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 12:36:26.721000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3d800d7f58444b6ebb38a630cceb5fc2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 13:02:02.775000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b3065d05ccab4302b96c5a85d15cd477', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 15:04:59.610000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('13f3378e752c4ad9a29cf97ed1dce08b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 15:12:46.299000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b7575db5e5284124844f36958984a6b6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 15:20:32.088000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f3992da2589a467fafa402a3d99ce2c0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 15:20:42.242000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1c3afcb8c7864f73af8474d758d96306', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 15:24:45.011000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('11a9714d3e2544aa98dd6e5bd6d94d5a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 15:31:54.411000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('88a06e090cdf438cbfd746216d168481', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 15:37:56.925000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('10392a4966674eb587bb13949c419f43', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 15:56:59.830000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('70bb743726ef44539c3368298acf5dc8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-09-2017 17:02:07.518000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('439ca1b39fa546ad83fa311829a7323b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 08:47:54.183000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d210f83a74f2457e9808f2925abd69f0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 09:00:51.310000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cacdb0be033c4f2a95bf7d704afdf765', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 09:54:46.755000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cb8c58689a7641c48154133ffec3d92a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 10:12:59.508000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5e1fa976ad134bce922b6122ce9001ce', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 14:22:34.228000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('85d658141f164fd298abd3dd28a9fe18', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 14:25:30.502000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6744724f06214ca2b6b224e697f3790b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 14:26:52.037000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('411863a8bc3b474caec88a04c59959bf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 14:28:16.193000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b6b97739bd19492ea2981394826601fa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 14:34:10.551000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c9b45b94499d42df9487010147ab5fd3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 14:38:38.612000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('761ed0e33bf1418eab189d77d45daa03', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 17:51:36.534000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('66ff4c21c30f4501bb33ceb713526ef5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-09-2017 19:08:52.506000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('390debdbdf194e62b6763c7242cbac5c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 10:39:47.574000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6ab4050346e94a95865b8cbf755e3bc3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 13:41:49.057000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e922ba39101a4a318abb1ac452d153b8', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('28-09-2017 14:04:51.464000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ab16badab36945ae9918ce8442fa63c4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 14:30:28.057000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('01ae66c49ff74ec1adac5bb5c8544702', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('28-09-2017 14:57:37.767000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('450774af146f4a4d841a53358f6752e8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 10:17:45.369000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2ea03688ae9148a3a249c087f31a87d5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 10:20:00.284000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0fd0e0d2d90443248cfec775b47eb16d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 10:44:41.582000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('eced03a29370467c95e03c04fd735121', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 10:49:36.850000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('13b1eea37f984d86a4d2bcbce59c273d', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('29-09-2017 11:14:52.824000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d1ed3e7db4494dd488bef73b987afc94', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('29-09-2017 11:16:59.450000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('968951fa1af5471895c10cdfc2a7a7dd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('29-09-2017 11:49:37.230000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 1500 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('381fafd3cdbb4e5f8b1ca0021ed712f9', '登录失败', '登录失败', 'linss', '127.0.0.1', to_timestamp('30-09-2017 14:23:06.186000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6115f185f7dd4f66b607feb4ad0e4567', '登录成功', '登录成功', '系统管理员', '192.168.3.76', to_timestamp('30-09-2017 14:24:19.974000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('81373b2c58464793b09604b0af198cca', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('30-09-2017 14:32:37.116000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9cdb5f2f31804e1db870c69d6d056313', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('30-09-2017 14:37:01.708000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c43b006d89bc4abfa3611f221ffd67be', '登录成功', '登录成功', 'jean', '192.168.6.129', to_timestamp('30-09-2017 14:37:52.658000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cfaa8efd67d4432ab752499487541613', '登录成功', '登录成功', 'jean', '192.168.6.129', to_timestamp('30-09-2017 14:39:08.739000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e5f904417f0a4eb4a982d1e70d033c55', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('09-10-2017 09:10:34.621000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0fe5b7e091bd4160872ca3550dda6c45', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 08:42:41.472000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('52c0875999fd4479884131e4f2f5c618', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('10-10-2017 09:47:07.348000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fd94d4483e424bb0ba05f3df84155438', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('10-10-2017 14:26:33.680000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d090bf9c27b5459eb399af444e038afa', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('10-10-2017 14:29:33.705000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b895bc5101d44b0c8e4ecdfc3262b935', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('10-10-2017 16:24:58.557000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6dfdca26439945c69461783991062123', '登录成功', '登录成功', 'jean1', '192.168.6.129', to_timestamp('10-10-2017 16:25:50.271000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d5a31e7a67994c119c22ac4294b17285', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('11-10-2017 09:42:30.357000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('eb1ffd29ba1945578ad9c173e65186eb', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('11-10-2017 09:45:26.123000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1fd6e077b08d4d19864802fa7180dc1c', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('11-10-2017 09:52:21.676000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7c2f64d59dff48b0b953ceb43900fdba', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 10:40:25.511000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('12b9e1cbea8d453fb360ca8ae65eaf25', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('11-10-2017 10:58:55.470000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f92d9d839a2e41cabd70cfba601764be', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 14:12:33.354000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7c7cde600b5a4e9494e9efb969af83e5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 14:29:12.411000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1a9c9e6e8ea54b2592c3d1cc22c74662', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 08:56:51.684000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9fca6559fc1741a79a522db0d951d6d9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 11:19:15.910000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cf28c333ede54dd89b1f22afb77b1260', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 13:25:23.134000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('09b876b151cb4f65b559d2325d8e93db', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 15:28:24.292000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('99ca475aa8eb404db791467da0a032a3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 16:36:25.841000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3427f6c240fc4aa2a10e8cbf2a2a6761', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 17:42:30.372000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ea875bdae77b48fa908aa73e46ef6b30', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 08:55:53.939000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('644f917a81d54e75ab7c9d2d05bc2f49', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 09:01:52.743000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7214eb7c59144256b7ed5324895cf299', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 16:02:17.167000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('eaab1a8c33814d5b8ee39f528e6fc516', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 14:38:35.324000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6fa7b1ee0da5476a98860cb1ad165c19', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 14:40:10.082000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2ed94ebc1d794e5f9b56af3dbd854f10', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 08:41:00.692000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('397364a042d44225828cd44ae68ec12f', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('17-10-2017 09:21:30.392000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('05fe4002faa64f4e96f84fe2cd679c3e', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('17-10-2017 09:26:01.879000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2dca45d668114c40be9bca176ae922a5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 16:24:02.196000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7a82b18cdc794bd0848c45b18b161c89', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 16:28:21.360000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5b686e38451e40178befc1875f89d241', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:22:39.136000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('41f6ebf2282041ea84113a0b399ec62c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:25:12.693000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('457be97296e8498e9ddd11d3a4325e96', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:31:58.574000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9fd7eab7e27d4effb9f012f7ec9f232e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:47:30.305000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6f3e4a1b162a4e099ab2c94fa3e88939', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:49:34.007000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d0980bd981fd44eb88241a5bc256426b', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('18-10-2017 08:39:10.835000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9ea49da8fcf94b81881b520cd0cae969', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('18-10-2017 09:21:17.291000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2eeca52d2242497780a1d50396ea4bb3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 09:51:09.170000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('67c7a97bed4e4cb6bb13761ce346e0db', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 11:27:07.582000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('19cddff371204bb4b9185505a5847597', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('19-10-2017 08:41:33.578000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b6662f9da61a4e6e87f3aa6a7f196c7b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 11:14:11.889000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3bfcf88d36e741b6a04771e85435219c', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('19-10-2017 14:36:22.967000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f41f6c79ad644e7f8f4a056692a1fe61', '登录失败', '登录失败', 'lq', '127.0.0.1', to_timestamp('19-10-2017 14:44:59.796000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4be48385f24e4720a407fa9b362140cf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 11:26:13.652000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ca3fe35fe757478d8543268b7293453c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 15:12:04.776000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b58bd6d609794f5bbbe6ab6c2fa7f04f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 14:03:54.178000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('34254703fb81416d90b1e8c7de4d75f8', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('23-10-2017 15:40:46.575000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c75748965ae443f2abbd575ecb481c80', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 17:23:17.992000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('db4235308fea4b01963ab4e61c2b9ec7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 17:12:17.813000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0c603f5cc11b4ae6a80534fc96c99665', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 17:13:33.469000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3c0b139daea24b7c803d815e963c19c5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 16:25:32.012000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3185a942309340c8a38795c9cffe61d7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 16:28:13.418000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('26f2ef5b24884a9dafec0bd0f81ecbf9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 08:44:10.138000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cfe17fe2390e4f3d8bcf4e5330461e64', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 09:40:08.965000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('23d237bdf67a4862908c67e6442aba0d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 09:53:06.915000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cb403fdf3b2240078e403f8e87583469', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 09:54:27.284000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9fa4f40097b248f1a7e739285adae757', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 11:02:33.711000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fb223992df214e07a80255607302d0f9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 11:03:30.959000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f9738b9b892147d3b1b2288dfb320c6a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 11:14:45.843000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('90935c263a254cf59c9538422a2080f9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 11:22:59.239000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('348263729e804b7e86a76986a7f90c92', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 11:24:38.614000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('06eb1e506e8e46668598714a148d56d3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 11:28:23.647000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b6dd503449f24c36887a72e3d4d88f05', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-10-2017 08:34:51.187000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('209b3db183a54fce9c3fc0abaf6780f2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-10-2017 09:26:26.843000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8232d0f82e664a18aea5c3f177503f6c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-10-2017 10:22:42.176000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9146d196c93a4805b6ef40649585b254', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-10-2017 08:33:42.714000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b2a15e6070144491b7747e4fc513be0a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-10-2017 08:50:27.290000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1c8c908264774d0483410c0b585ab493', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-10-2017 10:00:40.322000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('27fa43c621d04663a1f89dbac165f171', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-10-2017 10:02:42.410000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('735fd438c0ea4ef082a0b83292ac98de', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-10-2017 15:53:33.107000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d862cf9829594b908515b1fd45adead0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 09:31:48.366000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ad26ac74c7384e36bafd462abf3376d6', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('10-10-2017 09:45:43.155000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ba24fa55549648b08bffaa8db4e71c5a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 13:37:57.872000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0763bb2f20054178b85c616e8347235e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 19:04:07.072000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('10941ebf905e4101a6c4e217f4495239', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 19:18:11.872000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6790648f41a24bb7982fd2af19e2b7a3', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('11-10-2017 09:57:19.793000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('173343f776a34a0698e3a0c62adb7e9b', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('11-10-2017 10:05:07.138000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d86aeada0ef3490a9f2fb312eea43e7b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 13:42:05.193000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('40e926cb59ad40d48ca831a46b52324c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 13:58:33.436000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2235d86ef0014b4bb45b5022b33d1bdf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 14:10:46.980000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3638d5e356ed4ee49226fd0fceb48fdd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 14:15:16.735000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3c29b77a005544d5a9a184eaa18b75a9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 15:01:25.111000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9705bd91d4b44ac9b11f4aa190eb67ad', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 16:28:22.406000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3428c2402c02448a86dc4044ba8b2761', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 16:39:52.217000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2d74b4d4075d48fdb80259028a5607ec', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 17:27:30.698000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('df0307d6b107483eb7c7648cf7d86c2b', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('12-10-2017 08:43:23.335000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('49f22b66ed284c65a893d04ef92bc3f0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 09:06:04.502000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fe06f28b02304fba85f761a4bf53def1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 11:45:40.431000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f871693cdd754ffd817ec305e039d697', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 14:21:38.495000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('aa9e89118d094a0e8a56853c10c369c1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 15:35:22.075000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('01eb30608d254b24ad2a9ca26f6768d2', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('13-10-2017 08:59:09.074000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b0eac97e75c64f19b0624a8db59bbcff', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 09:26:06.041000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a9234d63cd5b4469a2ca285bea1d179d', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('13-10-2017 10:04:45.398000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5f29707c673246f193078009a332f46b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 10:34:52.694000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 1600 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9fc50119c8c44040a5b23a252a8c014c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 13:47:08.594000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('14360ecec3e841a2b9988b5ed65a0960', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 14:02:04.343000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4f515c05436540f0b10a1f74294fdde2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 15:38:49.015000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d42e0ad5fc9449a48f2e6a5775371638', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 15:45:34.926000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e88408d54c7b45d285a7de30476534e0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 15:49:23.639000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('773cb4c252cc40cfbf497364c94da8b3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 18:06:53.317000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bd92c3ee3f4546259d5e12c9f23815d9', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('18-10-2017 10:11:13.962000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f246d6ae8cbe45baad39ddcbff278d48', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 09:55:17.563000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('212092bd28a44a7187dfb56378ef5b9f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 15:03:11.972000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f85402659e10451f81b1566d092e457f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 16:07:45.186000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('774e5d3a87d34dc699c5228cf400834a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 16:47:37.864000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c3caf508b52d42549da6c7f99e074cef', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 17:56:29.166000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1eade4e258034d1ea236d0032d511bd4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 08:40:21.343000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ceb0d76dda9946a0bfd7c882a965f09a', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('20-10-2017 09:00:14.381000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0e5b714fbea1464fa1d9071506775a82', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('20-10-2017 09:01:03.895000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ff86ec7a974f43ea96c2214ef6b74dbd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 09:15:31.411000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6236c29f2c384f6a9a4991637d70b11b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 14:44:40.825000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('97ff162d811b473fa5c1c9f921fe8293', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('20-10-2017 15:52:07.929000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('05616588bb364bc796708732ce8d7083', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('23-10-2017 10:15:49.692000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('28eaa532d2fd4b45891f32ca372c2862', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 13:25:12.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1c6b353bfd75426a8540a773687a55c0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 17:25:10.987000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4cd733ff28434d6ab2f945f3747e198f', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('24-10-2017 09:07:36.201000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('36f16c5661384360a11a58ea8688adfb', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('24-10-2017 09:33:13.475000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9d4e3174ec2b4389ab3f1102987c954b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 09:48:12.002000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('527b94cbd52e45e793d6eecb9c02dd53', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('25-10-2017 10:36:34.455000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2566130ca6fa446fb47814e0ba98f999', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 10:44:15.655000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f2abf3dea3eb4f6ebcc8075d49cf133d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 13:13:51.245000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('106cef0272fe4ee1b7716c85ac592dd7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 15:57:34.516000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dd241e30c38b45a29a1a677275f2ccf7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 17:04:30.991000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a9f31d78fe8b40a3a7550a56155aa6db', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 08:45:06.888000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('38b1d788658b416d84daeca85917bcb6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 11:17:02.675000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('799ee0ac31854067b8271768b713e154', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('31-10-2017 14:30:38.272000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4e5fc2cf6b1248a8abeb2c129766046c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-10-2017 15:06:15.060000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8aee05f21f034551840a320a49813f1e', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('01-11-2017 09:07:25.647000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('59572a410f134c1a8a0a801e385b9c06', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 11:58:04.887000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('69a438c7738d4cc085c4ae02c3dfc002', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 13:30:33.591000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3c558759170841ed950600afecbe98d8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 14:21:39.144000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('50149ee2527e46aa9d005fcbb2562929', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 14:32:17.852000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('098983ad908b46eabaee8be33c39761f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 15:41:42.803000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3b8b9cdec8234c8ab02fc89b2dd0e80e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 15:58:14.936000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b5c07f67c764478da3a1f85c4ad5e0fe', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 17:33:26.865000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e60f33073c174ef78878f92ed7ceebd5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 17:40:19.619000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('998d0234fa934fa4b1b35309bb1b382f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 17:53:03.804000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7159ef0134d0417293cd4a8a04a34ad4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('02-11-2017 14:41:39.760000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('812a348edba2451e82880a9cbd144691', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('02-11-2017 14:54:35.626000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('43241b7d8e594f49b0ee25efe6be4348', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('02-11-2017 15:08:13.605000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4dec7c8525f14b168b8484971feeee97', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('02-11-2017 15:36:09.151000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5588242a1785431aafb0609c6508e21a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('02-11-2017 16:14:48.430000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6c1051176e324c869707b01c77fd295a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('02-11-2017 16:19:44.276000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6fe2dc9c817740f3bfb1d18a5340fd91', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('02-11-2017 16:25:02.068000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('74e1f64f2f4d433288692bfefe4aab07', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-10-2017 09:29:30.698000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6cd6f9ab195441ec9f7f03d62b6e542a', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('09-10-2017 09:41:36.750000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('360e5460ed9b4cb1a3d4e356407063fc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-10-2017 15:49:34.632000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a8d8a3c3ef8c40bd8106eff64583a09a', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('10-10-2017 09:06:23.167000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('65c0193730e84b51a4176f3b672995d3', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('10-10-2017 09:33:54.477000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('90d4443c9ea6429c874dcf91fcc444da', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('10-10-2017 09:44:48.742000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7cb2cd54cfeb4e22b47053cc43b25f67', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 13:34:12.934000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7d1acd2f16324c688090e8a1d1070bec', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 13:39:04.666000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('41cd96a8ae724b6a9838c83765308fe8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 13:43:07.306000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b323f5dfc7aa4fbea38ca30b45d121bc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 15:35:40.018000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c51f55e3f1404de1a120b71b902f3027', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('10-10-2017 15:37:33.408000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('57919017c15b476680cde78ba0b46ff8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 17:15:17.369000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('88dd0acbdb2b47239bd368b9762b85af', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 10:18:48.787000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ecfb37f016d545f0a739cd2b4f10bc9e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 10:32:56.502000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e9cc59a8abf84b41a56c7c08a2fbef98', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 11:40:41.302000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('42f10855eb8f474ebd018d1b5b0127a5', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('11-10-2017 14:29:33.021000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('84d5213cd94c44ffa29c372053652a74', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 14:59:27.281000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('78caa634d28043cfb690f82821a7eaff', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 15:35:08.971000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('81aa9c54a3eb4a4da21a3b418644f96e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 16:39:53.528000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('09e2e12c2ea641c7acf7a7e78c895ff0', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('11-10-2017 16:51:33.990000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('07b89f4cf27f4fa5a4b5017dec9fd50c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 13:54:48.693000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('30162bf5d344491b86c91685a04a8e64', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 14:19:49.299000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ef76bad66c4e4ba8bfb982e541f57ab4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 14:31:54.402000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e61af14279544da2968ab897aeddad72', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 14:38:24.978000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('be395db2802a401c98b7695abadc5cc6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 14:39:45.596000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9fdfbdb0d82f42eeb9dad1b473dde5e6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 15:27:10.990000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fedc99dae7594c82b9d7b0aff98890ee', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 15:32:07.060000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ebb5d9db469247bb8193c2ef236e378b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 17:18:13.121000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('32498dd0aa714b5d89752c31a5d597dc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 17:19:55.341000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('285f56a8de0d411ea3f6864d5c329fb7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 18:58:54.414000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4e79adeddbb24fa1babb2d4096d63588', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('13-10-2017 10:54:05.441000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('35f2ca916361497ca42044ef3e35375b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 13:49:49.400000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('745544173f854ace8465d8818d3c2a8b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 13:51:15.276000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7a147fcfc81c45ae9a6496448037230a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 17:26:55.866000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('196cc73cc64e49ceaec57efcf22a4341', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 17:20:56.306000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fd0d8102bc0745709bac3712f0a2cef7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 17:36:44.115000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1b67115bece6413e90d21a59c4ac248e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 17:42:13.718000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0c8bef75a8dc4ea0bc33786f7c5909f0', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('16-10-2017 14:40:18.253000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7c8e8013a02e4fe1a4817a114f1a0e71', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 16:03:54.997000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b46072d9b5e74cc3886e98f351804718', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 16:30:20.656000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('68cc8e339c9d491cb340ea9dbfba5256', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('16-10-2017 17:35:34.794000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('78a8ce89c3d945e0acab2621a3d92f00', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 16:21:04.138000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('50a0bf7233ce4cd5b63180e36d537c4b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:09:16.983000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7f295ae24b124468a7793dafddd9012a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:19:06.292000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e16ced13cb9249cbbfe11392b75cc32a', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('18-10-2017 14:59:06.999000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('eec425a643cc4c8baae5659fdbebc298', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('18-10-2017 15:19:08.607000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e648da846c334ee094c3560b161eb688', '登录失败', '登录失败', 'sysamdin', '127.0.0.1', to_timestamp('18-10-2017 15:41:27.550000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1b34d40f545347e08a4e271805f80811', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 15:41:42.532000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('da94d83dbf8647c78d0f051ad9c03a90', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 11:32:13.947000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7bff2a05c13d4a2fb4bf3b6e7d165715', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('19-10-2017 13:59:51.834000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 1700 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5a6f4e1dd8864b63a0b4dbdab9c51628', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 17:38:38.016000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8ace2ae6da10427f90b75b623dff2076', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 17:51:54.598000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1b475917e2a8400fba63e39cdcc2a61c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 17:53:48.380000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('076c2eabaadd43579bf6ba10c7f4d9f7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 09:33:47.581000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('caf571bdda01430b8a6e7e1bbe58c856', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('20-10-2017 11:26:40.425000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1d43d4eb68834e2e888ef99cab720d29', '登录失败', '登录失败', 'lvbo', '127.0.0.1', to_timestamp('20-10-2017 11:29:29.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6c9e6a46d03a4bfda697c74982971e2c', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('20-10-2017 11:30:04.411000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('020f2c2ef41f400b940dd7dc684607af', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('20-10-2017 11:32:47.900000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cf742e8d2aaf4d3a9cfd13c52f50a6d0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 14:19:32.536000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('987ea98ddf4a4d0fb84ea9a021d3997b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 14:26:37.323000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dbfcf87773a34bce86f96883ff02ee36', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 15:00:53.307000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d0df1bb107aa4edaaa88d229b4b231f8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 16:35:14.912000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d6642266c5f74506a2ecfb6e12ac2c22', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 09:50:06.382000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9749e48007284beb869b655a180ab652', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('23-10-2017 10:36:58.723000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('95c8f73561af478fba646697881bc85b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 11:42:16.545000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4f33809fc1c745658c7d51ee63866aa0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 17:19:47.503000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('91fbb9bad74d4d95b84cad5327ac04c5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 09:30:15.211000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('67c80e05584a4d49b4f77928f09ebee3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 16:37:24.710000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('37aa55b7e8744bf7b80b781238360dcf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 16:42:16.122000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e634550a27d1432f9ddf70ebc81bb486', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('24-10-2017 17:05:01.307000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('80e28678f09340bcab50e547c5bb048b', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('25-10-2017 10:10:40.053000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e69fc12231ef460b9a71f993ea7ebc9c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 13:00:35.928000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('88e3d417f1a6426d8b2c0769e6d92936', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 13:26:47.655000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('da5e3a877c07460f8a6cf4329aac3e99', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 14:13:29.447000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d91dc31889b64fbaa27f3f7b71bd898f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 17:32:52.893000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('faafcba25ae544e4806a1a0d17960d57', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('30-09-2017 14:16:42.504000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7b6e9621895a4800b099628cb0e81059', '登录失败', '登录失败', 'linss', '127.0.0.1', to_timestamp('30-09-2017 14:21:23.819000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('08156f3ab299427b865259b1cd95f552', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('30-09-2017 14:22:15.330000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6d6ba3ca1e784adfa7f13d2096c3c1c9', '登录失败', '登录失败', 'linss', '127.0.0.1', to_timestamp('30-09-2017 14:26:46.739000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a62e3816c50145f383335ba032732e08', '登录成功', '登录成功', 'zhangr', '192.168.6.129', to_timestamp('30-09-2017 14:27:29.967000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ee7435a4853f4e51a5d66b55ab00b5d4', '登录失败', '登录失败', 'linss', '127.0.0.1', to_timestamp('30-09-2017 14:28:00.949000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('22e1cd46294e485b9cf3d7230115ebbf', '登录成功', '登录成功', '系统管理员', '192.168.3.76', to_timestamp('30-09-2017 14:28:55.003000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('18438ebcdf164f5081a4c9b09e22037c', '登录成功', '登录成功', '林松松', '192.168.3.76', to_timestamp('30-09-2017 14:31:49.380000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('065d70cdaa5a4bf6b97ae06d13a17f1c', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('30-09-2017 14:51:16.418000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('82e3ad8430864007b53b74723b3698fa', '登录成功', '登录成功', 'jean1', '192.168.6.129', to_timestamp('30-09-2017 14:55:15.816000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6a6a2231905a40c7bad7b8c17e273366', '登录成功', '登录成功', 'jean1', '192.168.6.129', to_timestamp('30-09-2017 14:55:50.308000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1e9d84d39f63450ba5553d5874dd46f6', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('09-10-2017 09:37:24.965000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b4f5579513b1415fa846beb4c7ff304a', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('10-10-2017 10:42:36.531000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('91b744e23d8b46b99add3269f5f53463', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 19:07:33.997000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fd2e0becb74c427d9c3bf76ca92e12ff', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 19:08:56.567000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6ba49eac1f3f43b997d4e0260e5b894f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 19:10:05.790000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f8711c78db854d5a8a41d6dd5ab2979c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 19:11:36.311000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('60d761a8a4474db9b9e95a6aef0645bd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 19:12:53.068000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4391dd68898646ff87ba9b9fbd1d4a4a', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('11-10-2017 10:48:58.941000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5c448e46510c443ab74e6870aed8917c', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('11-10-2017 13:47:33.220000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('294423964b6b4531805441c1295fafeb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 13:59:34.263000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e2c8b3c92e0044c692badaac407be351', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 14:01:51.871000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e2e128dd0ce44b15aead7cf3b2abbd6a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 14:42:20.285000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b551dc63dd684be5a09634297ca2df34', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 14:49:24.460000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ae2b87878f654786af87f3fd9e9de983', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 16:25:44.928000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('45f07b3744a84066a557e66a33a430e9', '登录成功', '登录成功', 'jean', '192.168.6.129', to_timestamp('12-10-2017 10:29:57.833000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e9b26a8a8fbc4b288daf851a199eda5b', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('12-10-2017 10:49:16.790000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2a3729c7b742436db682877e7f573c6b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 11:06:00.567000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('329a0aa360b94510b0259f1e23c3ed8e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 13:15:12.928000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c460ecd76173498ebc851a2894d2d468', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 13:20:05.395000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('50fa77a5393041218ba01778512d93ed', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 15:17:47.654000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('95090a6bb2d5470e87a2e1379c7dd03c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 15:57:23.125000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bdf34a560ba344989894200128bca731', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 16:38:42.237000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2509e2a1edab4d92a6de80148a784719', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 16:49:45.342000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a4721d49ab7f4317a765bd0f6e46df26', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 17:05:33.108000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2aa01d9346e1434c81b0fd2a7e46ff2f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 17:27:00.765000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('237e7bee73634c14b3bfca9307ff1aec', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 17:32:18.033000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c5c6ffb099b04e42bacb931412fdc38c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 17:43:43.160000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a63a9b5a18f54fe9b0c31a264e385008', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 17:45:08.968000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d021e831b76b4c0cba998978de456fed', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 18:11:08.672000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a5c20c777cc340de99c20c6c29335e8b', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('16-10-2017 15:11:05.250000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('136bf5a444f940b687da04b5bd73c472', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('16-10-2017 15:13:25.135000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('484bcbc6c9ec4cd5a92e76830fe12091', '登录成功', '登录成功', '系统管理员', '192.168.3.84', to_timestamp('16-10-2017 17:20:06.264000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2d112836bb5248d7b2c31bb7dcdc1615', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 17:53:30.007000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('abe7c5ee5c9944baab9484db4017058c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 08:41:24.866000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('534c6f4f57dd4a1aada22f41becb569f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 10:42:28.389000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('46a28c7e603c4281a0def2509ef4fb02', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 11:19:09.551000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9ba856765945496abb1c4d9c4a47350d', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('17-10-2017 15:04:45.158000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e02eda22d47b4998ab949c6132748dbc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 09:33:10.203000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5a3dfb8d72ed4991989240e0e672ac9e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 09:54:31.774000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('24bde8853ce545498d110c9ec8f979b5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 15:36:11.242000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b2ef1f98096c4ff9ae41e2c393e58428', '登录失败', '登录失败', 'WW', '127.0.0.1', to_timestamp('20-10-2017 11:22:23.680000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d4cdb43a406548fb92667c825559c48a', '登录失败', '登录失败', 'sysyadmin', '127.0.0.1', to_timestamp('20-10-2017 11:22:59.311000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f27b550ccb114cfdaf04e0bae2f4fae0', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('20-10-2017 11:23:14.864000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fa454c815f4e4f79949f73192a77c286', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('20-10-2017 11:25:35.888000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3e74939fd2004552b21373a47e854586', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('20-10-2017 11:45:18.323000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('898dccf3958b4f14a9a9b945314c45ed', '登录成功', '登录成功', '吕博', '192.168.6.183', to_timestamp('20-10-2017 11:45:33.065000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('99a372c370cf4c558be5988c06cbb913', '登录成功', '登录成功', '吕博', '192.168.6.183', to_timestamp('20-10-2017 11:46:13.735000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('766122c621f045ebb41042b792ed6d42', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 14:16:00.099000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3036eb5fd8bf432586bfe57d2a2d5142', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 15:44:56.030000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a25f06fc3f32449a9e934b1b18a73ff7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 11:38:30.135000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3496d009198f41c8b8f071fa78f96d02', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 14:47:18.628000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0f9f16644e4c463391e9cd98b2e20dfd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 15:34:59.807000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a49c983a479b4a7b84564993d677a121', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('24-10-2017 16:12:18.034000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fddc3c2d8b7f481c8b53ed8a7b22c02a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 10:00:21.236000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4134f6fdacbc4f368035a6307a5d0547', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 13:36:15.778000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1bd3f6db60c946dbbbb4c07cb7d5f121', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 14:18:57.413000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b6d1a68db3864251add96578e11d7b7d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 16:51:36.837000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8f148f8fc3e04e62b9afa6db871d96ec', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 16:53:28.415000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('13c9760e7eb54dfeb700c7a83d8072c1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 11:41:47.408000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('924a002579454e55a4f87c57e3547edf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 14:06:48.772000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('62d1a4516ea2456e88a2aa615fbacd21', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 14:08:25.184000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b7efe0c2f0584e6d80ea57666eb31dd0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 10:23:27.800000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8e47cd422b7c43e384d1c446dbcbd3de', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 15:57:49.943000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6538c4c67ac34d8ebc2a69b461a9a6e7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-10-2017 17:02:58.529000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 1800 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fcb9a5e302614a87bf822ac5aeb62367', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-10-2017 09:50:26.572000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('998bb91b970d4491b78bbb653cd3eb70', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('09-10-2017 09:31:12.405000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b6d623e1982441a2a04390fdfd950131', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('09-10-2017 09:35:31.990000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b4ced05268124947be344603590ca62a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-10-2017 15:26:26.934000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a68453e464b3444b8eb3d637459a131f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 13:23:01.934000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('102b57ce56b74ae1b480805066419840', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 13:57:28.535000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('527f47bca5a3451286b74aa03b5598b6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 13:59:56.094000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b9fb8737f6cd47338d3b13e72b9be5c6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 14:00:41.428000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e103ea392397434f861c59f0b406032a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 18:44:57.054000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ec610667b0c541adaea01f1bb977b049', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 08:28:31.629000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2307464825694832b5950313f5ba3695', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('11-10-2017 08:48:31.214000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('08364bfed2504ca9936ab3f4eee35a92', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 09:43:46.502000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f9be857048694313933de7c5b047f01e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 10:08:49.068000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4d981055403f437289292d273b31f969', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 11:32:28.438000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3758f1d4fdae4db9bc9fff65d5f7d10e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 11:57:07.243000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c59a8cf13b684d4b977ae683277a30cb', '登录成功', '登录成功', '系统管理员', '192.168.3.61', to_timestamp('11-10-2017 14:53:55.399000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9abc86cdba784057a34f7dfa10e159a0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 16:51:46.353000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a99dfecd24514080aa2f472f6a7f632e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 14:08:22.163000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d6bc7466fb234c668639294a8b9fee6a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 08:57:49.809000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('85be8033d3674c3197ea1668d2d780c8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 13:28:14.048000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b4c4505536c042c49f8b47805e8d6a04', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 13:45:15.756000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d6a161a4fa4a46358f3ea02fde790cfd', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('13-10-2017 16:30:52.608000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e1ee3d1dd9454015b111389fda2ad137', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 16:52:27.303000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a32630a7585c46d499e9087f81a4e915', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 16:17:58.134000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8b67b0de3acf4fe9845f58b7bb7547e9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 13:58:04.593000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('59f91be924774d5784a2f6c3f05d0059', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 14:43:29.755000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ad4069053fd34aa29310f26f3ee9a3ad', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 14:49:45.914000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bc53896798d6475abf893bfc76ce15b5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 15:05:49.445000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6e60d78fe0bc41d1bc873f1fd734d8a7', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('16-10-2017 15:07:58.829000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('04c60c531a7b4a688abb1704a601ee24', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('16-10-2017 15:08:56.737000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c3c32f486d54495791b3f6151e6069cd', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('16-10-2017 15:10:20.166000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0ed8f756c53442f287bf91622149c2b3', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('16-10-2017 15:16:04.661000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('611cd80310dd4379ad6f4479a0327fad', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 13:12:32.140000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('46612bc6d9f34790b1dbe0a7207b9d3e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 15:33:21.312000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9b74e28f736f4c16a4c7ac1bf3005a05', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 15:35:55.448000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('03c75a61222d4ed294a43d281d62da9d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 16:41:37.945000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9071ca07148945c080b5f4e78d332037', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:52:40.835000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('33c79f17c3d743eb96612c66062b1906', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:57:47.284000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('87ae33db69034914858cd476a42c9305', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('18-10-2017 10:25:18.002000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7f4a8e22480f4361801baa8d3719f023', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 16:06:51.839000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('87e04f9708ee4d55b57b8fea7a9f12bc', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('19-10-2017 09:57:41.906000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a698a68ce955431a9dfaa94c7bf7bc7c', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('19-10-2017 14:51:59.062000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d4462594c9c24b85a9fea0fd6c15b32b', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('19-10-2017 14:56:37.242000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3f19ac353d9e45b38af49a22270e1e8f', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('19-10-2017 15:01:01.397000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('08c1285929724e95a38ae817158ddec0', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('19-10-2017 15:02:39.318000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('681292079b4a422bbc6a767bca3bc062', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 16:39:59.135000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2c9aaf7d7e0d458db5bc369aa00af706', '登录失败', '登录失败', 'WW', '127.0.0.1', to_timestamp('20-10-2017 10:08:05.177000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('69c9aea693cf4951af03f23b04b0e93b', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('20-10-2017 10:08:11.635000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4188ce4d331c4a1e826b6f12264f3bd5', '登录失败', '登录失败', 'WW', '127.0.0.1', to_timestamp('20-10-2017 11:22:17.596000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f93a772258834e8d9a4eb989f650102b', '登录失败', '登录失败', 'WW', '127.0.0.1', to_timestamp('20-10-2017 11:22:34.273000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7f5276b5fdcf4a128168464c1a0b0cd3', '登录失败', '登录失败', 'lvbo', '127.0.0.1', to_timestamp('20-10-2017 11:28:14.072000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2cfdd6ff28da4d928edf2890283eb380', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('20-10-2017 11:28:33.307000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f532becdcebd4290b72a6a2e0c1f0b83', '登录成功', '登录成功', '系统管理员', '192.168.3.76', to_timestamp('20-10-2017 11:38:25.297000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fdd482dbe72b4820bfcf90f71fb7bcff', '登录成功', '登录成功', '吕博', '192.168.3.76', to_timestamp('20-10-2017 11:39:21.816000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1c7e3b17313f458f96c97047a70e1cb2', '登录成功', '登录成功', '吕博', '192.168.6.183', to_timestamp('20-10-2017 11:39:28.774000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5d63d20728094037b0cd622f572d2bb5', '登录成功', '登录成功', '吕博', '192.168.6.183', to_timestamp('20-10-2017 11:40:26.073000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('afc2cf464e23445c9120f212422f81e3', '登录成功', '登录成功', '吕博', '192.168.6.183', to_timestamp('20-10-2017 11:48:18.285000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a65d8d692e134ec69057aed8f5481692', '登录成功', '登录成功', '吕博', '192.168.6.183', to_timestamp('20-10-2017 11:49:47.767000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('33b794fa6fa54ae8939ecc93d6cc97f1', '登录成功', '登录成功', '吕博', '192.168.6.183', to_timestamp('20-10-2017 13:59:19.623000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3bebdf170d8b4f84bbdd277345f053a1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 15:45:40.105000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2f6b96c475fd44d1b1a353a2fa3e951f', '登录成功', '登录成功', '吕博', '192.168.6.183', to_timestamp('20-10-2017 15:53:00.953000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a7b3001c2f674363811ba17459eef5fd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 15:52:44.791000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a9f1d99b8e184a3ea8398b3311e524dd', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('23-10-2017 13:01:12.586000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('57cd28f5610e4e128a6dd9d4194a6511', null, '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 17:09:26.394000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('04bf1f9ab2cb4eeb819b2a36e2c818b9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 16:24:21.345000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6cb8fe0ba6534bc1a73c2ddf36baf7e1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 16:55:54.206000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('de71e5c7593c47fdb0d6f3642c5810ce', '登录成功', '登录成功', '吕博', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 16:56:18.886000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d685b578c45747d3bc716444f2c8af77', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 17:10:48.446000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f6730e5d4ba648208301eff728657c39', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 08:54:59.996000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1561e1721c46437da7d35cafc9fa2221', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 09:03:02.323000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e3ff3986f3854011b441f584fdbc38b8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 11:06:22.967000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7dafc1fb812e4fbfbc03c2c9818faf00', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 15:00:03.323000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('52e77630f53143dc8c41a92821e54eb8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 08:50:34.780000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2ed37851589745f9a79ebd88cb54bd3a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 08:58:21.892000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4aee14ec02184b949f912a06c06318b8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 11:52:41.871000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dd7ead14dd9141d8889977d716ad16cf', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 15:41:36.584000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d533d5f77bc148d386f950ed66b7b2d5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 15:49:17.694000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8a40159791fd413dbd749b47ca6202f8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-09-2017 14:22:35.431000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('93c9eecf22b74ce8aabddda3314fe004', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-10-2017 09:56:27.760000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9fddfc340f1b4a0ca6875f93815bd8e7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-10-2017 13:41:39.567000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('82f97afe84bb445c8737a80317b60167', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 14:39:26.578000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5f928bb82db64d0cb5d4a05214d2e133', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 16:40:07.225000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('149a9dba127a4c12865653304b91c251', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('10-10-2017 16:42:30.305000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('21168cee575841e8a2fdaf9692a6182f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 16:41:36.650000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f5bf41f09f3942678f684f3b5d3d87bd', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('10-10-2017 16:50:33.061000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('24241792745b40fd97a421d854fc987a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 17:59:37.778000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d78569d1644640529268f830cbd3b9f8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 18:15:36.241000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a9f1b48f8f73415d8aab9c013a8c4c07', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('11-10-2017 10:07:20.035000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('24eb2e508969480f89116ffdcceecf2d', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('11-10-2017 10:26:03.986000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3f2bd90008994876867260c10079c1ac', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 11:14:45.726000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2eb417b3406940888ff3f11fb4eb6dec', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('11-10-2017 14:00:50.001000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b3afb68ae7464cf889cbc30acafed643', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('11-10-2017 14:37:57.847000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0bc271e05b774e97845e7032e26a8652', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 15:47:27.581000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ee710b323a43409db42cf680d23e1e21', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 15:59:38.700000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('aeab7946f5ee4c768903bd19314bac13', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('11-10-2017 16:40:48.243000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('efc7e60965a9485394df995ac53c5cb9', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('11-10-2017 16:50:50.106000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b53e8e73836247e8b84579bb70a7008f', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('12-10-2017 09:09:42.354000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e5cf71e97fb54d8eb6af8c980ba3769c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 09:34:38.155000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('79d2686ca7994c908e3d4ea7fb854291', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 17:03:57.289000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('14de4cecaf774e6a828c91c67b225d94', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 17:51:05.625000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 1900 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b0bfb2dc9ccf4b2398f1d96f9d49cf51', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 08:36:29.945000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8ff4367863f94249b0341fb7e724661d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 08:56:33.352000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('43a70acf37d643d6a40bcae19631c604', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 09:47:22.309000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('773af2ca5bbe4bb7bd7d62ddd70ae5f1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 09:49:54.132000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5d4983a40de44c53aee23dc2b7562632', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 15:53:11.774000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c93e91fe36b941e68082f7399e4b63a3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 16:07:05.313000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ca530fae3710432580411642f414ba25', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 16:19:10.170000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('37d5a6f1636f42a6ba2f724d4c231fda', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 16:26:16.106000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2f30b0bfb3c440248608cf001b215dcc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 16:33:14.673000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b901fc3aff0248d7a746729a2a3e7156', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('14-10-2017 16:35:01.794000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('11233e71602444e09a3df2086d24aebe', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('16-10-2017 08:43:07.528000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7c0228c4534b4d6a9d30147fcf3553ff', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 08:59:54.111000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('963420a8954040e093adb6a29a182171', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 11:53:31.768000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d275fdbf262c4467ab8da298ab103b65', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 16:26:27.147000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7492907f86814927b812d128b965229a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 09:11:54.395000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('069ad6e9852240de9e855e787dcba537', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('17-10-2017 09:18:16.140000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('936c5609c1b74468b4609fca37f8a6d8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 13:39:03.606000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8fb12d3e84384e5c8b479ecfc14169ff', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 14:18:27.023000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('58d3f3db62dd434bbb182a6fe892b99c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 16:22:36.882000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b1fee1546b7345878a001ff12092e0e8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 16:22:45.850000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('650636e9534f480192b1d65e0c32319f', '登录失败', '登录失败', 'admin1', '127.0.0.1', to_timestamp('19-10-2017 09:24:39.252000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f21bf269424f4ef1819f1f670c619f26', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('19-10-2017 09:24:55.179000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fde44d8ed0584f7f871d51b943acab0f', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('19-10-2017 09:25:22.885000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ff140e3f524948a39bebec2ee7164645', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('19-10-2017 15:04:01.312000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('745cf462f6794d75a8247a587867cb60', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 16:36:54.738000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cba39b0383364183b1b5c434220c1192', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('20-10-2017 11:04:48.806000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8bf141c5b752435eb0b7d77ae17d0f28', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('20-10-2017 11:05:41.488000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8cfa03c1046344f580caec4db45f8901', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 14:43:39.679000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1bf0c483e72b4eecb55f38c8053e57ee', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 10:25:20.929000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('629dcb560c4f44d6abe6e83e2a455008', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 14:35:43.690000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e33659105f104c12bfdfab1b4a30474f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 15:03:42.705000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fe753b75643c4920bb7ee4b40146eeda', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 15:12:00.890000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('819f68cce4fc41279153d3c38f27a76c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 16:58:56.013000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('caae18d9c7794428b4ea61abf66a1ee9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 17:00:53.008000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('42d0fba770c64de49c7355e26ab1cb69', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 08:46:22.677000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1381c9286c7f4ca681b8ea3ec2db47ab', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 09:36:59.069000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('71fec2f38116499894311af4b86796b3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 09:39:38.743000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ab880e24cd8d4381bf1dd053ffba2b6e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 11:10:15.317000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f50f5287b8c44c83b603da4cfd3fdb34', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 13:07:26.080000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1c6f66af69db4f1ba3217ad07839db6a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 15:47:40.604000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6789e99cabf44041bee8db2e2a2c8aea', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 11:45:18.093000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0aa23b3cf111470eb1c1fcf4f3330587', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-10-2017 09:07:07.231000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('29cd07c2c5054d95a00887f796fe7245', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-10-2017 09:17:46.691000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('906404b856ee42209e46da8b7b46c948', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-10-2017 10:49:14.373000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6909ee357464499e9033b7c7223cc10a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-10-2017 11:07:55.044000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('92772841be5c4a7abc5bbb74477c0ab8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-10-2017 11:18:47.506000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f1132cdd2c064649a34053c42fca3238', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-10-2017 16:03:14.217000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('579103c5bd5545a6974d4c5c4cd51d73', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('30-10-2017 16:24:57.293000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e97323f51cae4f769fc9f9b698322e12', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('31-10-2017 08:58:10.907000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bb43d75563f14ddbaa245729f2e570e9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-10-2017 09:47:12.872000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5bd5c082589149f7aeb63df7348ed9e1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-10-2017 10:38:21.623000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9bf31347fd7a4c5c8aa3a586d099d432', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('31-10-2017 15:17:05.217000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('95433918cf66438e95ad0ee27dd78272', '登录失败', '登录失败', 'chenglx', '127.0.0.1', to_timestamp('30-09-2017 14:30:16.731000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('80ebbae4fb2d49e7aed5afe74392eb9a', '登录成功', '登录成功', '林松松', '192.168.3.76', to_timestamp('30-09-2017 14:30:43.610000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('be6d8b25c930454a8c332eae17f17bf7', '登录成功', '登录成功', '林松松', '192.168.3.76', to_timestamp('30-09-2017 14:40:51.434000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('573241778ee34246b5761e74f22d2594', '登录成功', '登录成功', '系统管理员', '192.168.3.76', to_timestamp('30-09-2017 14:41:22.322000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a1448af0980d41f3a6379754fa814a83', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('30-09-2017 14:54:22.058000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('24400f04f17446e1aa29e753f74bc2b5', '登录失败', '登录失败', 'chenglx11', '127.0.0.1', to_timestamp('30-09-2017 14:54:25.537000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('df85a24d0c314bf2bcb7422b33281b70', '登录成功', '登录成功', 'jean', '192.168.6.129', to_timestamp('30-09-2017 14:54:47.081000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('13e2f3210ae24b4b9b81f06382b9e810', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-10-2017 08:43:31.504000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cade8512f0bb4bb5bedb328dc7fea196', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-10-2017 10:34:57.271000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4a0bcb0066c842a287f663f66e636a77', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-10-2017 15:13:49.121000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('801baac95c0b413689b55bd672fc3227', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 14:58:54.910000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5628f1108b2a42e78e1d738f6b198db9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 16:51:59.725000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cf3112be650243099a0a35a92e230bc0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 16:58:49.855000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ccdb970bd41642539967330d308df329', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 17:02:48.080000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fa12cf0a86e048a58523ce28f2362bc1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 09:20:47.949000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7af1ab139ddd44e38b6e112ffa81d236', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 10:11:17.230000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ae85ef833a8d42d999b5033415223832', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 14:03:08.302000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2617923b830142f38a538c33517f5514', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 15:58:32.805000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8df85651a513448c84717c368dc1574d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 16:03:38.122000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b9c9f012c80d406e814554b41ccd6dbe', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 16:05:18.264000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a5c960e8a66c4bc7988669e70d80bee9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 18:03:12.537000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1d6a241a4f6e4277acdbb3f8a48a3fad', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 09:19:28.111000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('86f8c2b27fb84aefb133837fb7125735', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 11:33:22.415000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ebde4699118e444b99fb351fd9b2aaa6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 11:37:55.993000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8b143b5b4af84472aeda84bfa3a16bb8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 11:45:33.955000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c9fb0d568ff94b3db9448a76a31d70ae', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 15:49:42.238000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('43c0a523ccf04473b2e18d8e663ea291', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 08:59:40.452000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b1c2cfbea2944b83b9da0488c6301d19', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('13-10-2017 11:30:40.255000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e9b25b1a02634fc6b2f6eaa709d50dec', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 16:25:02.040000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4898d042217043a39ccf82039a1062b1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 08:31:04.183000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b9304a51768c47bc8387f96bd6b83fa1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 08:45:24.851000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8b986144ec684566a0158f8bc34539aa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 13:48:47.425000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d1ad00a4e14f4b4fa02c61b7063759b7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 15:55:16.977000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9c77742bd576460988da756c38c3fd5f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 14:06:09.056000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d5918ca9e9c04557aa2a7052a172351f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 14:41:10.495000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1370edab115f4760bb373af76ed9965d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:37:43.436000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('714f4196a7e646aabeee0a8919b38de2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:43:08.102000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('14d8c95c78bc4ef39a7f5be7be0fa443', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 10:33:52.034000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3318136f4c7c417582f5c720d057d504', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 16:43:48.582000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a7b5ab68b93a44c8a9e16df0606293e4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 17:04:01.510000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cb453f8682794b12bea3fb5d3a27f503', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 11:26:19.600000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0ed9028367fb40bbb24d682d6dc39fd9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 14:46:54.007000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1a708d145b1644af88b2bb8ac29da0c4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 10:03:10.645000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c7e859249c604b1198cc88ef622a132d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 08:24:54.133000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('315deb06e6134b6e900302fc59d04cb2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 08:44:15.951000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b0944d8abc35478f841659c09da6b3c4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 09:28:47.771000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9c85dd4c0cb0439fb37d066ff712e564', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 09:33:16.190000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bfb4b8fe21d545069facb53360d7e8cd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 09:38:14.109000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 2000 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4bb5dfce0ed14fcca2c4b05a76e1c585', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 13:31:18.990000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cf3c00c9f87b49adb9680e0b9fa1a826', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 08:46:38.193000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('491ff843c4884bc3afcfd5dcdaea8433', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 09:26:06.969000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('78e7037def6844b59fa8cb589f89eac9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 09:36:24.135000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('48d935b422824ec295312bea14becd11', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 10:53:20.065000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('03d225d3f5bc4e30a82bf1091a367316', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 09:51:02.315000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0579635d4ceb4c9c8f339fc2245f70ba', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 16:19:29.803000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ff51dd274a2546b8b248aa294ad38afc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 17:11:09.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('485aa69888e14559be57cc7add729625', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 08:41:50.165000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('81a819d9d23f41ffbe23eed6553fde5c', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('30-10-2017 10:43:58.446000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8961d19c712c4cedb27691e562db2f0a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-10-2017 09:53:50.637000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e68e843ca3c447c4b1a977f5fc19f025', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-10-2017 15:49:56.079000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2b91c7a6c79e4e2ab8a1bf6c68ff6897', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('31-10-2017 15:54:25.085000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7b0e6c8f02ef47af8c0b3220d2429706', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 08:59:46.385000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2c49f8f68e55435a864adb25f454e665', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 09:18:50.849000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6f73e080272d4020bde937ba621495dd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 09:31:58.074000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4913db38257443fc8f98a97b7b03d358', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 11:08:33.542000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('53516cdf3752444895016fd7299d2817', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 11:09:58.955000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('24b488385916456fa550de0156b98641', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 11:16:39.142000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cdf48a58897e49a2afa86c5331085c8e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 11:21:59.660000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7ef00c8f485e41f6b6a995047c719b08', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 11:30:15.339000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fe7595eaaa1842b385514902af2bbb1a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 13:12:02.671000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fa3f48f91ad540e098faee2d641ec255', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('01-11-2017 14:44:45.263000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('111fe47df26242819ac69d2fef4ed6fa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 16:37:05.422000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6f453cb88dbf4165b45e91a1ef99b093', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 16:38:50.825000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1bb95e384aa74d73834a661a2f780225', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 17:43:05.734000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7fad49560774403f87e5c0baa8ea5921', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('01-11-2017 17:44:17.971000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('917338f1b2614d8480d3d6d835c5bd85', '登录成功', '登录成功', 'zhangr', '192.168.3.92', to_timestamp('09-10-2017 11:06:43.949000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2a85ddc92fe34b2ba136db825fcc9786', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-10-2017 17:32:56.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5ae53a305ce24eb7961dbc8f7b9025d6', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('10-10-2017 09:47:52.885000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('34ea811d3a3846439a703a4eca94f232', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 14:43:56.802000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d0d82d9f391046e3895cac666baedfde', '登录失败', '登录失败', 'clx', '127.0.0.1', to_timestamp('10-10-2017 16:03:25.642000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('21e00dfe376545ea884eb718d7e6069b', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('10-10-2017 16:04:36.778000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('68b146ac6b5c45718db9d4c5e3adfd0d', '登录失败', '登录失败', 'cheng1234', '127.0.0.1', to_timestamp('10-10-2017 16:05:04.749000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bc921b2ec5674b5890d9365d6fdc08b8', '登录成功', '登录成功', 'jean', '192.168.6.129', to_timestamp('10-10-2017 16:05:44.763000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('44165f02da6f42c5a194e46ea64f1814', '登录成功', '登录成功', 'jean', '192.168.6.129', to_timestamp('10-10-2017 16:06:33.467000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f16716aec51942d9bcb9631bf94e2940', '登录成功', '登录成功', 'jean', '192.168.6.129', to_timestamp('10-10-2017 16:08:34.445000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ef531a269d744dba92588d728fe5e02d', '登录成功', '登录成功', 'jean', '192.168.6.129', to_timestamp('10-10-2017 16:09:28.421000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b517bec30e284a81b13bbe0a70654d14', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('10-10-2017 16:18:16.139000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('85e89b4bfd00402398aeb3e088256b8a', '登录成功', '登录成功', '系统管理员', '192.168.3.85', to_timestamp('10-10-2017 16:26:15.855000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('60cc895129d945d4814ea4d6ca7e7dff', '登录成功', '登录成功', 'jean1', '192.168.6.129', to_timestamp('10-10-2017 16:26:40.472000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('84091b1a3d9f451f9f4486c5d1728db9', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('10-10-2017 16:27:28.270000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9259e74e0264498fb5f949d1b5da8e97', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-10-2017 18:44:37.501000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1996bf67504f436da91fef6eb6c1fe71', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 09:28:15.863000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f10ddf5dd8be473da913d9bb67e96d23', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 09:45:41.549000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7607af1ffffc41db8edc39de4dc04d08', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 13:55:00.496000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('44914e1c5b7b4bb79d354fc8180721ef', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 14:07:26.850000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b3eacf15c2b24de986da2bca89eb3d69', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 15:05:24.526000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b15de1cb33d74de08c592d64399bdf3d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('11-10-2017 15:42:07.626000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e98f17a9a87d42978533a720c8244857', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 11:37:41.386000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('28521d7220794426818127901baf5d05', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 11:42:29.878000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e2e54f1060dc4c25b956376a829b5bc1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 13:21:55.466000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ad49a7e6f27648a8b05aa5e69d54221e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 14:34:10.734000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2e45965203b34337acd1c9ebea04f8be', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 14:36:43.803000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d60e29a72efb4836b048651681999c0c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 15:20:54.844000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('470435f2872b45a08c4dd11a01d172be', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('12-10-2017 15:43:24.761000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6234dd3188ba400e9c0c66466fb06497', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 08:48:29.616000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('60b0c3165d3b43b692a3363f1a00e852', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 10:27:34.762000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f52c024c3b6c408989597033fc6d8742', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 10:42:48.654000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('57a7b5c7f5c243b4ba154a8a6fd34b62', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-10-2017 13:44:58.810000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8f7d867f3b5b44b5b2290133fefd5f07', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 15:44:39.965000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f2c359b1ffa5412092b1e31fc0632577', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-10-2017 17:40:22.170000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2ac37ff231d540bcacc875e8d2d113c4', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('17-10-2017 09:26:22.081000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0999cdbb2d3a439c875803e33db47982', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 09:27:02.853000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dc02a168465b4b4aaa80aaeaf6d9d310', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('17-10-2017 09:28:37.380000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8c9e46e0a46c4a939240607dc12cedcd', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('17-10-2017 09:41:55.275000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('47da3ef75a524abba8f64bc24035c62b', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('17-10-2017 15:39:33.206000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dcb57c8a03404c63b3807f3cd0107db6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 15:46:14.678000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c0b9450c75e2431489f858a86c7fc6fb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:52:01.029000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('28f93c0d588e4fa1b0c1460e9c8778e5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-10-2017 17:56:50.352000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dfcfe38f5c8e404cbd3db2c8988938d7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 10:28:49.915000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3b410ad3daab412f854fceb8b5cd6586', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 10:37:32.592000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6d4272f1021542458fc87e34caecdebd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 10:39:56.840000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('48c2a305f7984b0f8943989adf8e9975', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 11:40:00.744000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7918bcca570744f69cc2b4c25a2c9b43', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 18:09:47.473000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('855a11a050fa4b928067b105a73c112e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('18-10-2017 18:14:04.117000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ffb96a4f011b400b8086a3d32aee50fe', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('19-10-2017 14:35:48.210000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e0b1ac47e7cf4da095e29b572083e7f6', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('19-10-2017 14:39:52.272000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('33747921f342435db8e77ea2c8385f01', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('19-10-2017 14:40:06.016000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('203072e121b54649952f5878ae612bee', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 14:49:04.371000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('759b5dd2e11e44eea84485ab175320da', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('19-10-2017 15:54:42.011000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d9c0842a2b754d91b70025622b70e36d', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('20-10-2017 11:03:06.923000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2ce3a3537a4e499991420a0efeda0307', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('20-10-2017 11:04:10.540000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2402fad83e3741b2b281ce3f58a8d4f5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-10-2017 15:12:52.251000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('529804e991694e868f142b5cbdf966bf', '登录成功', '登录成功', '系统管理员', '192.168.6.129', to_timestamp('23-10-2017 14:00:54.823000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8458402f6c64496c99721adb0ca3c962', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 16:00:40.452000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2d85a36ce3854778a2f47d05a63728b6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 16:37:10.408000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('12f65e5285014ef189ab90abd8df1971', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('23-10-2017 16:37:30.517000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1a2f13552de642ec8bb348a80d7c94be', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 13:38:13.904000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('708c68192a6f4f188a39e97d6f75692c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 15:03:37.483000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ed81db89c3f844bb9c303931151751f4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('24-10-2017 15:14:25.564000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('67cc19c51f0a4324bd44e4da544fabba', '登录成功', '登录成功', '石鑫', '192.168.3.85', to_timestamp('25-10-2017 09:59:31.435000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ffe5606b1963496fa966988ba4e4de4a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 10:36:10.694000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ea5bcb21454143dfbcd5e28f235840c3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 12:01:14.381000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cf0d02ae47a14ae4b304eed0caa64da8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 13:35:29.776000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('74acf456661345feb38a71b4aae4dea2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('25-10-2017 15:17:16.724000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5d30c8ad224b4d73a7b60c42dbe31613', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 15:29:16.293000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f947b9e5f1e64cd1ba5727ff5758351c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 15:31:56.356000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f024f2c9b1764ff9b026b0648bca0ac4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('26-10-2017 15:37:58.982000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6380cd15bd9c4f83907789f3a93500b8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 08:57:50.525000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 2100 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9304d27a134b4e83b684acfc401c1e25', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 09:18:18.479000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('87f66a734a5747f092352652de904c2f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 09:20:13.056000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('344d27aa745d40f3b0c3b0fe4b9f06f4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('27-10-2017 09:38:14.671000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('00c6b2223bfc4d8e9c4eed8b782f98e2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('02-11-2017 17:42:04.731000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('29de22a2ef044d3cb36727c660b1587b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 08:55:21.333000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b583749eef744c92b8f0acc2aa1c7921', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 11:35:36.502000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4e19ea9c9d7f479b91728b6468ffcdbe', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 11:53:57.901000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e25da50a88ff49aa978b6297159366d7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 13:03:31.819000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fc71d74d204c4520bcd2cd5e313bc4f4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 17:09:14.274000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dd467536c1bc47679a8fa6feee29ed16', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 17:21:10.515000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('42e730a7fde84f1089b739ededa8819a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-11-2017 08:45:13.985000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e30b5893ac194aae86219fc8fbe8261f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-11-2017 09:31:38.901000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f89dd40804b8464da56497d962abc43d', '登录成功', '登录成功', '系统管理员', '192.168.6.98', to_timestamp('09-11-2017 08:41:03.011000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4a5ca208678a48e695c3d3b9b5e93568', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 08:45:04.819000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cb35ea30f1724ed296f8af783f97232a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 09:47:57.302000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('87268b108079443fad96199f6dc86168', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 10:10:44.324000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0dd7807cae9f49ef90242cce6d56db44', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 10:14:24.532000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0a198ae51d794528a24d8e163b220f64', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-11-2017 15:21:33.311000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('43937c06fe7c4d23aeb0c244fcf8193d', '登录失败', '登录失败', 'zhangyang', '127.0.0.1', to_timestamp('13-11-2017 15:25:49.053000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a4af23258dd34feea9d3121b15c5c70f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-11-2017 15:25:56.305000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3c55bf210e7541d69b6582f27d826553', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('16-11-2017 09:01:31.581000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c9012ca1d51e4e9dbc08ac6e9313dbd4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-11-2017 09:33:31.723000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f54b59deef5e4dffb53b0875d379726a', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('16-11-2017 16:35:08.980000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('854917a6fa1d4763b8930c5639e48065', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('16-11-2017 16:39:24.742000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dd8f50adbf664bebbd04b0657fe4d028', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('17-11-2017 08:59:11.636000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e11e85b16aa2454ab3318b5a3d63c2fe', '登录成功', '登录成功', '系统管理员', '192.168.3.63', to_timestamp('20-11-2017 15:41:34.652000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('81ecaeba7cc7459fb0191e5164d391f9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 16:58:49.012000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('99424f9f63864013b964ac3dc01afed4', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 18:47:13.493000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dcc1b2bfcf584c7ba4b75dbb45971d56', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 18:50:01.895000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a7cfb86d5c2d4d5db11288eaf7023f26', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('05-12-2017 17:25:17.282000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('78c24d78b848453196271c4094e35cd6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 14:19:00.607000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c416c2acd45f4fd5a165f0d7cbb9dbe0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 09:39:30.618000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('035f991527254262baddec7c1a0444c1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 09:40:39.430000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('74dbc1a0557d40cab9b968195563b55c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 09:43:35.280000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('78d0159725994a6ab6b97286df6f3ca4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 13:11:25.573000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5706f9e052e44f9294dcbdc43fcb06c8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-11-2017 09:14:43.775000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6c19e19c93ec44abbfb04ef3ebc24038', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-11-2017 11:46:57.921000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('42bc8287dca041d4ae528bb151824369', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 10:14:47.614000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3db77442c5484d9385d3cb2c109ef768', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 10:37:36.866000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3693956a9aa541c296db3cc7d37400f6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 11:54:21.533000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('139734cbc4174ed1b66d97565990a8e1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 11:02:56.831000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5049d64feaf2478aa2085789f98545d5', '登录失败', '登录失败', 'wzm', '127.0.0.1', to_timestamp('16-11-2017 09:08:58.700000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('16cc5b8468934f2997f9d935479f4b00', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-11-2017 09:09:08.985000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5be812a520b94522a98c5f54d42607da', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-11-2017 10:39:40.142000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ef8b94907e8642daa54ca8aad52cac7f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-11-2017 10:15:15.102000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3921e3affec54c8abe00618facb40331', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 11:52:20.149000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b0d293c63299404e9218b455101a4c4c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 12:22:21.697000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3d09677172324bffb291e340672816dc', '登录成功', '登录成功', 'hhhh', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 13:52:25.320000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5f7dddb6a23e4ca7846f64bbace08993', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 13:54:47.439000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ccbd5dd0c4e94b3db078a7249743d70b', '登录成功', '登录成功', '系统管理员', '192.168.3.63', to_timestamp('20-11-2017 15:35:06.461000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('99780c6e85dd4c43866cb9ba2024dc87', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 15:40:46.104000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7d3661b3141f41fd93773122052e7dc5', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 15:41:39.098000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dc71cd4151cc4ef7996ec9d88dca83bb', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 15:44:23.990000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7f447ddf919848ef93c23763ddd6fca7', '登录成功', '登录成功', '系统管理员', '192.168.3.63', to_timestamp('20-11-2017 15:44:46.220000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d1b57d2f8628474bb3b48ca37d13526a', '登录成功', '登录成功', 'hhhh', '192.168.3.48', to_timestamp('20-11-2017 18:47:24.896000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('afcea24fabcd4849bf5e68b65d789264', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 18:58:51.672000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('98d5c38265cf4d33a37f77ab4ec25555', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('03-11-2017 11:05:14.401000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f0c821350f094f9cb752a686e98c16bc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 11:53:36.834000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('97800e5ca44b4f8993f575dbecf7440f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 13:41:27.546000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a6153fc14d544c6780bd72ba69f9bb23', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 13:56:02.120000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('856c80bb13b6401d917d863110e41d01', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 13:59:13.560000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b4d41f1a4ad1440ca445e017ea4569b9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 14:15:16.599000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7e7eca26e2f644eb886b6ef51f7d8d08', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('03-11-2017 14:19:52.472000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('eab540ddd51440b6837b1ed75d220622', '登录失败', '登录失败', 'qkw1', '127.0.0.1', to_timestamp('03-11-2017 14:20:56.822000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f42a5ec021cc466fada8cc3f5c7ae887', '登录失败', '登录失败', 'qkw1', '127.0.0.1', to_timestamp('03-11-2017 14:21:41.189000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b563e75f74ea47db874f25a562eef020', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('03-11-2017 14:22:34.073000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a20e7b89ce3b48bca23938323e0535bb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 14:23:24.578000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2286395d43684cef81094cd0ed6af6a4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 14:32:02.362000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bcec5d4ee43e42a085a05dc595cd1ed7', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 14:32:33.819000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5b7d4fbd8d8e4999a221e28f154ce19f', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 16:51:26.192000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d1339649824b4f62bb37f10fc3b8b176', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('03-11-2017 16:59:08.331000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('34c938099c4f4145ad6e6ed17a9cf19a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-11-2017 08:56:46.611000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('52dae4357e9748d6bddc3d985fb73603', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('06-11-2017 09:03:47.684000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b6eca5bf572648b39c2fc5bc380d7aad', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-11-2017 08:36:10.916000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('daa4fbae56ba4485ae9453e72a15d0e2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 10:04:14.610000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8f52ecc6a8a746de9ed48cea1187ac1d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 09:44:11.301000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('aee1c02169d94901bde7e2d5c01998f4', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 16:20:48.806000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4f9c1790dc574933a4a8542fcd48b55b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 16:20:53.638000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('569b0c4e09ca4291b63da6da21a4a398', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-11-2017 10:51:53.915000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7a6459fa3ce143e1bf15c9ea02741e92', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-11-2017 16:37:12.012000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8f49f0c726d84ee19d11e30ddd02ffc5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-11-2017 09:05:32.413000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('85b0c192484e4a28b01061e3b6f63be9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 11:27:09.221000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('dbf136f0e9a14397b54eea03b9e55e65', '登录成功', '登录成功', 'hhhh', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 11:52:09.798000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f1eacfa5f4f44cbe8bb517c574b87644', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 13:51:47.418000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d83f617d519d4c06bbc773832dd36291', '登录成功', '登录成功', 'hhhh', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 13:54:25.045000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9a3ebb27d3d149ceb4a20a050a25897c', '登录成功', '登录成功', 'hhhh', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 13:55:19.695000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fd767051580d4110974d1f149e4137d6', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 15:50:45.371000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('95d8d6922cef440780c3e5a9db0319df', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 17:05:59.359000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4ffc1718e73e4fc7be9a33596118d935', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 17:49:11.063000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6d95de72c85e4c498aa7aebe8d51be38', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 11:31:26.911000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('516b81a516bb4673bc2c3718799c2a1a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 11:11:36.251000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('18c7ef0b6a6d4b2a9fe1ada7caa6b646', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 13:34:51.592000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6a50cc6155fc4c5980f7c46077c27b13', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 14:03:35.625000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7aaa946b3c734d8eba6912ba1d7744fa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 14:11:09.080000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0c082d9de3d147618eaef62b7410d335', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 14:22:33.261000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('db44804e23ac4d35a8cf663de88c59f1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 14:25:22.367000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c68a4ddb7df14f72bc26a832afb8ff7d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-11-2017 09:18:01.726000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c29ce2ab22ba45fa8e35fce711776f31', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('06-11-2017 10:26:25.404000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bde0f256a2b7454aa7fe6699fb60781e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-11-2017 12:55:40.627000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9b61585e16e94de8b8a7d580c6798a91', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 10:03:32.410000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 2200 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1fdbc7dbd5bc48169d776ba087db5cb9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 10:18:42.732000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e0acb4c94c5448ba97076286a886495b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 15:43:06.419000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a75efe1d8a2e45218d21c7379e4d6096', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('13-11-2017 15:37:21.802000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2eb510c61a1547a2930b081ba99e7f96', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-11-2017 11:18:06.735000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d1a170bc9ef24e1d8314fe78ff17fecd', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('17-11-2017 10:03:17.089000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('073c3cb788ab4ac989a533d570cbede4', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('17-11-2017 10:09:18.511000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e4c64d889d594748ab4be68eee524004', '登录成功', '登录成功', '系统管理员', '192.168.3.63', to_timestamp('17-11-2017 10:10:30.162000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9a1897103f03451c8c3fb1159ce42d79', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('17-11-2017 10:10:56.198000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('84755a6b5234493b9e70453085d87665', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('17-11-2017 10:13:01.466000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a3862d25291b4d0c8dc28d25507019b3', '登录成功', '登录成功', 'hhhh', '0:0:0:0:0:0:0:1', to_timestamp('17-11-2017 11:00:59.232000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c6afaddd34d24e798a1588dae2a63e72', '登录成功', '登录成功', 'hhhh', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 10:54:33.316000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('04cb67864789411a8802c6172f996caf', '登录成功', '登录成功', 'hhhh', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 10:54:47.218000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c83c63aaae8045e29762d81f2cfe3d71', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 10:58:32.005000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a46fde5e46c14809b58bbbc1b0c90934', '登录成功', '登录成功', 'hhhh', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 11:27:24.332000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a622a458a4844317b54e4376f01d3151', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('21-11-2017 08:36:51.402000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2a992d4665894685b45143a51e5deccb', '登录失败', '登录失败', 'sysyadmin', '127.0.0.1', to_timestamp('05-01-2018 11:16:01.194000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ae3201107d24497e8a599ea4bd231077', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 11:16:40.219000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0a9ecc16c17246e89169b56cf7094da1', '登录失败', '登录失败', '1111', '127.0.0.1', to_timestamp('05-01-2018 11:33:13.789000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('540d7e86cc7749a995f2685be1a7b8b1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 11:33:36.461000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('efd05b49a2324dffb39ed44e5ecdec7b', '登录失败', '登录失败', '1111', '127.0.0.1', to_timestamp('05-01-2018 11:34:26.228000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f62b65f1498941af8e0e32e8e0f0fc10', '登录失败', '登录失败', '1111', '127.0.0.1', to_timestamp('05-01-2018 11:35:29.052000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7384e71d37ef47ebb61a147d7efeb249', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 11:37:26.407000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('487e728ee4e3466883683547b923af91', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 13:25:13.839000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4b87b9aab6e1433295a35c357a3f946a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 14:08:04.640000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ce2b465f96904bde86c267bbe822a472', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('02-11-2017 17:38:04.455000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('76d47a989d5440a9bb5d7193607494e8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 08:41:37.874000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('19b357d273e746a89af223044197dcfa', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 09:38:05.761000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c04e2c0e2d3f4f0989c1b6513e857558', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 09:39:05.438000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('947b5b4114f6440491bf63dd35109037', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 14:55:48.997000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('500de236be174974ba4b553c9d26b9de', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 16:23:19.342000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c820e06558ef4762a85bf7f07a701a3d', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('03-11-2017 16:57:24.497000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c9d2fee279414505905532ef2dc0eb3e', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('03-11-2017 16:57:38.070000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('de4acdb5115c470dae5b6c85fdbb67a0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-11-2017 10:57:39.582000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3f6e448e26e6487683c7414570a0a0d4', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('06-11-2017 11:37:58.578000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('854756bad7854fb086cadf0bf64116a2', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-11-2017 11:52:02.784000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5c13243c5bc449e18244f42af5877b5c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-11-2017 13:14:51.381000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('722f6ee1c77f4d6a96fd2bf3b08ec96b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 14:19:37.267000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6bbe834e64a14ab7bdbd148309ed47d8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 14:27:34.516000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('01777d5dc86a46e7a4d7e01d742e64d8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 10:42:02.098000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9ddcd6190233450fb443b95f1d215cfb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 11:11:19.038000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('46c4e951348040aa99dd6c78d8db94ec', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 11:25:58.740000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ce2b52a2f4364c4d84b21b0323179a72', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-11-2017 11:16:03.853000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('264d6a9209c04e3ca434daa7f9e21885', '登录失败', '登录失败', 'qkw1', '127.0.0.1', to_timestamp('13-11-2017 15:14:07.269000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('22c2a9fb7f3346a98ca5af88a3f999f8', '登录成功', '登录成功', '系统管理员', '192.168.3.63', to_timestamp('13-11-2017 15:14:41.589000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fa3e9a77510f469dac0d05b36223e26b', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('13-11-2017 15:29:49.011000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f2679fd330ff4ef692d348104c7c4178', '登录成功', '登录成功', '系统管理员', '192.168.3.63', to_timestamp('13-11-2017 15:36:43.395000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('191b19e91cf848c1a761aea844add18b', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('13-11-2017 15:38:12.175000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('52f3efc29c494c199758dfa5a3a3d109', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('15-11-2017 11:03:21.594000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('20caf7167bd14da5bc85f93cdc41a39a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-11-2017 10:01:53.173000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('18ea0b3fae784892bd4f0a8f108651c8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('16-11-2017 16:30:32.078000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4fd512e3ff7f443d8337b7265e3cf5b6', '登录成功', '登录成功', '系统管理员', '192.168.3.84', to_timestamp('17-11-2017 09:51:48.270000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('adb8aabf568b4311b56bb6094d2a5430', '登录成功', '登录成功', '系统管理员', '192.168.3.84', to_timestamp('17-11-2017 09:53:42.774000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('93cf4be6e1694917abf19ccd0385c858', '登录成功', '登录成功', 'hhhh', '0:0:0:0:0:0:0:1', to_timestamp('17-11-2017 10:52:40.488000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1ce9dd9960904557b2150f4bc674539d', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('17-11-2017 11:49:56.907000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('544eee8954f54111898cced8862ccb76', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('17-11-2017 14:37:06.882000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('26da5aac5c834b96a43f03b2be01b603', '登录成功', '登录成功', 'hhhh', '192.168.3.48', to_timestamp('20-11-2017 10:27:42.565000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('851b0f9754574f63a0d8d987ae23b3e2', '登录成功', '登录成功', 'hhhh', '192.168.3.48', to_timestamp('20-11-2017 10:29:00.549000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('33f3761e9351483785fc74e6a971a3ae', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 10:49:52.373000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e3267bf5f27b4b138578255a3ad81143', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 12:52:18.426000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('55e9248aef3449d4aefad694f2cd306e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 13:03:15.393000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ca0cd02fc2b94bcdaf7811edaf7f9284', '登录成功', '登录成功', '系统管理员', '192.168.3.63', to_timestamp('20-11-2017 15:41:50.283000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1bf553117e7f41a0b13aa9b459038303', '登录成功', '登录成功', 'hhhh', '192.168.3.48', to_timestamp('20-11-2017 15:41:57.584000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f7ed6af077ba47968f653318e6591faa', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('20-11-2017 15:48:04.574000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e24e282b23d44b9dbd4e75d7729c7ce6', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 15:50:39.452000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2fc367eb43074659b4cfb43450f742a0', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 16:39:29.267000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7465de20e2954c298af51ffd7a9d929c', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 19:10:46.325000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2dc06bbe78794cec97eab7755653bba5', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 19:51:40.583000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('74525b6cb7014cfd87045cf4cf8e2707', '登录失败', '登录失败', '7777', '127.0.0.1', to_timestamp('05-01-2018 15:02:34.941000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('98c74e69a78b40709c2b4e1b4a9156e6', '登录失败', '登录失败', '7777', '127.0.0.1', to_timestamp('05-01-2018 15:03:03.297000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1ac0fe362c274f62925a40fe3bbbc4ea', '登录失败', '登录失败', '7777', '127.0.0.1', to_timestamp('05-01-2018 15:03:20.421000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f1f84b15aff44be9ae2ce48798348963', '登录失败', '登录失败', '7777', '127.0.0.1', to_timestamp('05-01-2018 15:03:31.240000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('14da6f8354c04f7ba2869eefaf80f2e9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 15:10:20.072000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e406cb4ee60f4bc29208b697f8aeaf84', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('08-01-2018 18:09:41.603000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('418adc75d5c4464cbd74dd55b8d1b2bf', '登录成功', '登录成功', '系统管理员', '192.168.6.68', to_timestamp('03-11-2017 08:41:20.612000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e0bf3939919c471594838141161f1c06', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 09:59:53.684000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ff4077357d504a1da6c73890f27a9632', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-11-2017 08:36:45.337000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('654217cdae724084a4036066de1a1871', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-11-2017 11:51:15.775000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2e1607b9410143c88d654289c4af6184', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-11-2017 09:09:49.989000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d3fc97e35ce44726b5bed1a55d038efc', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-11-2017 10:31:59.547000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('958a265c594142fda365681cad325d9d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-11-2017 08:41:56.577000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('bd73fbccefba40d0aa65315e71b086c9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('08-11-2017 15:07:29.409000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5b0ce43533aa44f99937e29d7e9418d5', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 08:52:21.988000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('a5c5ba376b8b40298d01ec8bdf858cad', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 14:37:58.722000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ccb785efc2834295a5f9a88cad0d5f28', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 14:40:52.640000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2f9fb41dcba846009ce592b4851f46b9', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 14:44:22.231000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ca498fc7dffb42588dde171027c9bbe8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 15:26:47.107000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6084cb926f574d978f04574fb2edbde1', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('09-11-2017 16:19:57.101000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('652334aa96644e14b17132419c9a942b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 11:04:53.005000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('281083378e1a4b95ab899a13ab72b144', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('13-11-2017 08:35:16.915000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('59995fd3a2a341cb82c694ca898e0802', '登录成功', '登录成功', '系统管理员', '192.168.3.84', to_timestamp('13-11-2017 15:14:01.185000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('988e0351461940b3b1865b865b964392', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('14-11-2017 10:39:32.660000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ccaaebf8eeda4152bf01af11e49c8864', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-11-2017 09:51:50.283000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('14d27b8fbcf7478bbb8315a5649bec9a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-11-2017 10:17:17.931000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('98edfca2807047a7b4ba2e9a87343120', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-11-2017 10:26:24.801000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('8fca5f845db34c29b2ec3ce96d565851', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-11-2017 10:27:51.227000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1e6db4a1a5754f0b8127ffbf79bdb3ba', '登录失败', '登录失败', 'hhhh', '127.0.0.1', to_timestamp('17-11-2017 10:31:13.286000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('9ff134c643f840acbf81d6fbf38695d1', '登录失败', '登录失败', 'hhhh', '127.0.0.1', to_timestamp('17-11-2017 10:31:24.655000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('42b5bf9d8fa1433286a0093ea337d1d8', '登录失败', '登录失败', 'hhhh', '127.0.0.1', to_timestamp('17-11-2017 10:31:36.295000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7f24e2572ad244f8a2485d9558b51ca2', '登录失败', '登录失败', 'hhhh', '127.0.0.1', to_timestamp('17-11-2017 10:31:51.977000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e9522512c1a34e19b7ca11573454e06a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-11-2017 10:31:57.924000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 2300 records committed...
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d9aeffd6c17b4121b30f8b8a52dda8fd', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-11-2017 10:37:37.127000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7605e85c44a84a26bd3fb2cbd37d5a4e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('17-11-2017 10:38:54.673000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('82706388952a403b86ddd7ec181b0958', '登录成功', '登录成功', 'hhhh', '0:0:0:0:0:0:0:1', to_timestamp('17-11-2017 10:39:23.269000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0cf8d62507c341f68dc1d6caa7f6893f', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('20-11-2017 09:26:13.579000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('1b26b8eaa6b645bc86be885a16148ddf', '登录成功', '登录成功', '系统管理员', '192.168.3.63', to_timestamp('20-11-2017 11:00:15.470000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ce0f3c37e7374936a318486446b848ea', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('20-11-2017 11:02:43.062000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('578e9681204342d4badba4d63bd40921', '登录成功', '登录成功', '系统管理员', '192.168.3.63', to_timestamp('20-11-2017 11:04:08.909000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('65e4d938abd24a699db96aa6e2987904', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 11:16:27.851000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('3afd4dd075a6470ea9f299d0dda3c4ac', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 16:35:49.537000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('001c6c9a0c964a2483aa59947c001eed', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 17:32:55.878000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('946e7e26b18d4d1699b088c6f70038ca', '登录成功', '登录成功', 'hhhh', '192.168.3.48', to_timestamp('20-11-2017 18:57:31.300000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('95825b8c17764dada708e75588b5480f', '登录成功', '登录成功', 'hhhh', '192.168.3.48', to_timestamp('20-11-2017 18:58:40.143000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('503f365c285e4987a30aa9fd983c5dea', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 19:05:02.484000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ef5ea630ddea4ea9b9e869d18f242c1a', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 19:12:47.506000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('fa6f98e527c74716abc7f78c62131a72', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('06-12-2017 13:43:10.922000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4902133a9c434a47af30b33aeb96f5ee', '登录失败', '登录失败', '7777', '127.0.0.1', to_timestamp('05-01-2018 14:28:19.317000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('09eb613084ff42f1944a6229a9126bd8', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 14:57:06.792000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e848114fb45d4b8db7b54eb99fb11e15', '登录失败', '登录失败', '7777', '127.0.0.1', to_timestamp('05-01-2018 14:57:22.895000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('25668e89bc3b4f2888231afe225daf54', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 15:01:44.385000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4171e38a2dd54033ba859b37be6e13e9', '登录成功', '登录成功', 'hhhh', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 15:11:28.768000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('4cc99d6e83184c8abe16b9c810605b64', '登录失败', '登录失败', '7777', '127.0.0.1', to_timestamp('05-01-2018 15:11:57.019000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('86be3117cf5f468ebc395bde7d72618b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 15:13:09.076000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6e0a29c2678946999695d98969a29329', '登录失败', '登录失败', '1111', '127.0.0.1', to_timestamp('05-01-2018 15:16:11.527000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('e8537efd7d6d490bb56723cd7b78283d', '登录失败', '登录失败', '1111', '127.0.0.1', to_timestamp('05-01-2018 15:19:51.590000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6c52fa868ca445df9ed9060765205872', '登录失败', '登录失败', '1111', '127.0.0.1', to_timestamp('05-01-2018 15:20:06.046000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('04503343f2fc4e9ba9b7510d2dd36757', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 09:39:43.258000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ddffd698fe73419383c71f78020feacb', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 09:47:06.902000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('7ab27f0829224536b314da89be6b4a7d', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 09:53:16.270000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('0e1531b8124040abbde96e822b08ca16', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 09:54:44.076000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('02066683c699481c83add5970d247e5e', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 11:33:17.751000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('049f1802f73e428d84c5b19c76672e46', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 13:05:58.135000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5a2ee536bbdf4ff29bc480bec6a36ca3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('03-11-2017 16:48:24.990000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b898388fccc14e06a4fb3a5c4c701c88', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('06-11-2017 13:52:52.886000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('656480cdc9b243348b7ff28c45727832', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('06-11-2017 14:02:27.529000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('2d54d37ba2da4f5eb9ab8e1799d2dc3a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('06-11-2017 14:54:20.643000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f1e599ad4c1b47c7b357e4d54bf28b9c', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('07-11-2017 15:09:58.259000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('82517b4ccced48e48aaa7f2b96b3a6ef', '登录成功', '登录成功', '系统管理员', '192.168.6.183', to_timestamp('08-11-2017 16:39:17.518000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('6e013c0f97d244ebb2c517824c03adca', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 10:27:13.112000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('d1099db287564989b62e63ae741e252b', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('10-11-2017 10:38:07.729000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('c86b14e29f72472bb441cc8afb834026', '登录成功', '登录成功', '石鑫', '192.168.3.63', to_timestamp('15-11-2017 09:29:55.007000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('f8d1f06e058e4f6fb4234bef6f820837', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('17-11-2017 09:59:25.944000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('df0832e48f644929b07369bbcdce9bf1', '登录成功', '登录成功', 'hhhh', '192.168.3.48', to_timestamp('17-11-2017 11:57:02.273000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('601eaf3acba643d4b18dc4fe9bc20df3', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('20-11-2017 16:20:17.360000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ca6b968dd0a3406aac5d1bf246ac1913', '登录成功', '登录成功', '系统管理员', '192.168.3.48', to_timestamp('20-11-2017 20:01:52.713000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('01b07241a9934c909f34a36b60b16622', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 13:12:56.178000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5dac2911db8e4b4c8fa2f62c879e0b5a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 13:33:12.158000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('5f400c484b704030a6ea5a02e97dc3ab', '登录失败', '登录失败', '22222', '127.0.0.1', to_timestamp('05-01-2018 13:44:43.772000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('cd417dd0cc7a4f06adba012e14b74d2a', '登录成功', '登录成功', '系统管理员', '0:0:0:0:0:0:0:1', to_timestamp('05-01-2018 13:57:16.543000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('b194e17b93ab4b6aba6a4a4a21423abe', '登录失败', '登录失败', 'wzm', '127.0.0.1', to_timestamp('05-01-2018 15:49:23.954000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
insert into SYS_LOG (logid, logname, logcontext, loguser, logip, logdate, logtype, companyid)
values ('ee041be10c4544bf83d264e5fce3a2e9', '登录成功', '登录成功', '系统管理员', '127.0.0.1', to_timestamp('05-01-2018 15:49:35.064000', 'dd-mm-yyyy hh24:mi:ss.ff'), '2', null);
commit;
prompt 2350 records loaded
prompt Loading SYS_ROLE...
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('b03eb42afbbf4198a1e4cb1f2449417a', 'admin', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('47c89486a5dc477c90a4012edc8d2e28', '测试用角色', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512077', '安全环保部经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512078', '财务部会计', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512079', '财务部经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512080', '财务总监', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512081', '采办部材料保护工程师', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512082', '采办部采购工程师', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512083', '采办部采购员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512084', '采办部仓库管理员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512085', '采办部仓库主管', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512086', '采办部费用管理员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512087', '采办部合同管理员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512088', '采办部进出口系统操作员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512089', '采办部经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512090', '采办部秘书', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512091', '采办部通关专员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512092', '采办部项目采购经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512093', '采办部项目文件协调员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512094', '采办部主管副总', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512095', '常务副总裁', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512096', '副总裁', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512097', '环保员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512098', '建造部车间主任', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512099', '建造部工程师', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512100', '经营部经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512101', '人事行政部经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512102', '人事行政部主管', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512103', '商务助理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512104', '设计部工程师', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512105', '设计部经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512106', '设计部秘书', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512107', '设计部文控员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512108', '审计副经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512109', '生产准备室主任', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512110', '室主任', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512111', '涂装领班', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512112', '项目管理部工程师', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512113', '项目管理部经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512115', '项目管理部秘书', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512116', '项目管理部预算员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512117', '项目经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512118', '行政助理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512119', '证劵部证劵事务专员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512120', '质检部检验工程师', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512121', '质检部检验员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512122', '质检部经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512123', '质检部秘书', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512124', '质检部主任', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512125', '主管副总', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512126', '资产管理部经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512127', '资产管理员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512128', '总裁', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512129', '总裁助理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512130', '总裁助理兼建造部经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512131', '总裁助理兼项目管理部经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512132', '总工兼设计部经理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512133', '采办部系统操作员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('022104e6db8b42f5bddbdb005512134', '建造部生产准备室主任', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('aaf36cc3e41c4204985a5c3743fa6f90', '生产准备室副主任', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('c40c8f3062b647a984ebe469db490587', '采办部供应商审核员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('db0dd569b9a4454e85f969322ddc21f6', '建造部经理助理', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('de1a1433a68a498ea41d810e51926236', '审计部统计员', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('e1fd8df114864ff68fe97a6e6fae499f', '材料控制', null, '0');
insert into SYS_ROLE (role_id, role_name, remarks, isdel)
values ('f6b7e9f1a9b14e888620ed1685314531', '质检部项目质检经理', null, '0');
commit;
prompt 65 records loaded
prompt Loading SYS_ROLE_AUTHORITY...
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '691', 'ROLE_BUDGETACCOUNT_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '692', 'ROLE_BUDGETACCOUNT_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '2', 'ROLE_SYS_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '547', 'ROLE_SYS_FLOWSET');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '561', 'ROLE_WAREHOUSE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '548', 'ROLE_SYS_SYSLOG');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '6', 'ROLE_SYS_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '56', 'ROLE_SYS_ROLE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '57', 'ROLE_SYS_ROLE_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '58', 'ROLE_SYS_ROLE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '59', 'ROLE_SYS_ROLE_AUTH_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '7', 'ROLE_SYS_DIC');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '60', 'ROLE_SYS_DIC_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '61', 'ROLE_SYS_DIC_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '62', 'ROLE_SYS_DIC_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '76', 'ROLE_SYS_SENIOR_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '8', 'ROLE_SYS_LOG');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '9', 'ROLE_SYS_SYSDIC');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '63', 'ROLE_SYS_SYSDIC_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '64', 'ROLE_SYS_SYSDIC_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('c35e658cc3514d6e891fbd8c54c4f30a', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('c40c8f3062b647a984ebe469db490587', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512088', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512117', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512080', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512086', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('e1fd8df114864ff68fe97a6e6fae499f', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512083', '17', 'ROLE_BASEINFO_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512096', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('c6abdea11b9e4188988aee1aed5edf3b', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512108', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512127', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512126', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512110', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512105', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('577459084dbf4747a6b322228f2d0fdf', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512133', '17', 'ROLE_BASEINFO_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('de1a1433a68a498ea41d810e51926236', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512088', '17', 'ROLE_BASEINFO_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512082', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512103', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512093', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512130', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512131', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512101', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512102', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512119', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512115', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512116', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512100', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512118', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512097', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512124', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512099', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512091', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512133', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('a7edb85342b44a0a8fc16dfd7bf45a87', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512120', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512121', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512081', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512079', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512092', '17', 'ROLE_BASEINFO_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512111', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512098', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512109', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512134', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512087', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512084', '17', 'ROLE_BASEINFO_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512084', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '65', 'ROLE_SYS_SYSDIC_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '17', 'ROLE_BASEINFO_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '559', 'ROLE_WAREHOUSE_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '102', 'ROLE_SYS_AUTHORITY');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '3', 'ROLE_SYS_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '558', 'ROLE_SYS_USER_INIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '79', 'ROLE_SYS_USER_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '80', 'ROLE_SYS_USER_DISABLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '81', 'ROLE_SYS_USER_ROLE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '82', 'ROLE_SYS_USER_AUTH_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '78', 'ROLE_SYS_USER_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '77', 'ROLE_SYS_USER_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '6', 'ROLE_SYS_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '59', 'ROLE_SYS_ROLE_AUTH_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '58', 'ROLE_SYS_ROLE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '57', 'ROLE_SYS_ROLE_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '56', 'ROLE_SYS_ROLE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '4', 'ROLE_SYS_DEP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '54', 'ROLE_SYS_DEP_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '52', 'ROLE_SYS_DEP_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '53', 'ROLE_SYS_DEP_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '7', 'ROLE_SYS_DIC');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '62', 'ROLE_SYS_DIC_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '61', 'ROLE_SYS_DIC_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '60', 'ROLE_SYS_DIC_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '9', 'ROLE_SYS_SYSDIC');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '65', 'ROLE_SYS_SYSDIC_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '64', 'ROLE_SYS_SYSDIC_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '63', 'ROLE_SYS_SYSDIC_ADD');
commit;
prompt 100 records committed...
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '8', 'ROLE_SYS_LOG');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '76', 'ROLE_SYS_SENIOR_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '548', 'ROLE_SYS_SYSLOG');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '547', 'ROLE_SYS_FLOWSET');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '102', 'ROLE_SYS_AUTHORITY');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '3', 'ROLE_SYS_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '558', 'ROLE_SYS_USER_INIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '77', 'ROLE_SYS_USER_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '78', 'ROLE_SYS_USER_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '79', 'ROLE_SYS_USER_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '80', 'ROLE_SYS_USER_DISABLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '81', 'ROLE_SYS_USER_ROLE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '82', 'ROLE_SYS_USER_AUTH_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '4', 'ROLE_SYS_DEP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '52', 'ROLE_SYS_DEP_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '53', 'ROLE_SYS_DEP_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '54', 'ROLE_SYS_DEP_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '598', 'ROLE_CONTRACT_MEAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '599', 'ROLE_FRAME');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '2', 'ROLE_SYS_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '547', 'ROLE_SYS_FLOWSET');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '548', 'ROLE_SYS_SYSLOG');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '6', 'ROLE_SYS_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '56', 'ROLE_SYS_ROLE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '57', 'ROLE_SYS_ROLE_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '58', 'ROLE_SYS_ROLE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '59', 'ROLE_SYS_ROLE_AUTH_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '7', 'ROLE_SYS_DIC');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '60', 'ROLE_SYS_DIC_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '61', 'ROLE_SYS_DIC_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '62', 'ROLE_SYS_DIC_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '76', 'ROLE_SYS_SENIOR_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '8', 'ROLE_SYS_LOG');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '9', 'ROLE_SYS_SYSDIC');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '63', 'ROLE_SYS_SYSDIC_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '64', 'ROLE_SYS_SYSDIC_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '65', 'ROLE_SYS_SYSDIC_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '102', 'ROLE_SYS_AUTHORITY');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '3', 'ROLE_SYS_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '558', 'ROLE_SYS_USER_INIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '600', 'ROLE_FRAME_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '77', 'ROLE_SYS_USER_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '78', 'ROLE_SYS_USER_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '79', 'ROLE_SYS_USER_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '80', 'ROLE_SYS_USER_DISABLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '81', 'ROLE_SYS_USER_ROLE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '82', 'ROLE_SYS_USER_AUTH_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '4', 'ROLE_SYS_DEP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '52', 'ROLE_SYS_DEP_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '53', 'ROLE_SYS_DEP_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512077', '54', 'ROLE_SYS_DEP_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '562', 'ROLE_WAREHOUSE_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '603', 'ROLE_FRAME_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '601', 'ROLE_FRAME_SAVE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '602', 'ROLE_FRAME_SUBMIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '608', 'ROLE_PURCHASE_CONTRACT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '609', 'ROLE_CONTRACT_SAVE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '610', 'ROLE_CONTRACT_SUBMIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '611', 'ROLE_CONTRACT_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '612', 'ROLE_CONTRACT_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '604', 'ROLE_STOCK_MEAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '672', 'ROLE_DIRECT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '673', 'ROLE_DIRECT_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '674', 'ROLE_DIRECT_SUBMIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '675', 'ROLE_DIRECT_APPROVAL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '605', 'ROLE_STORAGE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '652', 'ROLE_STORAGE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '653', 'ROLE_STORAGE_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '654', 'ROLE_STORAGE_EXP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '659', 'ROLE_STORAGE_SUB');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '684', 'ROLE_OUTSTOCK');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '683', 'ROLE_STOCK');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '676', 'ROLE_ORDER_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '678', 'ROLE_MATERIAL_PURCHASE_ORDER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '709', 'ROLE_ORDER_INSERT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '710', 'ROLE_ORDER_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '711', 'ROLE_ORDER_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '712', 'ROLE_ORDER_SUBMIT ');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '713', 'ROLE_ORDER_APPROVAL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '714', 'ROLE_ORDER_PURCHASE_END');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '677', 'ROLE_MATERIAL_PLAN_MEAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '679', 'ROLE_PURCHASE_PLAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '693', 'ROLE_PURCHASE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '694', 'ROLE_PURCHASE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '695', 'ROLE_PURCHASE_INSERT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '696', 'ROLE_PURCHASE_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '682', 'ROLE_BUDGETPLAN_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '697', 'ROLE_BUDGETPLAN_SAVE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '698', 'ROLE_BUDGETPLAN_SUBMIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '699', 'ROLE_BUDGETPLAN_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '700', 'ROLE_BUDGETPLAN_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '701', 'ROLE_BUDGETPLAN_VIEW');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '702', 'ROLE_BUDGETPLAN_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '703', 'ROLE_BUDGETPLAN_APPROVAL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '688', 'ROLE_MATERIAL_PURCHASE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '704', 'ROLE_MATERIALPURCHASE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '705', 'ROLE_MATERIALPURCHASE_SUBMIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '706', 'ROLE_MATERIALPURCHASE_INSERT');
commit;
prompt 200 records committed...
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '707', 'ROLE_MATERIALPURCHASE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '708', 'ROLE_MATERIALPURCHASE_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '624', 'ROLE_PAY_MEAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '685', 'ROLE_INVOICE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '722', 'ROLE_LOCATION_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '723', 'ROLE_LOCATION_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '720', 'ROLE_LOCATION_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '564', 'ROLE_REGION_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '565', 'ROLE_REGION_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '566', 'ROLE_REGION_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '560', 'ROLE_COMMODITY_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '642', 'ROLE_MATERIALTYPE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '643', 'ROLE_MATERIALTYPE_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '644', 'ROLE_MATERIALTYPE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '645', 'ROLE_MATERIAL_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '646', 'ROLE_MATERIAL_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '647', 'ROLE_MATERIAL_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '648', 'ROLE_MATERIAL_IMP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '649', 'ROLE_MATERIAL_DOW');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '650', 'ROLE_MATERIALTYPE_IMP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '651', 'ROLE_MATERIALTYPE_DOW');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '686', 'ROLE_SUPPLIER_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '687', 'ROLE_BUDGETACCOUNT_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '689', 'ROLE_BUDGETACCOUNT_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '690', 'ROLE_BUDGETACCOUNT_IMP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '691', 'ROLE_BUDGETACCOUNT_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '692', 'ROLE_BUDGETACCOUNT_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '2', 'ROLE_SYS_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '547', 'ROLE_SYS_FLOWSET');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '548', 'ROLE_SYS_SYSLOG');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '715', 'ROLE_INVOICE_SAVE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '716', 'ROLE_INVOICE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '717', 'ROLE_INVOICE_DELETE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '718', 'ROLE_INVOICE_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '625', 'ROLE_PAYMENT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '629', 'ROLE_PAYMENT_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '627', 'ROLE_PAYMENT_DELETE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '626', 'ROLE_PAYMENT_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '628', 'ROLE_PAYMENT_STATE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '592', 'ROLE_TENDER_MEAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '613', 'ROLE_TENDER_CONTRACT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '637', 'ROLE_TENDERCONTRACT_INVALID');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '636', 'ROLE_TENDERCONTRACT_BID');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '638', 'ROLE_TENDERCONTRACT_DOWNTEM');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '632', 'ROLE_TENDERCONTRACT_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '631', 'ROLE_TENDERCONTRACT_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '633', 'ROLE_TENDERCONTRACT_INSERT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '634', 'ROLE_TENDERCONTRACT_RELEASE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '593', 'ROLE_TENDER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '724', 'ROLE_MATERIALSTYPE_IMP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '660', 'ROLE_TENDER_RELEASE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '661', 'ROLE_TENDER_PRODUCTFRAME');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '662', 'ROLE_TENDER_UPLOADPRICE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '663', 'ROLE_TENDER_DOWNTEM');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '664', 'ROLE_TENDER_INVALID');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '665', 'ROLE_TENDER_BID');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '666', 'ROLE_TENDER_FILEMANAGE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '594', 'ROLE_TENDER_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '595', 'ROLE_TENDER_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '596', 'ROLE_TENDER_INSERT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '563', 'ROLE_WAREHOUSE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '721', 'ROLE_LOCATION_IMP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512129', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '17', 'ROLE_BASEINFO_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '559', 'ROLE_WAREHOUSE_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '561', 'ROLE_WAREHOUSE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '562', 'ROLE_WAREHOUSE_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '563', 'ROLE_WAREHOUSE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '721', 'ROLE_LOCATION_IMP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '722', 'ROLE_LOCATION_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '723', 'ROLE_LOCATION_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '720', 'ROLE_LOCATION_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '564', 'ROLE_REGION_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '565', 'ROLE_REGION_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '566', 'ROLE_REGION_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '560', 'ROLE_COMMODITY_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '642', 'ROLE_MATERIALTYPE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '643', 'ROLE_MATERIALTYPE_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '644', 'ROLE_MATERIALTYPE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '645', 'ROLE_MATERIAL_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '646', 'ROLE_MATERIAL_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '647', 'ROLE_MATERIAL_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '648', 'ROLE_MATERIAL_IMP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '649', 'ROLE_MATERIAL_DOW');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '650', 'ROLE_MATERIALTYPE_IMP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '651', 'ROLE_MATERIALTYPE_DOW');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '686', 'ROLE_SUPPLIER_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '687', 'ROLE_BUDGETACCOUNT_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '689', 'ROLE_BUDGETACCOUNT_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512128', '690', 'ROLE_BUDGETACCOUNT_IMP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512078', '2', 'ROLE_SYS_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512104', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512107', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512106', '1', 'ROLE_USER');
commit;
prompt 300 records committed...
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512082', '17', 'ROLE_BASEINFO_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512113', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '3', 'ROLE_SYS_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512083', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512092', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512125', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512085', '17', 'ROLE_BASEINFO_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512122', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512085', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512112', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512123', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512132', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '2', 'ROLE_SYS_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '77', 'ROLE_SYS_USER_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('db0dd569b9a4454e85f969322ddc21f6', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '78', 'ROLE_SYS_USER_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '79', 'ROLE_SYS_USER_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '80', 'ROLE_SYS_USER_DISABLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '81', 'ROLE_SYS_USER_ROLE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '82', 'ROLE_SYS_USER_AUTH_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '558', 'ROLE_SYS_USER_INIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '6', 'ROLE_SYS_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '56', 'ROLE_SYS_ROLE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '57', 'ROLE_SYS_ROLE_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '58', 'ROLE_SYS_ROLE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '59', 'ROLE_SYS_ROLE_AUTH_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '4', 'ROLE_SYS_DEP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '52', 'ROLE_SYS_DEP_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '53', 'ROLE_SYS_DEP_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '54', 'ROLE_SYS_DEP_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512090', '547', 'ROLE_SYS_FLOWSET');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512095', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512094', '1', 'ROLE_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '697', 'ROLE_BUDGETPLAN_SAVE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '698', 'ROLE_BUDGETPLAN_SUBMIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '699', 'ROLE_BUDGETPLAN_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '700', 'ROLE_BUDGETPLAN_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '701', 'ROLE_BUDGETPLAN_VIEW');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '702', 'ROLE_BUDGETPLAN_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '703', 'ROLE_BUDGETPLAN_APPROVAL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '688', 'ROLE_MATERIAL_PURCHASE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '704', 'ROLE_MATERIALPURCHASE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '705', 'ROLE_MATERIALPURCHASE_SUBMIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '706', 'ROLE_MATERIALPURCHASE_INSERT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '707', 'ROLE_MATERIALPURCHASE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '708', 'ROLE_MATERIALPURCHASE_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '624', 'ROLE_PAY_MEAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '685', 'ROLE_INVOICE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '715', 'ROLE_INVOICE_SAVE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '716', 'ROLE_INVOICE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '717', 'ROLE_INVOICE_DELETE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '718', 'ROLE_INVOICE_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '625', 'ROLE_PAYMENT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '629', 'ROLE_PAYMENT_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '627', 'ROLE_PAYMENT_DELETE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '626', 'ROLE_PAYMENT_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '628', 'ROLE_PAYMENT_STATE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '592', 'ROLE_TENDER_MEAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '613', 'ROLE_TENDER_CONTRACT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '637', 'ROLE_TENDERCONTRACT_INVALID');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '636', 'ROLE_TENDERCONTRACT_BID');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '638', 'ROLE_TENDERCONTRACT_DOWNTEM');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '632', 'ROLE_TENDERCONTRACT_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '631', 'ROLE_TENDERCONTRACT_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '633', 'ROLE_TENDERCONTRACT_INSERT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '634', 'ROLE_TENDERCONTRACT_RELEASE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '593', 'ROLE_TENDER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '724', 'ROLE_MATERIALSTYPE_IMP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '660', 'ROLE_TENDER_RELEASE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '661', 'ROLE_TENDER_PRODUCTFRAME');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '662', 'ROLE_TENDER_UPLOADPRICE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '663', 'ROLE_TENDER_DOWNTEM');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '664', 'ROLE_TENDER_INVALID');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '665', 'ROLE_TENDER_BID');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '666', 'ROLE_TENDER_FILEMANAGE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '594', 'ROLE_TENDER_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '595', 'ROLE_TENDER_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '596', 'ROLE_TENDER_INSERT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '6', 'ROLE_SYS_ROLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '56', 'ROLE_SYS_ROLE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '57', 'ROLE_SYS_ROLE_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '58', 'ROLE_SYS_ROLE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '59', 'ROLE_SYS_ROLE_AUTH_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '7', 'ROLE_SYS_DIC');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '60', 'ROLE_SYS_DIC_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '61', 'ROLE_SYS_DIC_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '62', 'ROLE_SYS_DIC_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '76', 'ROLE_SYS_SENIOR_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '8', 'ROLE_SYS_LOG');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '9', 'ROLE_SYS_SYSDIC');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '63', 'ROLE_SYS_SYSDIC_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '64', 'ROLE_SYS_SYSDIC_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '65', 'ROLE_SYS_SYSDIC_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '102', 'ROLE_SYS_AUTHORITY');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '3', 'ROLE_SYS_USER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '558', 'ROLE_SYS_USER_INIT');
commit;
prompt 400 records committed...
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '77', 'ROLE_SYS_USER_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '78', 'ROLE_SYS_USER_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '79', 'ROLE_SYS_USER_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '80', 'ROLE_SYS_USER_DISABLE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '81', 'ROLE_SYS_USER_ROLE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '82', 'ROLE_SYS_USER_AUTH_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '4', 'ROLE_SYS_DEP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '52', 'ROLE_SYS_DEP_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '53', 'ROLE_SYS_DEP_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '54', 'ROLE_SYS_DEP_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '598', 'ROLE_CONTRACT_MEAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '599', 'ROLE_FRAME');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '600', 'ROLE_FRAME_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '603', 'ROLE_FRAME_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '601', 'ROLE_FRAME_SAVE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '602', 'ROLE_FRAME_SUBMIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '608', 'ROLE_PURCHASE_CONTRACT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '609', 'ROLE_CONTRACT_SAVE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '610', 'ROLE_CONTRACT_SUBMIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '611', 'ROLE_CONTRACT_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '612', 'ROLE_CONTRACT_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '604', 'ROLE_STOCK_MEAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '672', 'ROLE_DIRECT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '673', 'ROLE_DIRECT_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '674', 'ROLE_DIRECT_SUBMIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '675', 'ROLE_DIRECT_APPROVAL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '605', 'ROLE_STORAGE');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '652', 'ROLE_STORAGE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '653', 'ROLE_STORAGE_MOD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '654', 'ROLE_STORAGE_EXP');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '659', 'ROLE_STORAGE_SUB');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '684', 'ROLE_OUTSTOCK');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '683', 'ROLE_STOCK');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '676', 'ROLE_ORDER_MENU');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '678', 'ROLE_MATERIAL_PURCHASE_ORDER');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '709', 'ROLE_ORDER_INSERT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '710', 'ROLE_ORDER_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '711', 'ROLE_ORDER_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '712', 'ROLE_ORDER_SUBMIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '713', 'ROLE_ORDER_APPROVAL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '714', 'ROLE_ORDER_PURCHASE_END');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '677', 'ROLE_MATERIAL_PLAN_MEAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '679', 'ROLE_PURCHASE_PLAN');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '693', 'ROLE_PURCHASE_DEL');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '694', 'ROLE_PURCHASE_ADD');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '695', 'ROLE_PURCHASE_INSERT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '696', 'ROLE_PURCHASE_EDIT');
insert into SYS_ROLE_AUTHORITY (role_id, auth_id, auth_code)
values ('022104e6db8b42f5bddbdb005512089', '682', 'ROLE_BUDGETPLAN_ROLE');
commit;
prompt 448 records loaded
prompt Enabling triggers for INTERMEDIATE_SUPPLIER...
alter table INTERMEDIATE_SUPPLIER enable all triggers;
prompt Enabling triggers for SYS_AUTHORITY...
alter table SYS_AUTHORITY enable all triggers;
prompt Enabling triggers for SYS_COMPANY...
alter table SYS_COMPANY enable all triggers;
prompt Enabling triggers for SYS_DICTIONARY...
alter table SYS_DICTIONARY enable all triggers;
prompt Enabling triggers for SYS_FILE_INFO...
alter table SYS_FILE_INFO enable all triggers;
prompt Enabling triggers for SYS_FLOWSET_DETAIL...
alter table SYS_FLOWSET_DETAIL enable all triggers;
prompt Enabling triggers for SYS_FLOWSET_HEAD...
alter table SYS_FLOWSET_HEAD enable all triggers;
prompt Enabling triggers for SYS_LOG...
alter table SYS_LOG enable all triggers;
prompt Enabling triggers for SYS_ROLE...
alter table SYS_ROLE enable all triggers;
prompt Enabling triggers for SYS_ROLE_AUTHORITY...
alter table SYS_ROLE_AUTHORITY enable all triggers;
set feedback on
set define on
prompt Done.
