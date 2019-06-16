prompt PL/SQL Developer import file
prompt Created on 2018年1月18日 by 唠叨
set feedback off
set define off
prompt Disabling triggers for SYS_USER...
alter table SYS_USER disable all triggers;
prompt Disabling triggers for SYS_USERINFO...
alter table SYS_USERINFO disable all triggers;
prompt Disabling triggers for SYS_USER_AUTHORITY...
alter table SYS_USER_AUTHORITY disable all triggers;
prompt Disabling triggers for SYS_USER_ROLE...
alter table SYS_USER_ROLE disable all triggers;
prompt Disabling triggers for SYS_WORK_PROCESS_RECORD...
alter table SYS_WORK_PROCESS_RECORD disable all triggers;
prompt Deleting SYS_WORK_PROCESS_RECORD...
delete from SYS_WORK_PROCESS_RECORD;
commit;
prompt Deleting SYS_USER_ROLE...
delete from SYS_USER_ROLE;
commit;
prompt Deleting SYS_USER_AUTHORITY...
delete from SYS_USER_AUTHORITY;
commit;
prompt Deleting SYS_USERINFO...
delete from SYS_USERINFO;
commit;
prompt Deleting SYS_USER...
delete from SYS_USER;
commit;
prompt Loading SYS_USER...
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('0b32e28786eb4a049f6a0aefe8594514', '19ba8597bf6f4760994d969936d8dd75', 'zeminwang', 'c4ca4238a0b923820dcc509a6f75849b', 0, 0, 1, 0);
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('360f22ccee364bfe94300238b3677225', '54c2220a7ea54caea15594f097874a49', '11111', 'c4ca4238a0b923820dcc509a6f75849b', 0, 0, 1, 0);
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('5fd111c2cade4678b5cff6346fcff51e', '7d72996877244e85802c38c3c42b0247', 'ceshi', null, 0, 0, 1, 0);
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '88cbd01e137c465a82c7cfc5ed9bedc6', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 0, 0, 1, 0);
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('2', '2', 'appadmin', 'c4ca4238a0b923820dcc509a6f75849b', 0, 1, 1, 0);
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('1', '1', 'sysadmin', 'acc801aaf80d6f8f8e8b542102ea9e78', 0, 0, 1, 0);
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('64e85a6103434986a81079c588f82cbf', 'fe9169473f1a4fa99183cfa01129f0e2', 'linss', 'e2af50680fd17a500b39743a225806b7', 0, 0, 1, 0);
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('2d3cb029968f43c383ccae0787c31cb0', '243f9bb1d1fb418eb37b232203f25088', 'linshu', null, 0, 0, 0, 0);
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('a774bb22af934003a82b2a9e52599db5', '2d8c226389c246f38ce74a45b4c9dc12', 'shix', '944f854d5454175ac8d3da3fcee7e2ba', 0, 0, 1, 0);
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('73b984ba9b274b46bf3fc3135f887ed5', '699783e43eee4a108117d9b1fb914c2b', 'chenglx', '5073ffa77bd99f451e6ad511d8ae6c68', 0, 0, 1, 0);
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '8a307bd49bf34f09b8ccbaaab3214925', 'chenglx1', '5073ffa77bd99f451e6ad511d8ae6c68', 0, 0, 1, 0);
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('78fd7059d978496d9beac6f7a210ca18', '434d9ba29b444381b8dd5e0147719177', 'lvbo', 'acc801aaf80d6f8f8e8b542102ea9e78', 0, 0, 1, 0);
insert into SYS_USER (user_id, userinfo_id, username, password, sysadmin, appadmin, isuse, isdel)
values ('bae91a2257334730b71ebd3ab24e8313', 'a14ad8bcb33647a1a8d20a17b218ab69', 'hhhh', 'acc801aaf80d6f8f8e8b542102ea9e78', 0, 0, 1, 0);
commit;
prompt 13 records loaded
prompt Loading SYS_USERINFO...
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('19ba8597bf6f4760994d969936d8dd75', '0b32e28786eb4a049f6a0aefe8594514', '王泽民', null, null, '采办部采购员', 1, null, 'tet@test.com', null, '18822600528', null, null, null, '50b765068857433c9199b5cfe15', to_timestamp('25-08-2017 14:11:56.069000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('54c2220a7ea54caea15594f097874a49', '360f22ccee364bfe94300238b3677225', '11111', null, null, '总裁', 0, null, '234410214@qq.com', null, '13233224220', null, null, null, '50b765068857433c9199b5cfe3', to_timestamp('05-01-2018 15:14:00.548000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('c88486e6328344adaf6c1e8bddfa3b98', 'b012d4ffcb814bea9325c1e50d39f44a', '4444', null, null, '总裁', 0, null, '243310214@qq.com', null, '13233224220', null, null, null, '50b765068857433c9199b5cfe3', to_timestamp('05-01-2018 13:42:13.405000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('40ff1e56dff84b92b6e098f457751187', '5643bd1eb1b14dbd9956f9bc82f7dadf', '6666', null, null, '总裁', 0, null, '243310214@qq.com', null, '13233224220', null, null, null, '50b765068857433c9199b5cfe3', to_timestamp('05-01-2018 13:59:13.396000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('e309ad436b9b4223859233d39606ef75', '4296f405fb0c422a9ce9ede6a08dfdc8', '7777', null, null, '总裁', 0, null, '243310214@qq.com', null, '13233224220', null, null, null, '50b765068857433c9199b5cfe3', to_timestamp('05-01-2018 14:27:27.420000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('7d72996877244e85802c38c3c42b0247', '5fd111c2cade4678b5cff6346fcff51e', 'ceshi', null, null, '项目经理', 0, null, '21@qq.com', null, '13233224220', null, null, null, '50b765068857433c9199b5cfe3', to_timestamp('05-01-2018 15:50:32.680000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('ba3931a1cbbd488bb6966bd4b751b202', '1806bf7da6dc47e29331c888c8f0a5b3', 'qqqq', '13213', null, '供应商审核员', 0, null, '243310214@qq.com', '1111', '13044404413', null, null, null, '50b765068857433c9199b5cfe5', to_timestamp('23-08-2017 16:48:11.938000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('88cbd01e137c465a82c7cfc5ed9bedc6', '3f4bff5d02ce44f09a727ab5b9d44c19', 'zhangr', null, null, '总裁', 1, null, '444622510@qq.com', null, '18817353333', null, null, null, '50b765068857433c9199b5cfe18', to_timestamp('21-09-2017 09:49:48.575000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('11-10-2017 14:29:33.037000', 'dd-mm-yyyy hh24:mi:ss.ff'), '192.168.3.92', null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('a69a397ea6bd45cebd33212b224cc8ab', '4149693b50d64456a2eb8b881a951828', '1111', '1111', '111', '项目经理', 0, null, '243310214@qq.com', null, '13233224220', null, null, null, '50b765068857433c9199b5cfe3', to_timestamp('05-01-2018 11:32:44.725000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('adfbcd6e70e74529bca9eaf5ad616b10', 'f1fbc64d46464c5f9dc897fd3f027569', '2222', null, null, '项目经理', 0, null, '243310214@qq.com', null, '13233224220', null, null, null, '50b765068857433c9199b5cfe3', to_timestamp('05-01-2018 11:52:17.356000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('cfb724fc375445f4815f04800c9e8ec0', '59889be9135b4b74a716e4be020f01c4', '3333', null, null, '总裁', 0, null, '243310213@qq.com', null, '13233224220', null, null, null, '50b765068857433c9199b5cfe3', to_timestamp('05-01-2018 13:26:09.081000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('2', '2', '应用管理员', '0', 'IT', '管理员', 0, 'appadmin@qq.com', 'sunfairy1991@sohu.com', '13722222222', 'bomesc-dkd@canic.com.cn', '13722222222', '天津', '1', '0', to_timestamp('10-07-2014 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('02-06-2015 09:48:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), '192.168.21.71', null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('1', '1', '系统管理员', '0', 'IT', '项目经理', 0, 'sysadmin@qq.com', 'bomesc-dkd@canic.com.cn', '13711111111', '13711111111', '13711111111', '天津', '1', '0', to_timestamp('10-07-2014 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('08-01-2018 18:09:42.477000', 'dd-mm-yyyy hh24:mi:ss.ff'), '192.168.6.183', null, '01.125');
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('fe9169473f1a4fa99183cfa01129f0e2', '64e85a6103434986a81079c588f82cbf', '林松松', '20170815', null, '项目经理', 1, null, 'song@163.com', null, '15622222222', null, null, null, '56c1a178532247afbc53941b3d787652', to_timestamp('14-08-2017 00:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('30-09-2017 14:40:51.434000', 'dd-mm-yyyy hh24:mi:ss.ff'), '192.168.3.76', null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('c29d384064894c30b2bf7809d7775106', 'e1c97996949242c789023383f33abf9b', '林叔书', null, null, '项目经理', 1, null, 'song@163.com', null, '15622222222', null, null, null, '56c1a178532247afbc53941b3d787652', to_timestamp('17-08-2017 08:54:13.623000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('243f9bb1d1fb418eb37b232203f25088', '2d3cb029968f43c383ccae0787c31cb0', '林叔叔', null, null, '项目经理', 1, null, 'song@163.com', null, '15222222222', null, null, null, '50b765068857433c9199b5cfe3', to_timestamp('16-08-2017 19:16:57.969000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('fe317e24bf804c2ebe6a23838946bb63', '7eda88df56a94c74a2bb3c55e27c2b76', 'zhangy', null, null, '设计部副经理兼结构室主任', 1, null, '243310214@qq.com', null, '13044404413', null, null, null, '50b765068857433c9199b5cfe5', to_timestamp('01-09-2017 10:26:13.875000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('13-09-2017 10:13:51.082000', 'dd-mm-yyyy hh24:mi:ss.ff'), '0:0:0:0:0:0:0:1', null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('2d8c226389c246f38ce74a45b4c9dc12', 'a774bb22af934003a82b2a9e52599db5', '石鑫', '19881018', 'it', '项目经理', 0, null, '7412@qq.com', null, '18822232111', null, null, null, '50b765068857433c9199b5cfe13', to_timestamp('18-09-2017 15:47:00.918000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('21-11-2017 08:36:51.464000', 'dd-mm-yyyy hh24:mi:ss.ff'), '192.168.3.63', null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('699783e43eee4a108117d9b1fb914c2b', '73b984ba9b274b46bf3fc3135f887ed5', 'jean', null, null, '项目经理', 0, null, '787@qq.com', null, '18722337654', null, null, null, '50b765068857433c9199b5cfe4', to_timestamp('30-09-2017 14:29:43.051000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('12-10-2017 10:29:57.849000', 'dd-mm-yyyy hh24:mi:ss.ff'), '192.168.6.129', null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('8a307bd49bf34f09b8ccbaaab3214925', '9f3f9f6d42d44f1a9efd38e431d5ef2d', 'jean1', null, null, '采办部经理', 0, null, '22@163.com', null, '18722219876', null, null, null, '50b765068857433c9199b5cfe4', to_timestamp('30-09-2017 14:52:12.609000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('10-10-2017 16:26:40.472000', 'dd-mm-yyyy hh24:mi:ss.ff'), '192.168.6.129', null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('434d9ba29b444381b8dd5e0147719177', '78fd7059d978496d9beac6f7a210ca18', '吕博', '131002', '计算机', '项目经理', 1, 'lob511@126.com', 'lob511@126.com', '15902264729', '15902264729', null, null, null, '50b765068857433c9199b5cfe4', to_timestamp('20-10-2017 11:27:57.770000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('24-10-2017 16:56:18.895000', 'dd-mm-yyyy hh24:mi:ss.ff'), '0:0:0:0:0:0:0:1', null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('a14ad8bcb33647a1a8d20a17b218ab69', 'bae91a2257334730b71ebd3ab24e8313', 'hhhh', null, null, '质检部电气检验员', 0, null, '243310214@qq.com', null, '13233224220', null, null, null, '50b765068857433c9199b5cfe3', to_timestamp('17-11-2017 10:30:57.054000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('05-01-2018 15:11:28.784000', 'dd-mm-yyyy hh24:mi:ss.ff'), '0:0:0:0:0:0:0:1', null, null);
insert into SYS_USERINFO (userinfo_id, user_id, realname, workno, specialty, position, sex, email, workemail, phone, workphone, tel, address, sign_password, company_id, createtime, lastlogintime, lastloginip, haiyangusercode, gufenusercode)
values ('c706b9acd5df4afa89dc9fd61d012224', 'ff09b7a32e984d44a8c72acd6e88dd52', '22222', null, null, '总裁', 0, null, '243310213@qq.com', null, '13233224220', null, null, null, '50b765068857433c9199b5cfe3', to_timestamp('05-01-2018 13:34:43.624000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null);
commit;
prompt 23 records loaded
prompt Loading SYS_USER_AUTHORITY...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '63', 'ROLE_SYS_SYSDIC_ADD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '560', 'ROLE_COMMODITY_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '642', 'ROLE_MATERIALTYPE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '642', 'ROLE_MATERIALTYPE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '560', 'ROLE_COMMODITY_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '642', 'ROLE_MATERIALTYPE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '642', 'ROLE_MATERIALTYPE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '642', 'ROLE_MATERIALTYPE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '643', 'ROLE_MATERIALTYPE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '57', 'ROLE_SYS_ROLE_MOD', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '58', 'ROLE_SYS_ROLE_DEL', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '59', 'ROLE_SYS_ROLE_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '4', 'ROLE_SYS_DEP', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '52', 'ROLE_SYS_DEP_ADD', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '53', 'ROLE_SYS_DEP_MOD', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '54', 'ROLE_SYS_DEP_DEL', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '547', 'ROLE_SYS_FLOWSET', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512095');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512094');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '62', 'ROLE_SYS_DIC_DEL', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '76', 'ROLE_SYS_SENIOR_USER', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '8', 'ROLE_SYS_LOG', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '9', 'ROLE_SYS_SYSDIC', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '592', 'ROLE_TENDER_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '593', 'ROLE_TENDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '594', 'ROLE_TENDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '595', 'ROLE_TENDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '596', 'ROLE_TENDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '613', 'ROLE_TENDER_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '598', 'ROLE_CONTRACT_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '599', 'ROLE_FRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '600', 'ROLE_FRAME_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '601', 'ROLE_FRAME_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '602', 'ROLE_FRAME_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '603', 'ROLE_FRAME_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '608', 'ROLE_PURCHASE_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '609', 'ROLE_CONTRACT_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '610', 'ROLE_CONTRACT_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '611', 'ROLE_CONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '612', 'ROLE_CONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '604', 'ROLE_STOCK_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '605', 'ROLE_STORAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '2', 'ROLE_SYS_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '102', 'ROLE_SYS_AUTHORITY', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '3', 'ROLE_SYS_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '558', 'ROLE_SYS_USER_INIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '82', 'ROLE_SYS_USER_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '77', 'ROLE_SYS_USER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '78', 'ROLE_SYS_USER_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '79', 'ROLE_SYS_USER_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '80', 'ROLE_SYS_USER_DISABLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '81', 'ROLE_SYS_USER_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '6', 'ROLE_SYS_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '56', 'ROLE_SYS_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '57', 'ROLE_SYS_ROLE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '58', 'ROLE_SYS_ROLE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '59', 'ROLE_SYS_ROLE_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '4', 'ROLE_SYS_DEP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '52', 'ROLE_SYS_DEP_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '53', 'ROLE_SYS_DEP_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '54', 'ROLE_SYS_DEP_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '7', 'ROLE_SYS_DIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '60', 'ROLE_SYS_DIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '61', 'ROLE_SYS_DIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '62', 'ROLE_SYS_DIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '9', 'ROLE_SYS_SYSDIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '63', 'ROLE_SYS_SYSDIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '64', 'ROLE_SYS_SYSDIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '65', 'ROLE_SYS_SYSDIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '8', 'ROLE_SYS_LOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '76', 'ROLE_SYS_SENIOR_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '548', 'ROLE_SYS_SYSLOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '547', 'ROLE_SYS_FLOWSET', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '17', 'ROLE_BASEINFO_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '559', 'ROLE_WAREHOUSE_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '561', 'ROLE_WAREHOUSE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '562', 'ROLE_WAREHOUSE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '563', 'ROLE_WAREHOUSE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '564', 'ROLE_REGION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '565', 'ROLE_REGION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '566', 'ROLE_REGION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '560', 'ROLE_COMMODITY_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '643', 'ROLE_MATERIALTYPE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '7', 'ROLE_SYS_DIC', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '7', 'ROLE_SYS_DIC', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '7', 'ROLE_SYS_DIC', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '7', 'ROLE_SYS_DIC', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '60', 'ROLE_SYS_DIC_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '60', 'ROLE_SYS_DIC_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '60', 'ROLE_SYS_DIC_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '60', 'ROLE_SYS_DIC_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '60', 'ROLE_SYS_DIC_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '61', 'ROLE_SYS_DIC_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '61', 'ROLE_SYS_DIC_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '61', 'ROLE_SYS_DIC_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '61', 'ROLE_SYS_DIC_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '61', 'ROLE_SYS_DIC_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '62', 'ROLE_SYS_DIC_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '62', 'ROLE_SYS_DIC_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
commit;
prompt 100 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '62', 'ROLE_SYS_DIC_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '62', 'ROLE_SYS_DIC_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '62', 'ROLE_SYS_DIC_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '76', 'ROLE_SYS_SENIOR_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '76', 'ROLE_SYS_SENIOR_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '76', 'ROLE_SYS_SENIOR_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '76', 'ROLE_SYS_SENIOR_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '76', 'ROLE_SYS_SENIOR_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '102', 'ROLE_SYS_AUTHORITY', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '8', 'ROLE_SYS_LOG', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '8', 'ROLE_SYS_LOG', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '3', 'ROLE_SYS_USER', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '558', 'ROLE_SYS_USER_INIT', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '79', 'ROLE_SYS_USER_DEL', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '80', 'ROLE_SYS_USER_DISABLE', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '81', 'ROLE_SYS_USER_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '82', 'ROLE_SYS_USER_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '78', 'ROLE_SYS_USER_MOD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '77', 'ROLE_SYS_USER_ADD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '6', 'ROLE_SYS_ROLE', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '65', 'ROLE_SYS_SYSDIC_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '8', 'ROLE_SYS_LOG', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '8', 'ROLE_SYS_LOG', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '8', 'ROLE_SYS_LOG', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '9', 'ROLE_SYS_SYSDIC', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '9', 'ROLE_SYS_SYSDIC', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '9', 'ROLE_SYS_SYSDIC', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '9', 'ROLE_SYS_SYSDIC', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '9', 'ROLE_SYS_SYSDIC', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '63', 'ROLE_SYS_SYSDIC_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '63', 'ROLE_SYS_SYSDIC_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '63', 'ROLE_SYS_SYSDIC_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '63', 'ROLE_SYS_SYSDIC_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '63', 'ROLE_SYS_SYSDIC_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '64', 'ROLE_SYS_SYSDIC_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '64', 'ROLE_SYS_SYSDIC_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '64', 'ROLE_SYS_SYSDIC_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '64', 'ROLE_SYS_SYSDIC_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '64', 'ROLE_SYS_SYSDIC_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '65', 'ROLE_SYS_SYSDIC_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '65', 'ROLE_SYS_SYSDIC_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '65', 'ROLE_SYS_SYSDIC_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '65', 'ROLE_SYS_SYSDIC_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '102', 'ROLE_SYS_AUTHORITY', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '102', 'ROLE_SYS_AUTHORITY', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '102', 'ROLE_SYS_AUTHORITY', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '102', 'ROLE_SYS_AUTHORITY', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '102', 'ROLE_SYS_AUTHORITY', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '3', 'ROLE_SYS_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '3', 'ROLE_SYS_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '3', 'ROLE_SYS_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '3', 'ROLE_SYS_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '3', 'ROLE_SYS_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '558', 'ROLE_SYS_USER_INIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '558', 'ROLE_SYS_USER_INIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '558', 'ROLE_SYS_USER_INIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '558', 'ROLE_SYS_USER_INIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '558', 'ROLE_SYS_USER_INIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '77', 'ROLE_SYS_USER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '77', 'ROLE_SYS_USER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '77', 'ROLE_SYS_USER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '77', 'ROLE_SYS_USER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '77', 'ROLE_SYS_USER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '78', 'ROLE_SYS_USER_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '78', 'ROLE_SYS_USER_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '78', 'ROLE_SYS_USER_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '78', 'ROLE_SYS_USER_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '78', 'ROLE_SYS_USER_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '79', 'ROLE_SYS_USER_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '79', 'ROLE_SYS_USER_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '79', 'ROLE_SYS_USER_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '79', 'ROLE_SYS_USER_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '643', 'ROLE_MATERIALTYPE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '643', 'ROLE_MATERIALTYPE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '643', 'ROLE_MATERIALTYPE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '644', 'ROLE_MATERIALTYPE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '644', 'ROLE_MATERIALTYPE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '644', 'ROLE_MATERIALTYPE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '644', 'ROLE_MATERIALTYPE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '644', 'ROLE_MATERIALTYPE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '592', 'ROLE_TENDER_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '593', 'ROLE_TENDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '594', 'ROLE_TENDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '595', 'ROLE_TENDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '596', 'ROLE_TENDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '613', 'ROLE_TENDER_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '2', 'ROLE_SYS_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '102', 'ROLE_SYS_AUTHORITY', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '3', 'ROLE_SYS_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '558', 'ROLE_SYS_USER_INIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '82', 'ROLE_SYS_USER_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '77', 'ROLE_SYS_USER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '592', 'ROLE_TENDER_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '593', 'ROLE_TENDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '594', 'ROLE_TENDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '665', 'ROLE_TENDER_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '666', 'ROLE_TENDER_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '595', 'ROLE_TENDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '596', 'ROLE_TENDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '660', 'ROLE_TENDER_RELEASE', null, null);
commit;
prompt 200 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '661', 'ROLE_TENDER_PRODUCTFRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '662', 'ROLE_TENDER_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '663', 'ROLE_TENDER_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '664', 'ROLE_TENDER_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '79', 'ROLE_SYS_USER_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '80', 'ROLE_SYS_USER_DISABLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '81', 'ROLE_SYS_USER_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '6', 'ROLE_SYS_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '56', 'ROLE_SYS_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '57', 'ROLE_SYS_ROLE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '58', 'ROLE_SYS_ROLE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '59', 'ROLE_SYS_ROLE_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '4', 'ROLE_SYS_DEP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '52', 'ROLE_SYS_DEP_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '53', 'ROLE_SYS_DEP_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '54', 'ROLE_SYS_DEP_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '7', 'ROLE_SYS_DIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '60', 'ROLE_SYS_DIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '61', 'ROLE_SYS_DIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '62', 'ROLE_SYS_DIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '9', 'ROLE_SYS_SYSDIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '63', 'ROLE_SYS_SYSDIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '64', 'ROLE_SYS_SYSDIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '65', 'ROLE_SYS_SYSDIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '8', 'ROLE_SYS_LOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '76', 'ROLE_SYS_SENIOR_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '59', 'ROLE_SYS_ROLE_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '58', 'ROLE_SYS_ROLE_DEL', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '57', 'ROLE_SYS_ROLE_MOD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '56', 'ROLE_SYS_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '4', 'ROLE_SYS_DEP', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '54', 'ROLE_SYS_DEP_DEL', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '52', 'ROLE_SYS_DEP_ADD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '53', 'ROLE_SYS_DEP_MOD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '7', 'ROLE_SYS_DIC', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '62', 'ROLE_SYS_DIC_DEL', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '61', 'ROLE_SYS_DIC_MOD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '60', 'ROLE_SYS_DIC_ADD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '9', 'ROLE_SYS_SYSDIC', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '65', 'ROLE_SYS_SYSDIC_DEL', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '64', 'ROLE_SYS_SYSDIC_MOD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '63', 'ROLE_SYS_SYSDIC_ADD', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '8', 'ROLE_SYS_LOG', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '76', 'ROLE_SYS_SENIOR_USER', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '548', 'ROLE_SYS_SYSLOG', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '547', 'ROLE_SYS_FLOWSET', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '645', 'ROLE_MATERIAL_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '645', 'ROLE_MATERIAL_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '645', 'ROLE_MATERIAL_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '645', 'ROLE_MATERIAL_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '645', 'ROLE_MATERIAL_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '646', 'ROLE_MATERIAL_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '646', 'ROLE_MATERIAL_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '646', 'ROLE_MATERIAL_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '646', 'ROLE_MATERIAL_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '646', 'ROLE_MATERIAL_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '647', 'ROLE_MATERIAL_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '647', 'ROLE_MATERIAL_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '647', 'ROLE_MATERIAL_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '647', 'ROLE_MATERIAL_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '647', 'ROLE_MATERIAL_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '648', 'ROLE_MATERIAL_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '648', 'ROLE_MATERIAL_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '648', 'ROLE_MATERIAL_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '648', 'ROLE_MATERIAL_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '648', 'ROLE_MATERIAL_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '649', 'ROLE_MATERIAL_DOW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '649', 'ROLE_MATERIAL_DOW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '649', 'ROLE_MATERIAL_DOW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '649', 'ROLE_MATERIAL_DOW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '649', 'ROLE_MATERIAL_DOW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '650', 'ROLE_MATERIALTYPE_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '650', 'ROLE_MATERIALTYPE_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '650', 'ROLE_MATERIALTYPE_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '650', 'ROLE_MATERIALTYPE_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '650', 'ROLE_MATERIALTYPE_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '651', 'ROLE_MATERIALTYPE_DOW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '651', 'ROLE_MATERIALTYPE_DOW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '651', 'ROLE_MATERIALTYPE_DOW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '651', 'ROLE_MATERIALTYPE_DOW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '651', 'ROLE_MATERIALTYPE_DOW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '624', 'ROLE_PAY_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '625', 'ROLE_PAYMENT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '626', 'ROLE_PAYMENT_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '627', 'ROLE_PAYMENT_DELETE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '628', 'ROLE_PAYMENT_STATE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '629', 'ROLE_PAYMENT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '686', 'ROLE_SUPPLIER_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '686', 'ROLE_SUPPLIER_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '686', 'ROLE_SUPPLIER_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '686', 'ROLE_SUPPLIER_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '686', 'ROLE_SUPPLIER_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '687', 'ROLE_BUDGETACCOUNT_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '687', 'ROLE_BUDGETACCOUNT_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '687', 'ROLE_BUDGETACCOUNT_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '687', 'ROLE_BUDGETACCOUNT_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '687', 'ROLE_BUDGETACCOUNT_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '689', 'ROLE_BUDGETACCOUNT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '689', 'ROLE_BUDGETACCOUNT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '689', 'ROLE_BUDGETACCOUNT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
commit;
prompt 300 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '689', 'ROLE_BUDGETACCOUNT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '689', 'ROLE_BUDGETACCOUNT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '690', 'ROLE_BUDGETACCOUNT_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '690', 'ROLE_BUDGETACCOUNT_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '613', 'ROLE_TENDER_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '631', 'ROLE_TENDERCONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '632', 'ROLE_TENDERCONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '633', 'ROLE_TENDERCONTRACT_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '634', 'ROLE_TENDERCONTRACT_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '636', 'ROLE_TENDERCONTRACT_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '637', 'ROLE_TENDERCONTRACT_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '690', 'ROLE_BUDGETACCOUNT_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '690', 'ROLE_BUDGETACCOUNT_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '690', 'ROLE_BUDGETACCOUNT_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '691', 'ROLE_BUDGETACCOUNT_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '691', 'ROLE_BUDGETACCOUNT_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '691', 'ROLE_BUDGETACCOUNT_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '691', 'ROLE_BUDGETACCOUNT_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '691', 'ROLE_BUDGETACCOUNT_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '692', 'ROLE_BUDGETACCOUNT_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '692', 'ROLE_BUDGETACCOUNT_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '692', 'ROLE_BUDGETACCOUNT_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '692', 'ROLE_BUDGETACCOUNT_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '692', 'ROLE_BUDGETACCOUNT_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '2', 'ROLE_SYS_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '2', 'ROLE_SYS_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '2', 'ROLE_SYS_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '2', 'ROLE_SYS_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '2', 'ROLE_SYS_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '547', 'ROLE_SYS_FLOWSET', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '611', 'ROLE_CONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '612', 'ROLE_CONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '604', 'ROLE_STOCK_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '605', 'ROLE_STORAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '652', 'ROLE_STORAGE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '653', 'ROLE_STORAGE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '654', 'ROLE_STORAGE_EXP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '659', 'ROLE_STORAGE_SUB', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '2', 'ROLE_SYS_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '102', 'ROLE_SYS_AUTHORITY', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '3', 'ROLE_SYS_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '558', 'ROLE_SYS_USER_INIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '82', 'ROLE_SYS_USER_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '77', 'ROLE_SYS_USER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '78', 'ROLE_SYS_USER_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '79', 'ROLE_SYS_USER_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '80', 'ROLE_SYS_USER_DISABLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '81', 'ROLE_SYS_USER_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '6', 'ROLE_SYS_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '56', 'ROLE_SYS_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '57', 'ROLE_SYS_ROLE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '58', 'ROLE_SYS_ROLE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '59', 'ROLE_SYS_ROLE_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '4', 'ROLE_SYS_DEP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '52', 'ROLE_SYS_DEP_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '53', 'ROLE_SYS_DEP_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '54', 'ROLE_SYS_DEP_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '7', 'ROLE_SYS_DIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '60', 'ROLE_SYS_DIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '61', 'ROLE_SYS_DIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '62', 'ROLE_SYS_DIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '9', 'ROLE_SYS_SYSDIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '63', 'ROLE_SYS_SYSDIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '64', 'ROLE_SYS_SYSDIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '65', 'ROLE_SYS_SYSDIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '8', 'ROLE_SYS_LOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '76', 'ROLE_SYS_SENIOR_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '548', 'ROLE_SYS_SYSLOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '547', 'ROLE_SYS_FLOWSET', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '17', 'ROLE_BASEINFO_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '559', 'ROLE_WAREHOUSE_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '561', 'ROLE_WAREHOUSE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '562', 'ROLE_WAREHOUSE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '563', 'ROLE_WAREHOUSE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '564', 'ROLE_REGION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '565', 'ROLE_REGION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '566', 'ROLE_REGION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '560', 'ROLE_COMMODITY_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '642', 'ROLE_MATERIALTYPE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '649', 'ROLE_MATERIAL_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '643', 'ROLE_MATERIALTYPE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '644', 'ROLE_MATERIALTYPE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '650', 'ROLE_MATERIALTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '651', 'ROLE_MATERIALTYPE_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '645', 'ROLE_MATERIAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '646', 'ROLE_MATERIAL_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '647', 'ROLE_MATERIAL_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '648', 'ROLE_MATERIAL_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '1', 'ROLE_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '547', 'ROLE_SYS_FLOWSET', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '547', 'ROLE_SYS_FLOWSET', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '547', 'ROLE_SYS_FLOWSET', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '547', 'ROLE_SYS_FLOWSET', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '548', 'ROLE_SYS_SYSLOG', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '548', 'ROLE_SYS_SYSLOG', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '548', 'ROLE_SYS_SYSLOG', 'role', '022104e6db8b42f5bddbdb005512089');
commit;
prompt 400 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '2', 'ROLE_SYS_MENU', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '548', 'ROLE_SYS_SYSLOG', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '548', 'ROLE_SYS_SYSLOG', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '547', 'ROLE_SYS_FLOWSET', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '6', 'ROLE_SYS_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '6', 'ROLE_SYS_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '548', 'ROLE_SYS_SYSLOG', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '6', 'ROLE_SYS_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '6', 'ROLE_SYS_ROLE', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '6', 'ROLE_SYS_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '6', 'ROLE_SYS_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '56', 'ROLE_SYS_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '56', 'ROLE_SYS_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '56', 'ROLE_SYS_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '57', 'ROLE_SYS_ROLE_MOD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '56', 'ROLE_SYS_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '58', 'ROLE_SYS_ROLE_DEL', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '56', 'ROLE_SYS_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '59', 'ROLE_SYS_ROLE_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '59', 'ROLE_SYS_ROLE_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '59', 'ROLE_SYS_ROLE_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '59', 'ROLE_SYS_ROLE_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '7', 'ROLE_SYS_DIC', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '56', 'ROLE_SYS_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '57', 'ROLE_SYS_ROLE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '57', 'ROLE_SYS_ROLE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '57', 'ROLE_SYS_ROLE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '57', 'ROLE_SYS_ROLE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '57', 'ROLE_SYS_ROLE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '58', 'ROLE_SYS_ROLE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '58', 'ROLE_SYS_ROLE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '58', 'ROLE_SYS_ROLE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '58', 'ROLE_SYS_ROLE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '58', 'ROLE_SYS_ROLE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '59', 'ROLE_SYS_ROLE_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '59', 'ROLE_SYS_ROLE_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '7', 'ROLE_SYS_DIC', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '60', 'ROLE_SYS_DIC_ADD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '61', 'ROLE_SYS_DIC_MOD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '2', 'ROLE_SYS_MENU', 'role', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512104');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512107');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512106');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512082');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512113');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '3', 'ROLE_SYS_USER', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512083');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512092');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512125');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512085');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512122');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512085');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512112');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512123');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512132');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '2', 'ROLE_SYS_MENU', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '77', 'ROLE_SYS_USER_ADD', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', 'db0dd569b9a4454e85f969322ddc21f6');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '78', 'ROLE_SYS_USER_MOD', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '79', 'ROLE_SYS_USER_DEL', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '80', 'ROLE_SYS_USER_DISABLE', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '81', 'ROLE_SYS_USER_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '82', 'ROLE_SYS_USER_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '558', 'ROLE_SYS_USER_INIT', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '6', 'ROLE_SYS_ROLE', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '56', 'ROLE_SYS_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '595', 'ROLE_TENDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '596', 'ROLE_TENDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '600', 'ROLE_FRAME_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '660', 'ROLE_TENDER_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '661', 'ROLE_TENDER_PRODUCTFRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '662', 'ROLE_TENDER_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '701', 'ROLE_BUDGETPLAN_VIEW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '663', 'ROLE_TENDER_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '664', 'ROLE_TENDER_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '613', 'ROLE_TENDER_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '2', 'ROLE_SYS_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '631', 'ROLE_TENDERCONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '9', 'ROLE_SYS_SYSDIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '62', 'ROLE_SYS_DIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '63', 'ROLE_SYS_SYSDIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '64', 'ROLE_SYS_SYSDIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '603', 'ROLE_FRAME_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '65', 'ROLE_SYS_SYSDIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '8', 'ROLE_SYS_LOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '76', 'ROLE_SYS_SENIOR_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '702', 'ROLE_BUDGETPLAN_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '548', 'ROLE_SYS_SYSLOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '547', 'ROLE_SYS_FLOWSET', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '17', 'ROLE_BASEINFO_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '559', 'ROLE_WAREHOUSE_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '561', 'ROLE_WAREHOUSE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '722', 'ROLE_LOCATION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '723', 'ROLE_LOCATION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '562', 'ROLE_WAREHOUSE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '563', 'ROLE_WAREHOUSE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '703', 'ROLE_BUDGETPLAN_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', null, null);
commit;
prompt 500 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '688', 'ROLE_MATERIAL_PURCHASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '704', 'ROLE_MATERIALPURCHASE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '705', 'ROLE_MATERIALPURCHASE_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '706', 'ROLE_MATERIALPURCHASE_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '707', 'ROLE_MATERIALPURCHASE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '708', 'ROLE_MATERIALPURCHASE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '592', 'ROLE_TENDER_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '593', 'ROLE_TENDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '594', 'ROLE_TENDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '564', 'ROLE_REGION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '565', 'ROLE_REGION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '81', 'ROLE_SYS_USER_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '665', 'ROLE_TENDER_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '82', 'ROLE_SYS_USER_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '724', 'ROLE_MATERIALSTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '4', 'ROLE_SYS_DEP', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '666', 'ROLE_TENDER_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '52', 'ROLE_SYS_DEP_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '53', 'ROLE_SYS_DEP_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '54', 'ROLE_SYS_DEP_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '598', 'ROLE_CONTRACT_MEAN', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '599', 'ROLE_FRAME', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '601', 'ROLE_FRAME_SAVE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '610', 'ROLE_CONTRACT_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '611', 'ROLE_CONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '612', 'ROLE_CONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '676', 'ROLE_ORDER_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '678', 'ROLE_MATERIAL_PURCHASE_ORDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '709', 'ROLE_ORDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '673', 'ROLE_DIRECT_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '710', 'ROLE_ORDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '711', 'ROLE_ORDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '712', 'ROLE_ORDER_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '632', 'ROLE_TENDERCONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '713', 'ROLE_ORDER_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '714', 'ROLE_ORDER_PURCHASE_END', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '604', 'ROLE_STOCK_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '605', 'ROLE_STORAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '674', 'ROLE_DIRECT_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '633', 'ROLE_TENDERCONTRACT_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '634', 'ROLE_TENDERCONTRACT_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '636', 'ROLE_TENDERCONTRACT_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '637', 'ROLE_TENDERCONTRACT_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '598', 'ROLE_CONTRACT_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '599', 'ROLE_FRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '600', 'ROLE_FRAME_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '601', 'ROLE_FRAME_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '602', 'ROLE_FRAME_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '566', 'ROLE_REGION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '602', 'ROLE_FRAME_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '603', 'ROLE_FRAME_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '608', 'ROLE_PURCHASE_CONTRACT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '608', 'ROLE_PURCHASE_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '609', 'ROLE_CONTRACT_SAVE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '609', 'ROLE_CONTRACT_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '610', 'ROLE_CONTRACT_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '611', 'ROLE_CONTRACT_EDIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '612', 'ROLE_CONTRACT_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '604', 'ROLE_STOCK_MEAN', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '672', 'ROLE_DIRECT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '716', 'ROLE_INVOICE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '717', 'ROLE_INVOICE_DELETE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '652', 'ROLE_STORAGE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '718', 'ROLE_INVOICE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '102', 'ROLE_SYS_AUTHORITY', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '628', 'ROLE_PAYMENT_STATE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '629', 'ROLE_PAYMENT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '685', 'ROLE_INVOICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '715', 'ROLE_INVOICE_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '716', 'ROLE_INVOICE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '717', 'ROLE_INVOICE_DELETE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '678', 'ROLE_MATERIAL_PURCHASE_ORDER', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '718', 'ROLE_INVOICE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '1', 'ROLE_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '653', 'ROLE_STORAGE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '654', 'ROLE_STORAGE_EXP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '659', 'ROLE_STORAGE_SUB', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '672', 'ROLE_DIRECT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '673', 'ROLE_DIRECT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '674', 'ROLE_DIRECT_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '675', 'ROLE_DIRECT_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '683', 'ROLE_STOCK', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '675', 'ROLE_DIRECT_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '684', 'ROLE_OUTSTOCK', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '720', 'ROLE_LOCATION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '721', 'ROLE_LOCATION_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '605', 'ROLE_STORAGE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '624', 'ROLE_PAY_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '560', 'ROLE_COMMODITY_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '642', 'ROLE_MATERIALTYPE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '652', 'ROLE_STORAGE_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '625', 'ROLE_PAYMENT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '649', 'ROLE_MATERIAL_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '643', 'ROLE_MATERIALTYPE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '653', 'ROLE_STORAGE_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '626', 'ROLE_PAYMENT_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '644', 'ROLE_MATERIALTYPE_DEL', null, null);
commit;
prompt 600 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '650', 'ROLE_MATERIALTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '654', 'ROLE_STORAGE_EXP', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '627', 'ROLE_PAYMENT_DELETE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '651', 'ROLE_MATERIALTYPE_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '645', 'ROLE_MATERIAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '659', 'ROLE_STORAGE_SUB', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '628', 'ROLE_PAYMENT_STATE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '646', 'ROLE_MATERIAL_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '647', 'ROLE_MATERIAL_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '684', 'ROLE_OUTSTOCK', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '629', 'ROLE_PAYMENT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '648', 'ROLE_MATERIAL_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '686', 'ROLE_SUPPLIER_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '683', 'ROLE_STOCK', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '685', 'ROLE_INVOICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '687', 'ROLE_BUDGETACCOUNT_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '689', 'ROLE_BUDGETACCOUNT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '676', 'ROLE_ORDER_MENU', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '715', 'ROLE_INVOICE_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '1', 'ROLE_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '3', 'ROLE_SYS_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '558', 'ROLE_SYS_USER_INIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '82', 'ROLE_SYS_USER_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '77', 'ROLE_SYS_USER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '78', 'ROLE_SYS_USER_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '79', 'ROLE_SYS_USER_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '80', 'ROLE_SYS_USER_DISABLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '694', 'ROLE_PURCHASE_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '81', 'ROLE_SYS_USER_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '6', 'ROLE_SYS_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '56', 'ROLE_SYS_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '102', 'ROLE_SYS_AUTHORITY', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '57', 'ROLE_SYS_ROLE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '58', 'ROLE_SYS_ROLE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '59', 'ROLE_SYS_ROLE_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '4', 'ROLE_SYS_DEP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '52', 'ROLE_SYS_DEP_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '54', 'ROLE_SYS_DEP_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '53', 'ROLE_SYS_DEP_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '7', 'ROLE_SYS_DIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '60', 'ROLE_SYS_DIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '61', 'ROLE_SYS_DIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '62', 'ROLE_SYS_DIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '9', 'ROLE_SYS_SYSDIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '695', 'ROLE_PURCHASE_INSERT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '63', 'ROLE_SYS_SYSDIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '64', 'ROLE_SYS_SYSDIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '65', 'ROLE_SYS_SYSDIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '8', 'ROLE_SYS_LOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '76', 'ROLE_SYS_SENIOR_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '548', 'ROLE_SYS_SYSLOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '547', 'ROLE_SYS_FLOWSET', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '709', 'ROLE_ORDER_INSERT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '710', 'ROLE_ORDER_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '711', 'ROLE_ORDER_EDIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '690', 'ROLE_BUDGETACCOUNT_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '691', 'ROLE_BUDGETACCOUNT_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '692', 'ROLE_BUDGETACCOUNT_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '712', 'ROLE_ORDER_SUBMIT ', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '677', 'ROLE_MATERIAL_PLAN_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '679', 'ROLE_PURCHASE_PLAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '693', 'ROLE_PURCHASE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '713', 'ROLE_ORDER_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '694', 'ROLE_PURCHASE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '695', 'ROLE_PURCHASE_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '696', 'ROLE_PURCHASE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '714', 'ROLE_ORDER_PURCHASE_END', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '682', 'ROLE_BUDGETPLAN_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '697', 'ROLE_BUDGETPLAN_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '698', 'ROLE_BUDGETPLAN_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '677', 'ROLE_MATERIAL_PLAN_MEAN', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '699', 'ROLE_BUDGETPLAN_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '700', 'ROLE_BUDGETPLAN_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '701', 'ROLE_BUDGETPLAN_VIEW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '679', 'ROLE_PURCHASE_PLAN', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '693', 'ROLE_PURCHASE_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '3', 'ROLE_SYS_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '558', 'ROLE_SYS_USER_INIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '82', 'ROLE_SYS_USER_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '77', 'ROLE_SYS_USER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '78', 'ROLE_SYS_USER_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '79', 'ROLE_SYS_USER_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '80', 'ROLE_SYS_USER_DISABLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '81', 'ROLE_SYS_USER_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '6', 'ROLE_SYS_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '562', 'ROLE_WAREHOUSE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '598', 'ROLE_CONTRACT_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '599', 'ROLE_FRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '600', 'ROLE_FRAME_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '601', 'ROLE_FRAME_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '602', 'ROLE_FRAME_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '603', 'ROLE_FRAME_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '608', 'ROLE_PURCHASE_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '609', 'ROLE_CONTRACT_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '610', 'ROLE_CONTRACT_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '562', 'ROLE_WAREHOUSE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '562', 'ROLE_WAREHOUSE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '563', 'ROLE_WAREHOUSE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '563', 'ROLE_WAREHOUSE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
commit;
prompt 700 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '563', 'ROLE_WAREHOUSE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '563', 'ROLE_WAREHOUSE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '563', 'ROLE_WAREHOUSE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '721', 'ROLE_LOCATION_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '56', 'ROLE_SYS_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '57', 'ROLE_SYS_ROLE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '58', 'ROLE_SYS_ROLE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '59', 'ROLE_SYS_ROLE_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '4', 'ROLE_SYS_DEP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '52', 'ROLE_SYS_DEP_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '54', 'ROLE_SYS_DEP_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '53', 'ROLE_SYS_DEP_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '7', 'ROLE_SYS_DIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '60', 'ROLE_SYS_DIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '61', 'ROLE_SYS_DIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '62', 'ROLE_SYS_DIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '9', 'ROLE_SYS_SYSDIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '63', 'ROLE_SYS_SYSDIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '64', 'ROLE_SYS_SYSDIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '65', 'ROLE_SYS_SYSDIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '8', 'ROLE_SYS_LOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '76', 'ROLE_SYS_SENIOR_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '559', 'ROLE_WAREHOUSE_ROLE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '548', 'ROLE_SYS_SYSLOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '547', 'ROLE_SYS_FLOWSET', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '17', 'ROLE_BASEINFO_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '561', 'ROLE_WAREHOUSE_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '559', 'ROLE_WAREHOUSE_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '562', 'ROLE_WAREHOUSE_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '561', 'ROLE_WAREHOUSE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '722', 'ROLE_LOCATION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '723', 'ROLE_LOCATION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '562', 'ROLE_WAREHOUSE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '563', 'ROLE_WAREHOUSE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '564', 'ROLE_REGION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '565', 'ROLE_REGION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '566', 'ROLE_REGION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '720', 'ROLE_LOCATION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '721', 'ROLE_LOCATION_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '560', 'ROLE_COMMODITY_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '642', 'ROLE_MATERIALTYPE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '649', 'ROLE_MATERIAL_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '643', 'ROLE_MATERIALTYPE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '644', 'ROLE_MATERIALTYPE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '650', 'ROLE_MATERIALTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '651', 'ROLE_MATERIALTYPE_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '645', 'ROLE_MATERIAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '646', 'ROLE_MATERIAL_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '647', 'ROLE_MATERIAL_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '648', 'ROLE_MATERIAL_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '686', 'ROLE_SUPPLIER_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '687', 'ROLE_BUDGETACCOUNT_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '689', 'ROLE_BUDGETACCOUNT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '690', 'ROLE_BUDGETACCOUNT_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '691', 'ROLE_BUDGETACCOUNT_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '692', 'ROLE_BUDGETACCOUNT_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '677', 'ROLE_MATERIAL_PLAN_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '679', 'ROLE_PURCHASE_PLAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '2', 'ROLE_SYS_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '702', 'ROLE_BUDGETPLAN_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '703', 'ROLE_BUDGETPLAN_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '688', 'ROLE_MATERIAL_PURCHASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '704', 'ROLE_MATERIALPURCHASE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '705', 'ROLE_MATERIALPURCHASE_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '706', 'ROLE_MATERIALPURCHASE_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '707', 'ROLE_MATERIALPURCHASE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '708', 'ROLE_MATERIALPURCHASE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '592', 'ROLE_TENDER_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '593', 'ROLE_TENDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '594', 'ROLE_TENDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '665', 'ROLE_TENDER_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '64', 'ROLE_SYS_SYSDIC_MOD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '65', 'ROLE_SYS_SYSDIC_DEL', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '102', 'ROLE_SYS_AUTHORITY', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '3', 'ROLE_SYS_USER', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '558', 'ROLE_SYS_USER_INIT', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '77', 'ROLE_SYS_USER_ADD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '693', 'ROLE_PURCHASE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '694', 'ROLE_PURCHASE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '563', 'ROLE_WAREHOUSE_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '695', 'ROLE_PURCHASE_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '696', 'ROLE_PURCHASE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '721', 'ROLE_LOCATION_IMP', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '682', 'ROLE_BUDGETPLAN_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '697', 'ROLE_BUDGETPLAN_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '698', 'ROLE_BUDGETPLAN_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '699', 'ROLE_BUDGETPLAN_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '700', 'ROLE_BUDGETPLAN_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '78', 'ROLE_SYS_USER_MOD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '701', 'ROLE_BUDGETPLAN_VIEW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '702', 'ROLE_BUDGETPLAN_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '703', 'ROLE_BUDGETPLAN_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '688', 'ROLE_MATERIAL_PURCHASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '704', 'ROLE_MATERIALPURCHASE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '705', 'ROLE_MATERIALPURCHASE_SUBMIT', null, null);
commit;
prompt 800 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '706', 'ROLE_MATERIALPURCHASE_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '707', 'ROLE_MATERIALPURCHASE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '708', 'ROLE_MATERIALPURCHASE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '592', 'ROLE_TENDER_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '593', 'ROLE_TENDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '594', 'ROLE_TENDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '665', 'ROLE_TENDER_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '724', 'ROLE_MATERIALSTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '666', 'ROLE_TENDER_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '595', 'ROLE_TENDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '596', 'ROLE_TENDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '660', 'ROLE_TENDER_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '661', 'ROLE_TENDER_PRODUCTFRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '662', 'ROLE_TENDER_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '79', 'ROLE_SYS_USER_DEL', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '724', 'ROLE_MATERIALSTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '666', 'ROLE_TENDER_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '663', 'ROLE_TENDER_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '595', 'ROLE_TENDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '664', 'ROLE_TENDER_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '80', 'ROLE_SYS_USER_DISABLE', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '613', 'ROLE_TENDER_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '631', 'ROLE_TENDERCONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '632', 'ROLE_TENDERCONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '596', 'ROLE_TENDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '660', 'ROLE_TENDER_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '661', 'ROLE_TENDER_PRODUCTFRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '662', 'ROLE_TENDER_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '663', 'ROLE_TENDER_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '664', 'ROLE_TENDER_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '613', 'ROLE_TENDER_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '631', 'ROLE_TENDERCONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '81', 'ROLE_SYS_USER_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '634', 'ROLE_TENDERCONTRACT_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '633', 'ROLE_TENDERCONTRACT_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '636', 'ROLE_TENDERCONTRACT_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '637', 'ROLE_TENDERCONTRACT_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '598', 'ROLE_CONTRACT_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '599', 'ROLE_FRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '600', 'ROLE_FRAME_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '601', 'ROLE_FRAME_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '602', 'ROLE_FRAME_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '603', 'ROLE_FRAME_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '608', 'ROLE_PURCHASE_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '82', 'ROLE_SYS_USER_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '633', 'ROLE_TENDERCONTRACT_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '609', 'ROLE_CONTRACT_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '4', 'ROLE_SYS_DEP', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '610', 'ROLE_CONTRACT_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '611', 'ROLE_CONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '612', 'ROLE_CONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '676', 'ROLE_ORDER_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '678', 'ROLE_MATERIAL_PURCHASE_ORDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '709', 'ROLE_ORDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '710', 'ROLE_ORDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '711', 'ROLE_ORDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '712', 'ROLE_ORDER_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '713', 'ROLE_ORDER_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '714', 'ROLE_ORDER_PURCHASE_END', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '604', 'ROLE_STOCK_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '605', 'ROLE_STORAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '652', 'ROLE_STORAGE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '632', 'ROLE_TENDERCONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '634', 'ROLE_TENDERCONTRACT_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '52', 'ROLE_SYS_DEP_ADD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '636', 'ROLE_TENDERCONTRACT_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '637', 'ROLE_TENDERCONTRACT_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '53', 'ROLE_SYS_DEP_MOD', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '548', 'ROLE_SYS_SYSLOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '547', 'ROLE_SYS_FLOWSET', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '17', 'ROLE_BASEINFO_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '559', 'ROLE_WAREHOUSE_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '78', 'ROLE_SYS_USER_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '561', 'ROLE_WAREHOUSE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '562', 'ROLE_WAREHOUSE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '563', 'ROLE_WAREHOUSE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '564', 'ROLE_REGION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '565', 'ROLE_REGION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '566', 'ROLE_REGION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '560', 'ROLE_COMMODITY_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('7eda88df56a94c74a2bb3c55e27c2b76', '1', 'ROLE_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '654', 'ROLE_STORAGE_EXP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '565', 'ROLE_REGION_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '722', 'ROLE_LOCATION_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '659', 'ROLE_STORAGE_SUB', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '723', 'ROLE_LOCATION_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '672', 'ROLE_DIRECT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '673', 'ROLE_DIRECT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '720', 'ROLE_LOCATION_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '674', 'ROLE_DIRECT_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '675', 'ROLE_DIRECT_APPROVAL', null, null);
commit;
prompt 900 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '54', 'ROLE_SYS_DEP_DEL', 'role', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '683', 'ROLE_STOCK', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '653', 'ROLE_STORAGE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '684', 'ROLE_OUTSTOCK', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '624', 'ROLE_PAY_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '625', 'ROLE_PAYMENT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '626', 'ROLE_PAYMENT_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('78fd7059d978496d9beac6f7a210ca18', '627', 'ROLE_PAYMENT_DELETE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '564', 'ROLE_REGION_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512129');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '82', 'ROLE_SYS_USER_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '78', 'ROLE_SYS_USER_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '77', 'ROLE_SYS_USER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '6', 'ROLE_SYS_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '59', 'ROLE_SYS_ROLE_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '58', 'ROLE_SYS_ROLE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '57', 'ROLE_SYS_ROLE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '56', 'ROLE_SYS_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '4', 'ROLE_SYS_DEP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '54', 'ROLE_SYS_DEP_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '53', 'ROLE_SYS_DEP_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '52', 'ROLE_SYS_DEP_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '7', 'ROLE_SYS_DIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '62', 'ROLE_SYS_DIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '61', 'ROLE_SYS_DIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '60', 'ROLE_SYS_DIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '9', 'ROLE_SYS_SYSDIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '65', 'ROLE_SYS_SYSDIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '64', 'ROLE_SYS_SYSDIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', 'c40c8f3062b647a984ebe469db490587');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512088');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512117');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512080');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512086');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', 'e1fd8df114864ff68fe97a6e6fae499f');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512083');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512096');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512108');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512127');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512126');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512110');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512105');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512133');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', 'de1a1433a68a498ea41d810e51926236');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512088');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512082');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512103');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512093');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512130');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512131');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512101');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512102');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512119');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512115');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512116');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512100');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512118');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512097');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512124');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '566', 'ROLE_REGION_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '560', 'ROLE_COMMODITY_ROLE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512099');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512091');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512133');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512120');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512121');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512081');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '2', 'ROLE_SYS_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '102', 'ROLE_SYS_AUTHORITY', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '3', 'ROLE_SYS_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '558', 'ROLE_SYS_USER_INIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '79', 'ROLE_SYS_USER_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '80', 'ROLE_SYS_USER_DISABLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '81', 'ROLE_SYS_USER_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '63', 'ROLE_SYS_SYSDIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '8', 'ROLE_SYS_LOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '76', 'ROLE_SYS_SENIOR_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '548', 'ROLE_SYS_SYSLOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1806bf7da6dc47e29331c888c8f0a5b3', '547', 'ROLE_SYS_FLOWSET', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '102', 'ROLE_SYS_AUTHORITY', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '3', 'ROLE_SYS_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '558', 'ROLE_SYS_USER_INIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '79', 'ROLE_SYS_USER_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '80', 'ROLE_SYS_USER_DISABLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '81', 'ROLE_SYS_USER_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '82', 'ROLE_SYS_USER_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '78', 'ROLE_SYS_USER_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '77', 'ROLE_SYS_USER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '6', 'ROLE_SYS_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '59', 'ROLE_SYS_ROLE_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '58', 'ROLE_SYS_ROLE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '57', 'ROLE_SYS_ROLE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '56', 'ROLE_SYS_ROLE_ADD', null, null);
commit;
prompt 1000 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '4', 'ROLE_SYS_DEP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '54', 'ROLE_SYS_DEP_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '52', 'ROLE_SYS_DEP_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '53', 'ROLE_SYS_DEP_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '7', 'ROLE_SYS_DIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '62', 'ROLE_SYS_DIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '61', 'ROLE_SYS_DIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '60', 'ROLE_SYS_DIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '9', 'ROLE_SYS_SYSDIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '65', 'ROLE_SYS_SYSDIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '64', 'ROLE_SYS_SYSDIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '63', 'ROLE_SYS_SYSDIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '8', 'ROLE_SYS_LOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '76', 'ROLE_SYS_SENIOR_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '548', 'ROLE_SYS_SYSLOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '547', 'ROLE_SYS_FLOWSET', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('2d3cb029968f43c383ccae0787c31cb0', '2', 'ROLE_SYS_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512079');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512092');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512111');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512098');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512109');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512134');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512087');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512084');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '1', 'ROLE_USER', 'role', '022104e6db8b42f5bddbdb005512084');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '649', 'ROLE_MATERIAL_DOW', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '559', 'ROLE_WAREHOUSE_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '642', 'ROLE_MATERIALTYPE_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '559', 'ROLE_WAREHOUSE_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '559', 'ROLE_WAREHOUSE_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '559', 'ROLE_WAREHOUSE_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '559', 'ROLE_WAREHOUSE_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '561', 'ROLE_WAREHOUSE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '643', 'ROLE_MATERIALTYPE_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '650', 'ROLE_MATERIALTYPE_IMP', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '2', 'ROLE_SYS_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '102', 'ROLE_SYS_AUTHORITY', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '3', 'ROLE_SYS_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '558', 'ROLE_SYS_USER_INIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '82', 'ROLE_SYS_USER_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '77', 'ROLE_SYS_USER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '78', 'ROLE_SYS_USER_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '79', 'ROLE_SYS_USER_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '80', 'ROLE_SYS_USER_DISABLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '81', 'ROLE_SYS_USER_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '6', 'ROLE_SYS_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '17', 'ROLE_BASEINFO_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '644', 'ROLE_MATERIALTYPE_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '56', 'ROLE_SYS_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '645', 'ROLE_MATERIAL_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '57', 'ROLE_SYS_ROLE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '646', 'ROLE_MATERIAL_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '647', 'ROLE_MATERIAL_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '648', 'ROLE_MATERIAL_IMP', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '547', 'ROLE_SYS_FLOWSET', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '548', 'ROLE_SYS_SYSLOG', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '58', 'ROLE_SYS_ROLE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '59', 'ROLE_SYS_ROLE_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '4', 'ROLE_SYS_DEP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '52', 'ROLE_SYS_DEP_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '54', 'ROLE_SYS_DEP_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '53', 'ROLE_SYS_DEP_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '7', 'ROLE_SYS_DIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '60', 'ROLE_SYS_DIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '61', 'ROLE_SYS_DIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '62', 'ROLE_SYS_DIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '9', 'ROLE_SYS_SYSDIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '63', 'ROLE_SYS_SYSDIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '64', 'ROLE_SYS_SYSDIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '65', 'ROLE_SYS_SYSDIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '8', 'ROLE_SYS_LOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '76', 'ROLE_SYS_SENIOR_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '651', 'ROLE_MATERIALTYPE_DOW', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '686', 'ROLE_SUPPLIER_ROLE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '548', 'ROLE_SYS_SYSLOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '687', 'ROLE_BUDGETACCOUNT_ROLE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '547', 'ROLE_SYS_FLOWSET', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '689', 'ROLE_BUDGETACCOUNT_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '17', 'ROLE_BASEINFO_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '690', 'ROLE_BUDGETACCOUNT_IMP', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '691', 'ROLE_BUDGETACCOUNT_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '692', 'ROLE_BUDGETACCOUNT_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '2', 'ROLE_SYS_MENU', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '644', 'ROLE_MATERIALTYPE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '561', 'ROLE_WAREHOUSE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '561', 'ROLE_WAREHOUSE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '76', 'ROLE_SYS_SENIOR_USER', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '561', 'ROLE_WAREHOUSE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '561', 'ROLE_WAREHOUSE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '562', 'ROLE_WAREHOUSE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '562', 'ROLE_WAREHOUSE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '8', 'ROLE_SYS_LOG', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '6', 'ROLE_SYS_ROLE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '56', 'ROLE_SYS_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '57', 'ROLE_SYS_ROLE_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '58', 'ROLE_SYS_ROLE_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
commit;
prompt 1100 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '59', 'ROLE_SYS_ROLE_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '7', 'ROLE_SYS_DIC', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '60', 'ROLE_SYS_DIC_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '61', 'ROLE_SYS_DIC_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '62', 'ROLE_SYS_DIC_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '559', 'ROLE_WAREHOUSE_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '561', 'ROLE_WAREHOUSE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '722', 'ROLE_LOCATION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '723', 'ROLE_LOCATION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '562', 'ROLE_WAREHOUSE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '563', 'ROLE_WAREHOUSE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '564', 'ROLE_REGION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '565', 'ROLE_REGION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '566', 'ROLE_REGION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '720', 'ROLE_LOCATION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '721', 'ROLE_LOCATION_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '560', 'ROLE_COMMODITY_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '642', 'ROLE_MATERIALTYPE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '649', 'ROLE_MATERIAL_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '643', 'ROLE_MATERIALTYPE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '694', 'ROLE_PURCHASE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '102', 'ROLE_SYS_AUTHORITY', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '695', 'ROLE_PURCHASE_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '696', 'ROLE_PURCHASE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '682', 'ROLE_BUDGETPLAN_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '2', 'ROLE_SYS_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '697', 'ROLE_BUDGETPLAN_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '698', 'ROLE_BUDGETPLAN_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '699', 'ROLE_BUDGETPLAN_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '3', 'ROLE_SYS_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '700', 'ROLE_BUDGETPLAN_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '1', 'ROLE_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '558', 'ROLE_SYS_USER_INIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '79', 'ROLE_SYS_USER_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '82', 'ROLE_SYS_USER_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '77', 'ROLE_SYS_USER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '78', 'ROLE_SYS_USER_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '79', 'ROLE_SYS_USER_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '80', 'ROLE_SYS_USER_DISABLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '81', 'ROLE_SYS_USER_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '6', 'ROLE_SYS_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '56', 'ROLE_SYS_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '57', 'ROLE_SYS_ROLE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '58', 'ROLE_SYS_ROLE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '59', 'ROLE_SYS_ROLE_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '4', 'ROLE_SYS_DEP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '52', 'ROLE_SYS_DEP_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '54', 'ROLE_SYS_DEP_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '53', 'ROLE_SYS_DEP_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '80', 'ROLE_SYS_USER_DISABLE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '7', 'ROLE_SYS_DIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '60', 'ROLE_SYS_DIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('bae91a2257334730b71ebd3ab24e8313', '61', 'ROLE_SYS_DIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '650', 'ROLE_MATERIALTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '651', 'ROLE_MATERIALTYPE_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '645', 'ROLE_MATERIAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '646', 'ROLE_MATERIAL_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '9', 'ROLE_SYS_SYSDIC', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '647', 'ROLE_MATERIAL_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '63', 'ROLE_SYS_SYSDIC_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '648', 'ROLE_MATERIAL_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '64', 'ROLE_SYS_SYSDIC_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '686', 'ROLE_SUPPLIER_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '65', 'ROLE_SYS_SYSDIC_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '687', 'ROLE_BUDGETACCOUNT_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '102', 'ROLE_SYS_AUTHORITY', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '689', 'ROLE_BUDGETACCOUNT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '3', 'ROLE_SYS_USER', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '690', 'ROLE_BUDGETACCOUNT_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '558', 'ROLE_SYS_USER_INIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '691', 'ROLE_BUDGETACCOUNT_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '77', 'ROLE_SYS_USER_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '692', 'ROLE_BUDGETACCOUNT_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '78', 'ROLE_SYS_USER_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '677', 'ROLE_MATERIAL_PLAN_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '679', 'ROLE_PURCHASE_PLAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '693', 'ROLE_PURCHASE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '596', 'ROLE_TENDER_INSERT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '676', 'ROLE_ORDER_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '677', 'ROLE_MATERIAL_PLAN_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '679', 'ROLE_PURCHASE_PLAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '693', 'ROLE_PURCHASE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '694', 'ROLE_PURCHASE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '695', 'ROLE_PURCHASE_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '696', 'ROLE_PURCHASE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '682', 'ROLE_BUDGETPLAN_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '697', 'ROLE_BUDGETPLAN_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '698', 'ROLE_BUDGETPLAN_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '699', 'ROLE_BUDGETPLAN_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '700', 'ROLE_BUDGETPLAN_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '701', 'ROLE_BUDGETPLAN_VIEW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '702', 'ROLE_BUDGETPLAN_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '703', 'ROLE_BUDGETPLAN_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '688', 'ROLE_MATERIAL_PURCHASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '704', 'ROLE_MATERIALPURCHASE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '705', 'ROLE_MATERIALPURCHASE_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '706', 'ROLE_MATERIALPURCHASE_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '707', 'ROLE_MATERIALPURCHASE_DEL', null, null);
commit;
prompt 1200 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '708', 'ROLE_MATERIALPURCHASE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '592', 'ROLE_TENDER_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '593', 'ROLE_TENDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '594', 'ROLE_TENDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '665', 'ROLE_TENDER_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '724', 'ROLE_MATERIALSTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '666', 'ROLE_TENDER_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '595', 'ROLE_TENDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '596', 'ROLE_TENDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '660', 'ROLE_TENDER_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '661', 'ROLE_TENDER_PRODUCTFRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '662', 'ROLE_TENDER_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '663', 'ROLE_TENDER_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '664', 'ROLE_TENDER_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '613', 'ROLE_TENDER_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '631', 'ROLE_TENDERCONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '632', 'ROLE_TENDERCONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '633', 'ROLE_TENDERCONTRACT_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '634', 'ROLE_TENDERCONTRACT_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '636', 'ROLE_TENDERCONTRACT_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '637', 'ROLE_TENDERCONTRACT_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '598', 'ROLE_CONTRACT_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '599', 'ROLE_FRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '600', 'ROLE_FRAME_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '601', 'ROLE_FRAME_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '602', 'ROLE_FRAME_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '603', 'ROLE_FRAME_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '608', 'ROLE_PURCHASE_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '609', 'ROLE_CONTRACT_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '610', 'ROLE_CONTRACT_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '611', 'ROLE_CONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '612', 'ROLE_CONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '678', 'ROLE_MATERIAL_PURCHASE_ORDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '723', 'ROLE_LOCATION_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '723', 'ROLE_LOCATION_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '723', 'ROLE_LOCATION_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '723', 'ROLE_LOCATION_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '723', 'ROLE_LOCATION_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '720', 'ROLE_LOCATION_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '720', 'ROLE_LOCATION_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '720', 'ROLE_LOCATION_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '720', 'ROLE_LOCATION_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '720', 'ROLE_LOCATION_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '564', 'ROLE_REGION_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '564', 'ROLE_REGION_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '564', 'ROLE_REGION_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '564', 'ROLE_REGION_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '564', 'ROLE_REGION_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '565', 'ROLE_REGION_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '565', 'ROLE_REGION_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '565', 'ROLE_REGION_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '565', 'ROLE_REGION_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '565', 'ROLE_REGION_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '566', 'ROLE_REGION_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '566', 'ROLE_REGION_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '566', 'ROLE_REGION_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '566', 'ROLE_REGION_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '566', 'ROLE_REGION_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '560', 'ROLE_COMMODITY_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '560', 'ROLE_COMMODITY_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '560', 'ROLE_COMMODITY_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '63', 'ROLE_SYS_SYSDIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '64', 'ROLE_SYS_SYSDIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '65', 'ROLE_SYS_SYSDIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '8', 'ROLE_SYS_LOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '76', 'ROLE_SYS_SENIOR_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '548', 'ROLE_SYS_SYSLOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '547', 'ROLE_SYS_FLOWSET', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '17', 'ROLE_BASEINFO_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '559', 'ROLE_WAREHOUSE_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '561', 'ROLE_WAREHOUSE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '722', 'ROLE_LOCATION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '564', 'ROLE_REGION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '710', 'ROLE_ORDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '711', 'ROLE_ORDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '696', 'ROLE_PURCHASE_EDIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '712', 'ROLE_ORDER_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '713', 'ROLE_ORDER_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '682', 'ROLE_BUDGETPLAN_ROLE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '714', 'ROLE_ORDER_PURCHASE_END', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '604', 'ROLE_STOCK_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '697', 'ROLE_BUDGETPLAN_SAVE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '605', 'ROLE_STORAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '652', 'ROLE_STORAGE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '698', 'ROLE_BUDGETPLAN_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '653', 'ROLE_STORAGE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '654', 'ROLE_STORAGE_EXP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '699', 'ROLE_BUDGETPLAN_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '659', 'ROLE_STORAGE_SUB', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '672', 'ROLE_DIRECT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '700', 'ROLE_BUDGETPLAN_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
commit;
prompt 1300 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '673', 'ROLE_DIRECT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '674', 'ROLE_DIRECT_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '701', 'ROLE_BUDGETPLAN_VIEW', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '675', 'ROLE_DIRECT_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '683', 'ROLE_STOCK', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '702', 'ROLE_BUDGETPLAN_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '684', 'ROLE_OUTSTOCK', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '624', 'ROLE_PAY_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '703', 'ROLE_BUDGETPLAN_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '625', 'ROLE_PAYMENT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '626', 'ROLE_PAYMENT_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '627', 'ROLE_PAYMENT_DELETE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '709', 'ROLE_ORDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '628', 'ROLE_PAYMENT_STATE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '629', 'ROLE_PAYMENT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '685', 'ROLE_INVOICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '715', 'ROLE_INVOICE_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '716', 'ROLE_INVOICE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '717', 'ROLE_INVOICE_DELETE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '718', 'ROLE_INVOICE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '1', 'ROLE_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '646', 'ROLE_MATERIAL_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '723', 'ROLE_LOCATION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '562', 'ROLE_WAREHOUSE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '563', 'ROLE_WAREHOUSE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '565', 'ROLE_REGION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '566', 'ROLE_REGION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '720', 'ROLE_LOCATION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '721', 'ROLE_LOCATION_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '560', 'ROLE_COMMODITY_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '642', 'ROLE_MATERIALTYPE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '649', 'ROLE_MATERIAL_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '643', 'ROLE_MATERIALTYPE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '644', 'ROLE_MATERIALTYPE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '650', 'ROLE_MATERIALTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '651', 'ROLE_MATERIALTYPE_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '645', 'ROLE_MATERIAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '647', 'ROLE_MATERIAL_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '648', 'ROLE_MATERIAL_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '686', 'ROLE_SUPPLIER_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '687', 'ROLE_BUDGETACCOUNT_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '689', 'ROLE_BUDGETACCOUNT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '690', 'ROLE_BUDGETACCOUNT_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '691', 'ROLE_BUDGETACCOUNT_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '692', 'ROLE_BUDGETACCOUNT_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '677', 'ROLE_MATERIAL_PLAN_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '679', 'ROLE_PURCHASE_PLAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '693', 'ROLE_PURCHASE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '715', 'ROLE_INVOICE_SAVE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '694', 'ROLE_PURCHASE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '695', 'ROLE_PURCHASE_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '696', 'ROLE_PURCHASE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '682', 'ROLE_BUDGETPLAN_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '697', 'ROLE_BUDGETPLAN_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '599', 'ROLE_FRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '716', 'ROLE_INVOICE_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '2', 'ROLE_SYS_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '102', 'ROLE_SYS_AUTHORITY', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '3', 'ROLE_SYS_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '558', 'ROLE_SYS_USER_INIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '82', 'ROLE_SYS_USER_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '77', 'ROLE_SYS_USER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '78', 'ROLE_SYS_USER_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '688', 'ROLE_MATERIAL_PURCHASE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '79', 'ROLE_SYS_USER_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '80', 'ROLE_SYS_USER_DISABLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '704', 'ROLE_MATERIALPURCHASE_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '81', 'ROLE_SYS_USER_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '6', 'ROLE_SYS_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '705', 'ROLE_MATERIALPURCHASE_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '56', 'ROLE_SYS_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '57', 'ROLE_SYS_ROLE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '706', 'ROLE_MATERIALPURCHASE_INSERT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '58', 'ROLE_SYS_ROLE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '59', 'ROLE_SYS_ROLE_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '707', 'ROLE_MATERIALPURCHASE_DEL', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '4', 'ROLE_SYS_DEP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '52', 'ROLE_SYS_DEP_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '708', 'ROLE_MATERIALPURCHASE_EDIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '54', 'ROLE_SYS_DEP_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '53', 'ROLE_SYS_DEP_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '624', 'ROLE_PAY_MEAN', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '7', 'ROLE_SYS_DIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '60', 'ROLE_SYS_DIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '685', 'ROLE_INVOICE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '61', 'ROLE_SYS_DIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '62', 'ROLE_SYS_DIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '9', 'ROLE_SYS_SYSDIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '63', 'ROLE_SYS_SYSDIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '64', 'ROLE_SYS_SYSDIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '65', 'ROLE_SYS_SYSDIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '8', 'ROLE_SYS_LOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '76', 'ROLE_SYS_SENIOR_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '548', 'ROLE_SYS_SYSLOG', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '547', 'ROLE_SYS_FLOWSET', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '17', 'ROLE_BASEINFO_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '559', 'ROLE_WAREHOUSE_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '561', 'ROLE_WAREHOUSE_ADD', null, null);
commit;
prompt 1400 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '722', 'ROLE_LOCATION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '723', 'ROLE_LOCATION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '562', 'ROLE_WAREHOUSE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '563', 'ROLE_WAREHOUSE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '564', 'ROLE_REGION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '565', 'ROLE_REGION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '566', 'ROLE_REGION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '720', 'ROLE_LOCATION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '721', 'ROLE_LOCATION_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '560', 'ROLE_COMMODITY_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '642', 'ROLE_MATERIALTYPE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '649', 'ROLE_MATERIAL_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '643', 'ROLE_MATERIALTYPE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '644', 'ROLE_MATERIALTYPE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '650', 'ROLE_MATERIALTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '651', 'ROLE_MATERIALTYPE_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '645', 'ROLE_MATERIAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '646', 'ROLE_MATERIAL_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '647', 'ROLE_MATERIAL_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '648', 'ROLE_MATERIAL_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '686', 'ROLE_SUPPLIER_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '687', 'ROLE_BUDGETACCOUNT_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '689', 'ROLE_BUDGETACCOUNT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '690', 'ROLE_BUDGETACCOUNT_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '691', 'ROLE_BUDGETACCOUNT_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '692', 'ROLE_BUDGETACCOUNT_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '677', 'ROLE_MATERIAL_PLAN_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '679', 'ROLE_PURCHASE_PLAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '693', 'ROLE_PURCHASE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '694', 'ROLE_PURCHASE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '698', 'ROLE_BUDGETPLAN_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '699', 'ROLE_BUDGETPLAN_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '613', 'ROLE_TENDER_CONTRACT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '700', 'ROLE_BUDGETPLAN_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '701', 'ROLE_BUDGETPLAN_VIEW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '702', 'ROLE_BUDGETPLAN_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '695', 'ROLE_PURCHASE_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '703', 'ROLE_BUDGETPLAN_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '688', 'ROLE_MATERIAL_PURCHASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '696', 'ROLE_PURCHASE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '704', 'ROLE_MATERIALPURCHASE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '705', 'ROLE_MATERIALPURCHASE_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '706', 'ROLE_MATERIALPURCHASE_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '707', 'ROLE_MATERIALPURCHASE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '708', 'ROLE_MATERIALPURCHASE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '592', 'ROLE_TENDER_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '637', 'ROLE_TENDERCONTRACT_INVALID', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '593', 'ROLE_TENDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '683', 'ROLE_STOCK', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '682', 'ROLE_BUDGETPLAN_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '697', 'ROLE_BUDGETPLAN_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '698', 'ROLE_BUDGETPLAN_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '699', 'ROLE_BUDGETPLAN_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '700', 'ROLE_BUDGETPLAN_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '701', 'ROLE_BUDGETPLAN_VIEW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '702', 'ROLE_BUDGETPLAN_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '717', 'ROLE_INVOICE_DELETE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '703', 'ROLE_BUDGETPLAN_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '718', 'ROLE_INVOICE_EDIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '688', 'ROLE_MATERIAL_PURCHASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '704', 'ROLE_MATERIALPURCHASE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '625', 'ROLE_PAYMENT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '705', 'ROLE_MATERIALPURCHASE_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '706', 'ROLE_MATERIALPURCHASE_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '629', 'ROLE_PAYMENT_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '707', 'ROLE_MATERIALPURCHASE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '708', 'ROLE_MATERIALPURCHASE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '627', 'ROLE_PAYMENT_DELETE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '592', 'ROLE_TENDER_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '593', 'ROLE_TENDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '626', 'ROLE_PAYMENT_MOD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '594', 'ROLE_TENDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '665', 'ROLE_TENDER_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '628', 'ROLE_PAYMENT_STATE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '724', 'ROLE_MATERIALSTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '666', 'ROLE_TENDER_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '592', 'ROLE_TENDER_MEAN', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '595', 'ROLE_TENDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '596', 'ROLE_TENDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '660', 'ROLE_TENDER_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '661', 'ROLE_TENDER_PRODUCTFRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '662', 'ROLE_TENDER_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '663', 'ROLE_TENDER_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '664', 'ROLE_TENDER_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '613', 'ROLE_TENDER_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '631', 'ROLE_TENDERCONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '632', 'ROLE_TENDERCONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '633', 'ROLE_TENDERCONTRACT_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '634', 'ROLE_TENDERCONTRACT_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '636', 'ROLE_TENDERCONTRACT_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '637', 'ROLE_TENDERCONTRACT_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '598', 'ROLE_CONTRACT_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '599', 'ROLE_FRAME', null, null);
commit;
prompt 1500 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '600', 'ROLE_FRAME_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '601', 'ROLE_FRAME_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '602', 'ROLE_FRAME_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '603', 'ROLE_FRAME_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '608', 'ROLE_PURCHASE_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '609', 'ROLE_CONTRACT_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '610', 'ROLE_CONTRACT_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '611', 'ROLE_CONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '612', 'ROLE_CONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '676', 'ROLE_ORDER_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '678', 'ROLE_MATERIAL_PURCHASE_ORDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '709', 'ROLE_ORDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '710', 'ROLE_ORDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '711', 'ROLE_ORDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '712', 'ROLE_ORDER_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '713', 'ROLE_ORDER_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '721', 'ROLE_LOCATION_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '593', 'ROLE_TENDER', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '721', 'ROLE_LOCATION_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '721', 'ROLE_LOCATION_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '714', 'ROLE_ORDER_PURCHASE_END', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '604', 'ROLE_STOCK_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '605', 'ROLE_STORAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '636', 'ROLE_TENDERCONTRACT_BID', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '652', 'ROLE_STORAGE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '653', 'ROLE_STORAGE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '654', 'ROLE_STORAGE_EXP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '659', 'ROLE_STORAGE_SUB', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '672', 'ROLE_DIRECT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '673', 'ROLE_DIRECT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '674', 'ROLE_DIRECT_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '675', 'ROLE_DIRECT_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '632', 'ROLE_TENDERCONTRACT_EDIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '683', 'ROLE_STOCK', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '684', 'ROLE_OUTSTOCK', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '631', 'ROLE_TENDERCONTRACT_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '624', 'ROLE_PAY_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '625', 'ROLE_PAYMENT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '633', 'ROLE_TENDERCONTRACT_INSERT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '626', 'ROLE_PAYMENT_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '627', 'ROLE_PAYMENT_DELETE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '634', 'ROLE_TENDERCONTRACT_RELEASE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '628', 'ROLE_PAYMENT_STATE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '629', 'ROLE_PAYMENT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '721', 'ROLE_LOCATION_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '722', 'ROLE_LOCATION_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '722', 'ROLE_LOCATION_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '722', 'ROLE_LOCATION_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '722', 'ROLE_LOCATION_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '722', 'ROLE_LOCATION_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '594', 'ROLE_TENDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '665', 'ROLE_TENDER_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '724', 'ROLE_MATERIALSTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '666', 'ROLE_TENDER_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '595', 'ROLE_TENDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '596', 'ROLE_TENDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '660', 'ROLE_TENDER_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '661', 'ROLE_TENDER_PRODUCTFRAME', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '662', 'ROLE_TENDER_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '663', 'ROLE_TENDER_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '664', 'ROLE_TENDER_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '613', 'ROLE_TENDER_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '631', 'ROLE_TENDERCONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '632', 'ROLE_TENDERCONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '633', 'ROLE_TENDERCONTRACT_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '634', 'ROLE_TENDERCONTRACT_RELEASE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '685', 'ROLE_INVOICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '715', 'ROLE_INVOICE_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '716', 'ROLE_INVOICE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '717', 'ROLE_INVOICE_DELETE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '718', 'ROLE_INVOICE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '1', 'ROLE_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '636', 'ROLE_TENDERCONTRACT_BID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '559', 'ROLE_WAREHOUSE_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '724', 'ROLE_MATERIALSTYPE_IMP', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '561', 'ROLE_WAREHOUSE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '722', 'ROLE_LOCATION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '660', 'ROLE_TENDER_RELEASE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '723', 'ROLE_LOCATION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '562', 'ROLE_WAREHOUSE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '661', 'ROLE_TENDER_PRODUCTFRAME', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '563', 'ROLE_WAREHOUSE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '564', 'ROLE_REGION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '662', 'ROLE_TENDER_UPLOADPRICE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '565', 'ROLE_REGION_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '566', 'ROLE_REGION_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '663', 'ROLE_TENDER_DOWNTEM', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '719', 'ROLE_PURCHASE_PREARRIVAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '720', 'ROLE_LOCATION_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '664', 'ROLE_TENDER_INVALID', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '721', 'ROLE_LOCATION_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '560', 'ROLE_COMMODITY_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '665', 'ROLE_TENDER_BID', 'role', '022104e6db8b42f5bddbdb005512128');
commit;
prompt 1600 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '642', 'ROLE_MATERIALTYPE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '649', 'ROLE_MATERIAL_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '666', 'ROLE_TENDER_FILEMANAGE', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '643', 'ROLE_MATERIALTYPE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '644', 'ROLE_MATERIALTYPE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '594', 'ROLE_TENDER_ADD', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '650', 'ROLE_MATERIALTYPE_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '651', 'ROLE_MATERIALTYPE_DOW', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '595', 'ROLE_TENDER_EDIT', 'role', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '645', 'ROLE_MATERIAL_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '646', 'ROLE_MATERIAL_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '17', 'ROLE_BASEINFO_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '647', 'ROLE_MATERIAL_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '648', 'ROLE_MATERIAL_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '686', 'ROLE_SUPPLIER_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '687', 'ROLE_BUDGETACCOUNT_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '689', 'ROLE_BUDGETACCOUNT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '690', 'ROLE_BUDGETACCOUNT_IMP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '691', 'ROLE_BUDGETACCOUNT_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('73b984ba9b274b46bf3fc3135f887ed5', '692', 'ROLE_BUDGETACCOUNT_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '637', 'ROLE_TENDERCONTRACT_INVALID', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '598', 'ROLE_CONTRACT_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '600', 'ROLE_FRAME_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '601', 'ROLE_FRAME_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '602', 'ROLE_FRAME_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '603', 'ROLE_FRAME_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '608', 'ROLE_PURCHASE_CONTRACT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '609', 'ROLE_CONTRACT_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '610', 'ROLE_CONTRACT_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '611', 'ROLE_CONTRACT_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '612', 'ROLE_CONTRACT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '676', 'ROLE_ORDER_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '678', 'ROLE_MATERIAL_PURCHASE_ORDER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '709', 'ROLE_ORDER_INSERT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '710', 'ROLE_ORDER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '700', 'ROLE_BUDGETPLAN_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '700', 'ROLE_BUDGETPLAN_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '700', 'ROLE_BUDGETPLAN_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '700', 'ROLE_BUDGETPLAN_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '700', 'ROLE_BUDGETPLAN_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '701', 'ROLE_BUDGETPLAN_VIEW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '701', 'ROLE_BUDGETPLAN_VIEW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '701', 'ROLE_BUDGETPLAN_VIEW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '701', 'ROLE_BUDGETPLAN_VIEW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '701', 'ROLE_BUDGETPLAN_VIEW', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '702', 'ROLE_BUDGETPLAN_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '702', 'ROLE_BUDGETPLAN_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '702', 'ROLE_BUDGETPLAN_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '702', 'ROLE_BUDGETPLAN_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '702', 'ROLE_BUDGETPLAN_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '703', 'ROLE_BUDGETPLAN_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '703', 'ROLE_BUDGETPLAN_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '703', 'ROLE_BUDGETPLAN_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '703', 'ROLE_BUDGETPLAN_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '703', 'ROLE_BUDGETPLAN_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '681', 'ROLE_PURCHASE_REQUISITIONS_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '688', 'ROLE_MATERIAL_PURCHASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '688', 'ROLE_MATERIAL_PURCHASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '688', 'ROLE_MATERIAL_PURCHASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '688', 'ROLE_MATERIAL_PURCHASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '688', 'ROLE_MATERIAL_PURCHASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '704', 'ROLE_MATERIALPURCHASE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '704', 'ROLE_MATERIALPURCHASE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '711', 'ROLE_ORDER_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '712', 'ROLE_ORDER_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '713', 'ROLE_ORDER_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '714', 'ROLE_ORDER_PURCHASE_END', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '604', 'ROLE_STOCK_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '605', 'ROLE_STORAGE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '652', 'ROLE_STORAGE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '653', 'ROLE_STORAGE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '654', 'ROLE_STORAGE_EXP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '659', 'ROLE_STORAGE_SUB', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '672', 'ROLE_DIRECT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '673', 'ROLE_DIRECT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '79', 'ROLE_SYS_USER_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '80', 'ROLE_SYS_USER_DISABLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '80', 'ROLE_SYS_USER_DISABLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '80', 'ROLE_SYS_USER_DISABLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '80', 'ROLE_SYS_USER_DISABLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '80', 'ROLE_SYS_USER_DISABLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '81', 'ROLE_SYS_USER_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '81', 'ROLE_SYS_USER_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '81', 'ROLE_SYS_USER_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '81', 'ROLE_SYS_USER_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '81', 'ROLE_SYS_USER_ROLE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '82', 'ROLE_SYS_USER_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '82', 'ROLE_SYS_USER_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '82', 'ROLE_SYS_USER_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '82', 'ROLE_SYS_USER_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '82', 'ROLE_SYS_USER_AUTH_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '4', 'ROLE_SYS_DEP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '4', 'ROLE_SYS_DEP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '4', 'ROLE_SYS_DEP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '4', 'ROLE_SYS_DEP', 'role', '022104e6db8b42f5bddbdb005512089');
commit;
prompt 1700 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '4', 'ROLE_SYS_DEP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '52', 'ROLE_SYS_DEP_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '52', 'ROLE_SYS_DEP_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '52', 'ROLE_SYS_DEP_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '52', 'ROLE_SYS_DEP_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '52', 'ROLE_SYS_DEP_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '53', 'ROLE_SYS_DEP_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '53', 'ROLE_SYS_DEP_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '53', 'ROLE_SYS_DEP_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '53', 'ROLE_SYS_DEP_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '53', 'ROLE_SYS_DEP_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '54', 'ROLE_SYS_DEP_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '54', 'ROLE_SYS_DEP_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '54', 'ROLE_SYS_DEP_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '674', 'ROLE_DIRECT_SUBMIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '675', 'ROLE_DIRECT_APPROVAL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '684', 'ROLE_OUTSTOCK', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '624', 'ROLE_PAY_MEAN', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '625', 'ROLE_PAYMENT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '626', 'ROLE_PAYMENT_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '627', 'ROLE_PAYMENT_DELETE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '628', 'ROLE_PAYMENT_STATE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '629', 'ROLE_PAYMENT_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '685', 'ROLE_INVOICE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '715', 'ROLE_INVOICE_SAVE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '716', 'ROLE_INVOICE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '1', 'ROLE_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '54', 'ROLE_SYS_DEP_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '54', 'ROLE_SYS_DEP_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '598', 'ROLE_CONTRACT_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '598', 'ROLE_CONTRACT_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '598', 'ROLE_CONTRACT_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '598', 'ROLE_CONTRACT_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '598', 'ROLE_CONTRACT_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '599', 'ROLE_FRAME', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '599', 'ROLE_FRAME', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '599', 'ROLE_FRAME', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '599', 'ROLE_FRAME', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '599', 'ROLE_FRAME', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '600', 'ROLE_FRAME_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '600', 'ROLE_FRAME_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '600', 'ROLE_FRAME_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '600', 'ROLE_FRAME_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '600', 'ROLE_FRAME_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '603', 'ROLE_FRAME_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '603', 'ROLE_FRAME_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '603', 'ROLE_FRAME_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '603', 'ROLE_FRAME_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '603', 'ROLE_FRAME_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '601', 'ROLE_FRAME_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '601', 'ROLE_FRAME_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '601', 'ROLE_FRAME_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '601', 'ROLE_FRAME_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '601', 'ROLE_FRAME_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '602', 'ROLE_FRAME_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '602', 'ROLE_FRAME_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '602', 'ROLE_FRAME_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '602', 'ROLE_FRAME_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '602', 'ROLE_FRAME_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '608', 'ROLE_PURCHASE_CONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '608', 'ROLE_PURCHASE_CONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '608', 'ROLE_PURCHASE_CONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '717', 'ROLE_INVOICE_DELETE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '718', 'ROLE_INVOICE_EDIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '608', 'ROLE_PURCHASE_CONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '608', 'ROLE_PURCHASE_CONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '609', 'ROLE_CONTRACT_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '609', 'ROLE_CONTRACT_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '609', 'ROLE_CONTRACT_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '609', 'ROLE_CONTRACT_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '609', 'ROLE_CONTRACT_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '610', 'ROLE_CONTRACT_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '610', 'ROLE_CONTRACT_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '610', 'ROLE_CONTRACT_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '610', 'ROLE_CONTRACT_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '610', 'ROLE_CONTRACT_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '611', 'ROLE_CONTRACT_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '611', 'ROLE_CONTRACT_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '611', 'ROLE_CONTRACT_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '611', 'ROLE_CONTRACT_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '611', 'ROLE_CONTRACT_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '612', 'ROLE_CONTRACT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '612', 'ROLE_CONTRACT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '612', 'ROLE_CONTRACT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '612', 'ROLE_CONTRACT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '612', 'ROLE_CONTRACT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '604', 'ROLE_STOCK_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '604', 'ROLE_STOCK_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '604', 'ROLE_STOCK_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '604', 'ROLE_STOCK_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '604', 'ROLE_STOCK_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '672', 'ROLE_DIRECT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '672', 'ROLE_DIRECT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '672', 'ROLE_DIRECT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '672', 'ROLE_DIRECT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '672', 'ROLE_DIRECT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '673', 'ROLE_DIRECT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '673', 'ROLE_DIRECT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '673', 'ROLE_DIRECT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '673', 'ROLE_DIRECT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
commit;
prompt 1800 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '673', 'ROLE_DIRECT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '674', 'ROLE_DIRECT_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '674', 'ROLE_DIRECT_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '674', 'ROLE_DIRECT_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '674', 'ROLE_DIRECT_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '674', 'ROLE_DIRECT_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '675', 'ROLE_DIRECT_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '675', 'ROLE_DIRECT_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '675', 'ROLE_DIRECT_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '675', 'ROLE_DIRECT_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '675', 'ROLE_DIRECT_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '605', 'ROLE_STORAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '605', 'ROLE_STORAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '605', 'ROLE_STORAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '605', 'ROLE_STORAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '605', 'ROLE_STORAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '652', 'ROLE_STORAGE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '652', 'ROLE_STORAGE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '652', 'ROLE_STORAGE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '652', 'ROLE_STORAGE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '652', 'ROLE_STORAGE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '653', 'ROLE_STORAGE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '653', 'ROLE_STORAGE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '653', 'ROLE_STORAGE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '653', 'ROLE_STORAGE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '653', 'ROLE_STORAGE_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '654', 'ROLE_STORAGE_EXP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '654', 'ROLE_STORAGE_EXP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '654', 'ROLE_STORAGE_EXP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '654', 'ROLE_STORAGE_EXP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '654', 'ROLE_STORAGE_EXP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '659', 'ROLE_STORAGE_SUB', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '659', 'ROLE_STORAGE_SUB', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '659', 'ROLE_STORAGE_SUB', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '659', 'ROLE_STORAGE_SUB', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '659', 'ROLE_STORAGE_SUB', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '684', 'ROLE_OUTSTOCK', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '684', 'ROLE_OUTSTOCK', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '684', 'ROLE_OUTSTOCK', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '684', 'ROLE_OUTSTOCK', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '684', 'ROLE_OUTSTOCK', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '683', 'ROLE_STOCK', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '683', 'ROLE_STOCK', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '683', 'ROLE_STOCK', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '683', 'ROLE_STOCK', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '683', 'ROLE_STOCK', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '676', 'ROLE_ORDER_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '676', 'ROLE_ORDER_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '676', 'ROLE_ORDER_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '676', 'ROLE_ORDER_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '676', 'ROLE_ORDER_MENU', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '678', 'ROLE_MATERIAL_PURCHASE_ORDER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '678', 'ROLE_MATERIAL_PURCHASE_ORDER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '678', 'ROLE_MATERIAL_PURCHASE_ORDER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '678', 'ROLE_MATERIAL_PURCHASE_ORDER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '678', 'ROLE_MATERIAL_PURCHASE_ORDER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '709', 'ROLE_ORDER_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '709', 'ROLE_ORDER_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '709', 'ROLE_ORDER_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '709', 'ROLE_ORDER_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '709', 'ROLE_ORDER_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '710', 'ROLE_ORDER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '710', 'ROLE_ORDER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '710', 'ROLE_ORDER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '710', 'ROLE_ORDER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '710', 'ROLE_ORDER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '711', 'ROLE_ORDER_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '711', 'ROLE_ORDER_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '711', 'ROLE_ORDER_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '711', 'ROLE_ORDER_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '711', 'ROLE_ORDER_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '712', 'ROLE_ORDER_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '712', 'ROLE_ORDER_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '712', 'ROLE_ORDER_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '712', 'ROLE_ORDER_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '712', 'ROLE_ORDER_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '713', 'ROLE_ORDER_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '713', 'ROLE_ORDER_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '713', 'ROLE_ORDER_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '713', 'ROLE_ORDER_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '713', 'ROLE_ORDER_APPROVAL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '714', 'ROLE_ORDER_PURCHASE_END', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '714', 'ROLE_ORDER_PURCHASE_END', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '714', 'ROLE_ORDER_PURCHASE_END', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '714', 'ROLE_ORDER_PURCHASE_END', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '714', 'ROLE_ORDER_PURCHASE_END', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '677', 'ROLE_MATERIAL_PLAN_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '677', 'ROLE_MATERIAL_PLAN_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '677', 'ROLE_MATERIAL_PLAN_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '677', 'ROLE_MATERIAL_PLAN_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '677', 'ROLE_MATERIAL_PLAN_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '679', 'ROLE_PURCHASE_PLAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '679', 'ROLE_PURCHASE_PLAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '679', 'ROLE_PURCHASE_PLAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '679', 'ROLE_PURCHASE_PLAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '679', 'ROLE_PURCHASE_PLAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '693', 'ROLE_PURCHASE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '693', 'ROLE_PURCHASE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '693', 'ROLE_PURCHASE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '693', 'ROLE_PURCHASE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
commit;
prompt 1900 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '693', 'ROLE_PURCHASE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '694', 'ROLE_PURCHASE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '694', 'ROLE_PURCHASE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '2', 'ROLE_SYS_MENU', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '102', 'ROLE_SYS_AUTHORITY', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '3', 'ROLE_SYS_USER', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '558', 'ROLE_SYS_USER_INIT', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '82', 'ROLE_SYS_USER_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '77', 'ROLE_SYS_USER_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '78', 'ROLE_SYS_USER_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '79', 'ROLE_SYS_USER_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '80', 'ROLE_SYS_USER_DISABLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '81', 'ROLE_SYS_USER_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '6', 'ROLE_SYS_ROLE', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '694', 'ROLE_PURCHASE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '694', 'ROLE_PURCHASE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '694', 'ROLE_PURCHASE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '695', 'ROLE_PURCHASE_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '695', 'ROLE_PURCHASE_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '695', 'ROLE_PURCHASE_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '695', 'ROLE_PURCHASE_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '695', 'ROLE_PURCHASE_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '696', 'ROLE_PURCHASE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '696', 'ROLE_PURCHASE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '696', 'ROLE_PURCHASE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '696', 'ROLE_PURCHASE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '696', 'ROLE_PURCHASE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '682', 'ROLE_BUDGETPLAN_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '682', 'ROLE_BUDGETPLAN_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '682', 'ROLE_BUDGETPLAN_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '682', 'ROLE_BUDGETPLAN_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '682', 'ROLE_BUDGETPLAN_ROLE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '697', 'ROLE_BUDGETPLAN_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '697', 'ROLE_BUDGETPLAN_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '697', 'ROLE_BUDGETPLAN_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '697', 'ROLE_BUDGETPLAN_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '697', 'ROLE_BUDGETPLAN_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '698', 'ROLE_BUDGETPLAN_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '698', 'ROLE_BUDGETPLAN_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '698', 'ROLE_BUDGETPLAN_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '698', 'ROLE_BUDGETPLAN_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '698', 'ROLE_BUDGETPLAN_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '699', 'ROLE_BUDGETPLAN_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '699', 'ROLE_BUDGETPLAN_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '699', 'ROLE_BUDGETPLAN_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '699', 'ROLE_BUDGETPLAN_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '699', 'ROLE_BUDGETPLAN_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '56', 'ROLE_SYS_ROLE_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '57', 'ROLE_SYS_ROLE_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '58', 'ROLE_SYS_ROLE_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '59', 'ROLE_SYS_ROLE_AUTH_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '4', 'ROLE_SYS_DEP', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '52', 'ROLE_SYS_DEP_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '54', 'ROLE_SYS_DEP_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '53', 'ROLE_SYS_DEP_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '7', 'ROLE_SYS_DIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '60', 'ROLE_SYS_DIC_ADD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '61', 'ROLE_SYS_DIC_MOD', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '62', 'ROLE_SYS_DIC_DEL', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '9', 'ROLE_SYS_SYSDIC', null, null);
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '636', 'ROLE_TENDERCONTRACT_BID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '636', 'ROLE_TENDERCONTRACT_BID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '636', 'ROLE_TENDERCONTRACT_BID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '638', 'ROLE_TENDERCONTRACT_DOWNTEM', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '639', 'ROLE_TENDERCONTRACT_UPLOADPRICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '640', 'ROLE_TENDERCONTRACT_PRODUCTCONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '632', 'ROLE_TENDERCONTRACT_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '632', 'ROLE_TENDERCONTRACT_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '632', 'ROLE_TENDERCONTRACT_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '632', 'ROLE_TENDERCONTRACT_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '632', 'ROLE_TENDERCONTRACT_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '631', 'ROLE_TENDERCONTRACT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '631', 'ROLE_TENDERCONTRACT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '631', 'ROLE_TENDERCONTRACT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '631', 'ROLE_TENDERCONTRACT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '631', 'ROLE_TENDERCONTRACT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '633', 'ROLE_TENDERCONTRACT_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '633', 'ROLE_TENDERCONTRACT_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '633', 'ROLE_TENDERCONTRACT_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '633', 'ROLE_TENDERCONTRACT_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '633', 'ROLE_TENDERCONTRACT_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '634', 'ROLE_TENDERCONTRACT_RELEASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '634', 'ROLE_TENDERCONTRACT_RELEASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '634', 'ROLE_TENDERCONTRACT_RELEASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '634', 'ROLE_TENDERCONTRACT_RELEASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '634', 'ROLE_TENDERCONTRACT_RELEASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '593', 'ROLE_TENDER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '593', 'ROLE_TENDER', 'role', '022104e6db8b42f5bddbdb005512089');
commit;
prompt 2000 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '593', 'ROLE_TENDER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '593', 'ROLE_TENDER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '593', 'ROLE_TENDER', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '724', 'ROLE_MATERIALSTYPE_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '724', 'ROLE_MATERIALSTYPE_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '724', 'ROLE_MATERIALSTYPE_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '724', 'ROLE_MATERIALSTYPE_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '724', 'ROLE_MATERIALSTYPE_IMP', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '660', 'ROLE_TENDER_RELEASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '660', 'ROLE_TENDER_RELEASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '660', 'ROLE_TENDER_RELEASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '660', 'ROLE_TENDER_RELEASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '660', 'ROLE_TENDER_RELEASE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '661', 'ROLE_TENDER_PRODUCTFRAME', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '661', 'ROLE_TENDER_PRODUCTFRAME', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '661', 'ROLE_TENDER_PRODUCTFRAME', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '661', 'ROLE_TENDER_PRODUCTFRAME', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '661', 'ROLE_TENDER_PRODUCTFRAME', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '662', 'ROLE_TENDER_UPLOADPRICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '662', 'ROLE_TENDER_UPLOADPRICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '662', 'ROLE_TENDER_UPLOADPRICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '662', 'ROLE_TENDER_UPLOADPRICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '662', 'ROLE_TENDER_UPLOADPRICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '663', 'ROLE_TENDER_DOWNTEM', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '663', 'ROLE_TENDER_DOWNTEM', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '663', 'ROLE_TENDER_DOWNTEM', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '663', 'ROLE_TENDER_DOWNTEM', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '663', 'ROLE_TENDER_DOWNTEM', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '664', 'ROLE_TENDER_INVALID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '664', 'ROLE_TENDER_INVALID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '664', 'ROLE_TENDER_INVALID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '664', 'ROLE_TENDER_INVALID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '664', 'ROLE_TENDER_INVALID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '665', 'ROLE_TENDER_BID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '665', 'ROLE_TENDER_BID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '665', 'ROLE_TENDER_BID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '665', 'ROLE_TENDER_BID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '665', 'ROLE_TENDER_BID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '666', 'ROLE_TENDER_FILEMANAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '666', 'ROLE_TENDER_FILEMANAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '666', 'ROLE_TENDER_FILEMANAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '666', 'ROLE_TENDER_FILEMANAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '666', 'ROLE_TENDER_FILEMANAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '594', 'ROLE_TENDER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '594', 'ROLE_TENDER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '594', 'ROLE_TENDER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '594', 'ROLE_TENDER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '594', 'ROLE_TENDER_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '595', 'ROLE_TENDER_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '595', 'ROLE_TENDER_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '595', 'ROLE_TENDER_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '595', 'ROLE_TENDER_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '595', 'ROLE_TENDER_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '596', 'ROLE_TENDER_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '596', 'ROLE_TENDER_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '596', 'ROLE_TENDER_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '596', 'ROLE_TENDER_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '596', 'ROLE_TENDER_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '704', 'ROLE_MATERIALPURCHASE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '704', 'ROLE_MATERIALPURCHASE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '704', 'ROLE_MATERIALPURCHASE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '705', 'ROLE_MATERIALPURCHASE_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '705', 'ROLE_MATERIALPURCHASE_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '705', 'ROLE_MATERIALPURCHASE_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '705', 'ROLE_MATERIALPURCHASE_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '705', 'ROLE_MATERIALPURCHASE_SUBMIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '706', 'ROLE_MATERIALPURCHASE_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '706', 'ROLE_MATERIALPURCHASE_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '706', 'ROLE_MATERIALPURCHASE_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '706', 'ROLE_MATERIALPURCHASE_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '706', 'ROLE_MATERIALPURCHASE_INSERT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '707', 'ROLE_MATERIALPURCHASE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '707', 'ROLE_MATERIALPURCHASE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '707', 'ROLE_MATERIALPURCHASE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '707', 'ROLE_MATERIALPURCHASE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '707', 'ROLE_MATERIALPURCHASE_DEL', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '708', 'ROLE_MATERIALPURCHASE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '708', 'ROLE_MATERIALPURCHASE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '708', 'ROLE_MATERIALPURCHASE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '708', 'ROLE_MATERIALPURCHASE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '708', 'ROLE_MATERIALPURCHASE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '624', 'ROLE_PAY_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '624', 'ROLE_PAY_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '624', 'ROLE_PAY_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '624', 'ROLE_PAY_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '624', 'ROLE_PAY_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '685', 'ROLE_INVOICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '685', 'ROLE_INVOICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '685', 'ROLE_INVOICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '685', 'ROLE_INVOICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '685', 'ROLE_INVOICE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '715', 'ROLE_INVOICE_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '715', 'ROLE_INVOICE_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '715', 'ROLE_INVOICE_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '715', 'ROLE_INVOICE_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '715', 'ROLE_INVOICE_SAVE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '716', 'ROLE_INVOICE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '716', 'ROLE_INVOICE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '716', 'ROLE_INVOICE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '716', 'ROLE_INVOICE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
commit;
prompt 2100 records committed...
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '716', 'ROLE_INVOICE_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '717', 'ROLE_INVOICE_DELETE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '717', 'ROLE_INVOICE_DELETE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '717', 'ROLE_INVOICE_DELETE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '717', 'ROLE_INVOICE_DELETE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '717', 'ROLE_INVOICE_DELETE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '718', 'ROLE_INVOICE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '718', 'ROLE_INVOICE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '718', 'ROLE_INVOICE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '718', 'ROLE_INVOICE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '718', 'ROLE_INVOICE_EDIT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '625', 'ROLE_PAYMENT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '625', 'ROLE_PAYMENT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '625', 'ROLE_PAYMENT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '625', 'ROLE_PAYMENT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '625', 'ROLE_PAYMENT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '629', 'ROLE_PAYMENT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '629', 'ROLE_PAYMENT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '629', 'ROLE_PAYMENT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '629', 'ROLE_PAYMENT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '629', 'ROLE_PAYMENT_ADD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '627', 'ROLE_PAYMENT_DELETE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '627', 'ROLE_PAYMENT_DELETE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '627', 'ROLE_PAYMENT_DELETE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '627', 'ROLE_PAYMENT_DELETE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '627', 'ROLE_PAYMENT_DELETE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '626', 'ROLE_PAYMENT_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '626', 'ROLE_PAYMENT_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '626', 'ROLE_PAYMENT_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '626', 'ROLE_PAYMENT_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '626', 'ROLE_PAYMENT_MOD', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '628', 'ROLE_PAYMENT_STATE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '628', 'ROLE_PAYMENT_STATE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '628', 'ROLE_PAYMENT_STATE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '628', 'ROLE_PAYMENT_STATE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '628', 'ROLE_PAYMENT_STATE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '592', 'ROLE_TENDER_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '592', 'ROLE_TENDER_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '592', 'ROLE_TENDER_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '592', 'ROLE_TENDER_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '592', 'ROLE_TENDER_MEAN', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '613', 'ROLE_TENDER_CONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '613', 'ROLE_TENDER_CONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '613', 'ROLE_TENDER_CONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '613', 'ROLE_TENDER_CONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '613', 'ROLE_TENDER_CONTRACT', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '637', 'ROLE_TENDERCONTRACT_INVALID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '637', 'ROLE_TENDERCONTRACT_INVALID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '637', 'ROLE_TENDERCONTRACT_INVALID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '637', 'ROLE_TENDERCONTRACT_INVALID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '637', 'ROLE_TENDERCONTRACT_INVALID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('64e85a6103434986a81079c588f82cbf', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('1', '635', 'ROLE_TENDERCONTRACT_FILEMANAGE', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('a774bb22af934003a82b2a9e52599db5', '636', 'ROLE_TENDERCONTRACT_BID', 'role', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_AUTHORITY (user_id, auth_id, auth_code, auth_type, fk_role)
values ('0b32e28786eb4a049f6a0aefe8594514', '636', 'ROLE_TENDERCONTRACT_BID', 'role', '022104e6db8b42f5bddbdb005512089');
commit;
prompt 2158 records loaded
prompt Loading SYS_USER_ROLE...
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512129');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512130');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512131');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512132');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512133');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512134');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', 'aaf36cc3e41c4204985a5c3743fa6f90');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', 'c40c8f3062b647a984ebe469db490587');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', 'db0dd569b9a4454e85f969322ddc21f6');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', 'de1a1433a68a498ea41d810e51926236');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', 'e1fd8df114864ff68fe97a6e6fae499f');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', 'f6b7e9f1a9b14e888620ed1685314531');
insert into SYS_USER_ROLE (user_id, role_id)
values ('73b984ba9b274b46bf3fc3135f887ed5', 'b03eb42afbbf4198a1e4cb1f2449417a');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512084');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512085');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512086');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512087');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512088');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512091');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512092');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512093');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512094');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512095');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512096');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512097');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512098');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512099');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512100');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512101');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512102');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512103');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512104');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512105');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512106');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512107');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512108');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512109');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512110');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512111');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512112');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512113');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512115');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512116');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512117');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512118');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512119');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512120');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512121');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512122');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512123');
insert into SYS_USER_ROLE (user_id, role_id)
values ('78fd7059d978496d9beac6f7a210ca18', 'b03eb42afbbf4198a1e4cb1f2449417a');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512124');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512125');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512126');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512127');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512129');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512130');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512131');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512132');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512133');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512134');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', 'aaf36cc3e41c4204985a5c3743fa6f90');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', 'c40c8f3062b647a984ebe469db490587');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', 'db0dd569b9a4454e85f969322ddc21f6');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', 'de1a1433a68a498ea41d810e51926236');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', 'e1fd8df114864ff68fe97a6e6fae499f');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', 'f6b7e9f1a9b14e888620ed1685314531');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', 'aaf36cc3e41c4204985a5c3743fa6f90');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', 'c40c8f3062b647a984ebe469db490587');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', 'db0dd569b9a4454e85f969322ddc21f6');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', 'de1a1433a68a498ea41d810e51926236');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', 'e1fd8df114864ff68fe97a6e6fae499f');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', 'f6b7e9f1a9b14e888620ed1685314531');
insert into SYS_USER_ROLE (user_id, role_id)
values ('0b32e28786eb4a049f6a0aefe8594514', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512083');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', 'b03eb42afbbf4198a1e4cb1f2449417a');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512079');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512080');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512081');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512082');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512083');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512084');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512085');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512086');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512087');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512088');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512091');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512092');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512093');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512094');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512095');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512096');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512097');
commit;
prompt 100 records committed...
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512098');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512099');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512100');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512101');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512102');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512103');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512104');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512105');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512106');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512107');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512108');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512109');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512110');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512111');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512112');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512113');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512115');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512116');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512117');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512118');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512119');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', 'b03eb42afbbf4198a1e4cb1f2449417a');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '47c89486a5dc477c90a4012edc8d2e28');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512079');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512080');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512081');
insert into SYS_USER_ROLE (user_id, role_id)
values ('a774bb22af934003a82b2a9e52599db5', '022104e6db8b42f5bddbdb005512082');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512120');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512121');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512122');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512123');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512124');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512125');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512126');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512127');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512129');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512130');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512131');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512132');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512133');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', '022104e6db8b42f5bddbdb005512134');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', 'aaf36cc3e41c4204985a5c3743fa6f90');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', 'c40c8f3062b647a984ebe469db490587');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', 'db0dd569b9a4454e85f969322ddc21f6');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', 'de1a1433a68a498ea41d810e51926236');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', 'e1fd8df114864ff68fe97a6e6fae499f');
insert into SYS_USER_ROLE (user_id, role_id)
values ('3f4bff5d02ce44f09a727ab5b9d44c19', 'f6b7e9f1a9b14e888620ed1685314531');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', 'b03eb42afbbf4198a1e4cb1f2449417a');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '47c89486a5dc477c90a4012edc8d2e28');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512079');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512080');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512081');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512082');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512083');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512084');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512085');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512086');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512087');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512088');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512090');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512091');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512092');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512093');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512094');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512095');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512096');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512097');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512098');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512099');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512100');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512101');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512102');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512103');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512104');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512105');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512106');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512107');
insert into SYS_USER_ROLE (user_id, role_id)
values ('9f3f9f6d42d44f1a9efd38e431d5ef2d', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', 'b03eb42afbbf4198a1e4cb1f2449417a');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '47c89486a5dc477c90a4012edc8d2e28');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512077');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512078');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512079');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512080');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512081');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512082');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512083');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512084');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512085');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512086');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512087');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512088');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512089');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512090');
commit;
prompt 200 records committed...
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512091');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512092');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512093');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512094');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512095');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512096');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512097');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512098');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512099');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512100');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512101');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512102');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512103');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512104');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512105');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512106');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512107');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512108');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512109');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512110');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512111');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512112');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512113');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512115');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512116');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512117');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512118');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512119');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512120');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512121');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512122');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512123');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512124');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512125');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512126');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512127');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512128');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512129');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512130');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512131');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512132');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512133');
insert into SYS_USER_ROLE (user_id, role_id)
values ('1', '022104e6db8b42f5bddbdb005512134');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512108');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512109');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512110');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512111');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512112');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512113');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512115');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512116');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512117');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512118');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512119');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512120');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512121');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512122');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512123');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512124');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512125');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512126');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512127');
insert into SYS_USER_ROLE (user_id, role_id)
values ('64e85a6103434986a81079c588f82cbf', '022104e6db8b42f5bddbdb005512128');
commit;
prompt 263 records loaded
prompt Loading SYS_WORK_PROCESS_RECORD...
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('2ed94e0e169f41dd9059f895c94860c5', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000002', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('31-10-2017 16:24:28.529000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('01-11-2017 09:34:02.953000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('e4f7874c47e648b6b333f087e2230d62', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000001', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('06-11-2017 09:21:38.579000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-11-2017 09:22:39.169000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('b2bb75c95ba542caa3945400f21411cf', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000003', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('06-11-2017 09:21:47.455000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-11-2017 09:23:19.246000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('85b1d5a7554e4ad79972bc65599ca80b', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000005', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('17-11-2017 09:00:32.397000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('17-11-2017 09:00:50.618000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', '12', '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('6f0d46d1f6844dea9c2f808ee643582d', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000008', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('20-11-2017 18:56:28.417000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('20-11-2017 18:56:36.404000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('1c20ce4024aa4652a9a74afe77df8826', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000008', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('20-11-2017 18:57:05.170000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, '待审核', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('e5ed18ecb03a4409934dbb6104378c38', '5da22dc6a12848d39e5c1db649001057', 'YS1320170001', '1bc92c5768a747b593bff75a81929801', '部门审批', 1, '022104e6db8b42f5bddbdb005512089', null, to_timestamp('13-11-2017 15:42:10.652000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('13-11-2017 15:42:17.828000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('8b22abeacac449a58fee17503de16745', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000003', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('16-11-2017 16:37:24.294000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, '待审核', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('79b16a16f3324f65ae2bb89e55dd9b89', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000006', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('17-11-2017 09:53:45.789000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('17-11-2017 09:53:57.181000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('e51ad41b73da4e9bb402e2ad875bd7cd', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000006', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('17-11-2017 09:54:06.426000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, '待审核', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('fb28a6ff4c0b4ec0bbb9310d78bcecc4', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000009', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('20-11-2017 18:58:15.230000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('20-11-2017 18:59:02.826000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('9878c3f4ff4c49d6a79ac48d544f08a8', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000003', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('06-11-2017 09:16:49.090000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-11-2017 09:19:54.979000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('ec104399016345ffbbbe2176c8bb0722', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000001', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('31-10-2017 16:24:12.696000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('01-11-2017 10:58:54.346000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('8dbf7bb73c20441c9731aaae76247c1d', '5da22dc6a12848d39e5c1db649001057', 'YS020170001', '1bc92c5768a747b593bff75a81929801', '部门审批', 1, '022104e6db8b42f5bddbdb005512089', null, to_timestamp('06-11-2017 09:26:43.708000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-11-2017 09:26:54.243000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('143bd757568d4fbdbf61b7d70474d395', '5da22dc6a12848d39e5c1db649001057', 'YS020170002', '1bc92c5768a747b593bff75a81929801', '部门审批', 1, '022104e6db8b42f5bddbdb005512089', null, to_timestamp('06-11-2017 11:41:49.442000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-11-2017 17:14:03.004000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', '13', '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('be3d8dcc5633410fba2873d1e917bdc6', '5da22dc6a12848d39e5c1db649001057', 'YS131320170002', '1bc92c5768a747b593bff75a81929801', '部门审批', 1, '022104e6db8b42f5bddbdb005512089', null, to_timestamp('17-11-2017 14:49:40.800000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('17-11-2017 14:50:26.711000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', '12', '审核不通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('4292c3ad2489481e9ef03d4900cb36a2', '5da22dc6a12848d39e5c1db649001057', 'YS0320170001', '1bc92c5768a747b593bff75a81929801', '部门审批', 1, '022104e6db8b42f5bddbdb005512089', null, to_timestamp('20-11-2017 13:53:46.800000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('20-11-2017 13:55:07.151000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('03b59480a9944fe6baa1296e9dbb4deb', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000001', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('03-11-2017 10:41:21.432000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-11-2017 09:19:46.321000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('ca7d0eee67fc420c92f02607a6f2d7be', '5da22dc6a12848d39e5c1db649001057', 'YS020170001', '1bc92c5768a747b593bff75a81929801', '部门审批', 1, '022104e6db8b42f5bddbdb005512089', null, to_timestamp('01-11-2017 09:26:18.817000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('01-11-2017 09:26:27.869000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('3e4485c1d4ad48ef91e8c97f28bcc5e0', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000002', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('16-11-2017 16:32:58.893000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('16-11-2017 16:35:26.576000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('e4c6000c1b09494d815d783dc2293d9b', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000007', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('20-11-2017 10:38:49.466000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, null, null, null, null, '待审核', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('6f0421c34d2c4d8e8e5788270b01bd5f', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000001', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('31-10-2017 15:19:34.026000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('31-10-2017 15:24:25.232000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', '11', '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('834d7c7bf65b4d299d13123681157035', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000007', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('17-11-2017 09:57:20.348000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('17-11-2017 09:57:26.401000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('a358e18a80b04e229b117ade796f5bfa', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000007', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('17-11-2017 09:57:32.422000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('17-11-2017 09:57:40.721000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('78c2e8577537420c844991bcdd1646a4', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000002', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('31-10-2017 15:53:48.284000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('31-10-2017 15:53:58.019000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', null, '审核不通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('648e9d4aec9b46319cf8f92aea69dcd9', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000001', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('31-10-2017 15:51:35.793000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('31-10-2017 15:52:06.962000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('4e78f51cc948493fad586e17343d339d', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000004', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('16-11-2017 16:46:46.441000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('17-11-2017 09:01:17.294000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', '12', '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('7903fa72a3fc430f94e6c04e4bce0159', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000009', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('20-11-2017 18:59:13.668000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('20-11-2017 18:59:20.797000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('c4d6f32bb4fa409080bbf9912142b931', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000003', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('03-11-2017 14:14:46.497000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('03-11-2017 14:15:17.891000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('7ab45f90d32a43bebb98d85fe4f517f6', '5da22dc6a12848d39e5c1db649001057', 'YS020170003', '1bc92c5768a747b593bff75a81929801', '部门审批', 1, '022104e6db8b42f5bddbdb005512089', null, to_timestamp('13-11-2017 15:18:02.455000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('13-11-2017 15:22:30.573000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('6ad4b02044cf4d10bcf74980db784425', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000001', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('13-11-2017 15:40:30.750000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('13-11-2017 15:40:36.506000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'a774bb22af934003a82b2a9e52599db5', '石鑫', '50b765068857433c9199b5cfe13', '项目管理部', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('536b23b884774eb498516ea3b28b93ff', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000008', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('20-11-2017 18:56:47.558000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('20-11-2017 18:56:53.751000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('18a9c530bbcf4a2ca575228ca9e8b532', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000002', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('06-11-2017 09:22:32.836000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-11-2017 09:23:26.359000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
insert into SYS_WORK_PROCESS_RECORD (record_id, fk_record_id, work_no, process_id, process_name, order_no, role_id, user_id, input_date, check_time, check_userid, check_username, check_deptid, check_deptname, check_suggestion, check_result, flow_sign, u_id, project_no, project_name)
values ('50776386ab614ca2a6248febbb5c713c', '813c00590ea448ad9c5a0bd71c2d40b9', 'QSNO000001', 'dbe9d69267354a22823cfafcb68791fe', '部门审批', 1, '022104e6db8b42f5bddbdb005512077', null, to_timestamp('06-11-2017 09:23:11.555000', 'dd-mm-yyyy hh24:mi:ss.ff'), to_timestamp('06-11-2017 09:23:32.740000', 'dd-mm-yyyy hh24:mi:ss.ff'), '1', '系统管理员', '0', '公司', null, '审核通过', 0, null, null, null);
commit;
prompt 34 records loaded
prompt Enabling triggers for SYS_USER...
alter table SYS_USER enable all triggers;
prompt Enabling triggers for SYS_USERINFO...
alter table SYS_USERINFO enable all triggers;
prompt Enabling triggers for SYS_USER_AUTHORITY...
alter table SYS_USER_AUTHORITY enable all triggers;
prompt Enabling triggers for SYS_USER_ROLE...
alter table SYS_USER_ROLE enable all triggers;
prompt Enabling triggers for SYS_WORK_PROCESS_RECORD...
alter table SYS_WORK_PROCESS_RECORD enable all triggers;
set feedback on
set define on
prompt Done.
