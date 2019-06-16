prompt PL/SQL Developer import file
prompt Created on 2018��1��18�� by ��߶
set feedback off
set define off
prompt Disabling triggers for BASE_MATERIAL...
alter table BASE_MATERIAL disable all triggers;
prompt Disabling triggers for BASE_MATERIAL_TYPE...
alter table BASE_MATERIAL_TYPE disable all triggers;
prompt Disabling triggers for BASE_REGION...
alter table BASE_REGION disable all triggers;
prompt Disabling triggers for BASE_SUPPLIER...
alter table BASE_SUPPLIER disable all triggers;
prompt Disabling triggers for BASE_WAREHOUSE...
alter table BASE_WAREHOUSE disable all triggers;
prompt Deleting BASE_WAREHOUSE...
delete from BASE_WAREHOUSE;
commit;
prompt Deleting BASE_SUPPLIER...
delete from BASE_SUPPLIER;
commit;
prompt Deleting BASE_REGION...
delete from BASE_REGION;
commit;
prompt Deleting BASE_MATERIAL_TYPE...
delete from BASE_MATERIAL_TYPE;
commit;
prompt Deleting BASE_MATERIAL...
delete from BASE_MATERIAL;
commit;
prompt Loading BASE_MATERIAL...
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('681bd37a7a044067841002b2bf98f492', 'aef9f2ad086a4f53ab47150b1bce888f', '103002001800', '����������Ա��Ů�����', 'jian', 'jian', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2d79d796b62b498fae112f9a8703479e', 'aef9f2ad086a4f53ab47150b1bce888f', '103002001900', '����������Ա��Ů���Ŀ�', 'tiao', 'tiao', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('47942cade54c491aa9122792e7c44ecf', 'aef9f2ad086a4f53ab47150b1bce888f', '103002002000', '����������Ա��Ů����ȹ', 'tiao', 'tiao', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0ef3056444aa4bcb847e07655cb1266f', 'aef9f2ad086a4f53ab47150b1bce888f', '103002002100', '����������Ա��Ů���������', 'jian', 'jian', 1, '��ɫ60��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d0e36348c0564cd280d2ede292e4e144', 'aef9f2ad086a4f53ab47150b1bce888f', '103002002200', '����������Ա��Ů���������', 'jian', 'jian', 1, '��ɫ60��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8091eff788b848838419379c23b5fe7c', 'aef9f2ad086a4f53ab47150b1bce888f', '103002002300', '�г�����Ա��Ů����������', 'jian', 'jian', 1, '��ɫ��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bb36fd6c58c84e81ab12c4065f24b18f', 'aef9f2ad086a4f53ab47150b1bce888f', '103002002400', '�г�����Ա��Ů������', 'tiao', 'tiao', 1, '��ɫ��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b46913ade97a4f9789b5c8a512d23cf0', 'aef9f2ad086a4f53ab47150b1bce888f', '103002002500', '�г�����Ա��Ů�����', 'jian', 'jian', 1, '��ɫ��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('39588c6cd19b46b8b531646f2472cdac', 'aef9f2ad086a4f53ab47150b1bce888f', '103002002600', '�г�����Ա��Ů���Ŀ�', 'tiao', 'tiao', 1, '��ɫ��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b2cd0800abc44d668de96341e02f6aa0', 'aef9f2ad086a4f53ab47150b1bce888f', '103002002700', '�г�����Ա��Ů����ȹ', 'tiao', 'tiao', 1, '��ɫ��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4988aabb148d48c281fac095e06a93fa', 'aef9f2ad086a4f53ab47150b1bce888f', '103002002800', '�г�����Ա��Ů���������', 'jian', 'jian', 1, '��ɫ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9d6200f06b4848dfbd1c4a71094776a9', 'aef9f2ad086a4f53ab47150b1bce888f', '103002002900', '�г�����Ա��Ů���������', 'jian', 'jian', 1, '��ɫ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d17080e2b3ee43faa19b95007fa4d01f', 'aef9f2ad086a4f53ab47150b1bce888f', '103002003000', '������Ա��Ů����������', 'jian', 'jian', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('446a89a7ebfb498badcd803ee351f323', 'aef9f2ad086a4f53ab47150b1bce888f', '103002003100', '������Ա��Ů������', 'tiao', 'tiao', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e228a6d261ea4e3f844e5dd3c8f7f5da', '6a80321d51e44bee87faef9bacd80fa5', '103003000100', '������п�����', 'jian', 'jian', 1, 'ȫ�޷�����ɴ��32/2��32/2', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('92378ca8c8f540afa06ff56c86ba505d', '6a80321d51e44bee87faef9bacd80fa5', '103003000200', '������п˿���', 'tiao', 'tiao', 1, 'ȫ�޷�����ɴ��32/2��32/2', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bcbd1cc0f0bc4fae914b7ff476f6cc61', '6a80321d51e44bee87faef9bacd80fa5', '103003000300', '���񳤳���', 'jian', 'jian', 1, '���޷�����ɴ��ɴ֯32*32', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e12de3d12d1442a9b26395bee81b5185', '6a80321d51e44bee87faef9bacd80fa5', '103003000400', '����̳���', 'jian', 'jian', 1, '���޷�����ɴ��ɴ֯32*32', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d37bb5cb5f4b4d379d22fcb9b0af0f1b', '6a80321d51e44bee87faef9bacd80fa5', '103003000500', '�����Ŀ�', 'tiao', 'tiao', 1, '���޷�����ɴ��ɴ֯32*32', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ab270c0aa39742c6832744708733d870', '6a80321d51e44bee87faef9bacd80fa5', '103003000600', '��������ѵ��', 'jian', 'jian', 1, '����|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('eda4ed51f7484b5595e5daa0106a3188', '6a80321d51e44bee87faef9bacd80fa5', '103003000700', '˾������п�', 'jian', 'jian', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('86eb0dcc3c654822b5f5a9e3582b4337', '6a80321d51e44bee87faef9bacd80fa5', '103003000800', '˾���������', 'jian', 'jian', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('20caf2d26a034b7fbc669dbde4d5520c', '6a80321d51e44bee87faef9bacd80fa5', '103003000900', '˾���������', 'jian', 'jian', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('77f1656b7ccc4efaa612bf5448a8a27f', '6a80321d51e44bee87faef9bacd80fa5', '103003001000', '˾���Ŀ�', 'tiao', 'tiao', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('cd6d558634304a23980f645591633ab9', '9582ce691c674ed696d8d38ef7f5bc8d', '103004000100', '����Ա��ë�¿�', 'tao', 'tao', 1, '��ɫ��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4fcb7bc3149f4ae5958ea605ac679a4a', '9582ce691c674ed696d8d38ef7f5bc8d', '103004000200', '��ȫԱ��ë���Ŀ�', 'tao', 'tao', 1, '��ɫ��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6002fb53381f434a8dc35da5b83d8d54', '9582ce691c674ed696d8d38ef7f5bc8d', '103004000300', 'Ůʿ��ů����', 'tao', 'tao', 1, '70%��28%������ά2%����|ů����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('86d3401203a144169b3a485c43ea2448', '9582ce691c674ed696d8d38ef7f5bc8d', '103004000400', '��ʿ��ů����', 'tao', 'tao', 1, '70%��28%������ά2%����|ů����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4d7349a7678c43e7bad8cd5a95113ec0', '201df6ea9b2c4eb5b54c7681217134f3', '103005000100', '��ʿƤЬ', 'shaung', 'shaung', 1, '��СţƤ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bb45535388874e7b8d4abb0b107768b5', '201df6ea9b2c4eb5b54c7681217134f3', '103005000200', '����Ա�߸�Ь', 'shaung', 'shaung', 1, '����СţƤ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1a54316c8043445eb9cc9d20b6eb3012', '201df6ea9b2c4eb5b54c7681217134f3', '103005000300', '����Ա4��߸�', 'shaung', 'shaung', 1, '����СţƤ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('81056586251c49709051f51216d18bf7', '201df6ea9b2c4eb5b54c7681217134f3', '103005000400', '������Ա�ļ��ͱ�Ь', 'shaung', 'shaung', 1, 'Ƥ����ά', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8c49b8cd7f7544b1ad7feef42f8dbd79', '201df6ea9b2c4eb5b54c7681217134f3', '103005000500', '������Ա�����＾�ͱ�Ь', 'shaung', 'shaung', 1, 'Ƥ����ά', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('cda586a9107943b59d5b5d40a13bf55d', '201df6ea9b2c4eb5b54c7681217134f3', '103005000600', '������Ա������ƤЬ', 'shaung', 'shaung', 1, '��ˮţƤ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0bed3f9af787457eb22e0927949f673c', '43337013830744a1aba1f696d92832df', '105007005100', '����', 'shaung', 'shaung', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bb007dadd3504df0a4ac51d5c25bfb9b', '43337013830744a1aba1f696d92832df', '105007005200', '��ֽ', 'he', 'he', 1, '300��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9fa2e31be4424850a27c2964a493afea', '43337013830744a1aba1f696d92832df', '105007005300', '����Ĥ', 'juan', 'juan', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('62fee49776f9430e902621cd1e0cb409', '43337013830744a1aba1f696d92832df', '105007005400', '��ֽ', 'juan', 'juan', 1, '���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1cafcaadc98042fd8a3ac9cb6bbdadc1', '43337013830744a1aba1f696d92832df', '105007005500', '���Ӱ�', 'ge', 'ge', 1, '���ⱦ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('eb02c5128080485ead7d352adf890da0', '43337013830744a1aba1f696d92832df', '105007005600', '������', 'ba', 'ba', 1, '�Ӻ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('abfc11e394214ffbb6d77bd4e228659c', '43337013830744a1aba1f696d92832df', '105007005700', '����', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8f9cb92808c348b0828aca3a70ca8d0c', '43337013830744a1aba1f696d92832df', '105007005800', '������', 'ge', 'ge', 1, '1|2*10', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e27ec024011f4690b1939b51f56f2f7e', '43337013830744a1aba1f696d92832df', '105007005900', '������', 'ge', 'ge', 1, '1|2*15', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d307b477957046e2bb5159dde5ce25d3', '43337013830744a1aba1f696d92832df', '105007006000', '�����', 'ge', 'ge', 1, '2m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7e1a8217dfe64a338be520183658caaf', '43337013830744a1aba1f696d92832df', '105007006100', '����Ͱ', 'ge', 'ge', 1, '�Ų�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ccd75ede96224233b8d56cc337cd90e8', '43337013830744a1aba1f696d92832df', '105007006200', '����Ͱ', 'ge', 'ge', 1, '�к�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b5cd2761314745858fdcc290eea48e0d', '43337013830744a1aba1f696d92832df', '105007006300', '����Ͱ', 'ge', 'ge', 1, 'С��|���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('430b91cc3aa34928aad5b319feb5300e', '43337013830744a1aba1f696d92832df', '105007006400', '��ǩ��', 'ge', 'ge', 1, '������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f20eee32ead74227bc58a0c628f1da5b', '43337013830744a1aba1f696d92832df', '105007006500', '��ǩ', 'dai', 'dai', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ad7af59b421c4cad8c929dd54856d9ea', '43337013830744a1aba1f696d92832df', '105007006600', 'Χȹ', 'jian', 'jian', 1, '֯��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e9d9a0d2d33e48a9bc4d1d842d1b427b', '43337013830744a1aba1f696d92832df', '105007006700', '����', 'kuai', 'kuai', 1, '��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2cd12e9bea4b45c9b1cb5133d824e7ee', '43337013830744a1aba1f696d92832df', '105007006800', '̨��', 'kuai', 'kuai', 1, '1.3m|��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b805cc3ea3814c4a9e3debba76d31dc2', '43337013830744a1aba1f696d92832df', '105007006900', '̨��', 'kuai', 'kuai', 1, '1.6m|��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5dc9730db1a44d738f530e5498d644a4', '43337013830744a1aba1f696d92832df', '105007007000', '����', 'ge', 'ge', 1, '40*30*4.8cm|���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2b7ed7a582d24969979a77310273f0c1', '43337013830744a1aba1f696d92832df', '105007007100', '���͹�', 'zu', 'zu', 1, 'ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4381785027c84b14ac17a79780d07f11', '43337013830744a1aba1f696d92832df', '105007007200', '����', 'ba', 'ba', 1, '����|ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b1bd33dbbb914533abd45e71864999fc', '43337013830744a1aba1f696d92832df', '105007007300', '������ָʾ��', 'kuai', 'kuai', 1, '�ǿ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6054f43914f64cc0b4d57bc82c0096f5', '43337013830744a1aba1f696d92832df', '105007007400', '���ǹ', 'ba', 'ba', 1, '��ͨ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('aa8e07131c9e4b3793bbaeb601a7944c', '43337013830744a1aba1f696d92832df', '105007007500', '���ǹ', 'ba', 'ba', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('40527d9ffe024fbe831cf22b23d4c947', '43337013830744a1aba1f696d92832df', '105007007600', '��˿��', 'ge', 'ge', 1, '���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ffd047b0defc4edfbfecaea90d0cad80', '43337013830744a1aba1f696d92832df', '105007007700', '�ڲ�', 'kuai', 'kuai', 1, 'ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('296a0b66bedf49b2b82dfaeed722cd59', '43337013830744a1aba1f696d92832df', '105007007800', '����', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b11e7fa0d53c4e02a43f8f136f9ea6a3', '43337013830744a1aba1f696d92832df', '105007007900', '����', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('89d54a0ab863451b92ae6d79c0db12aa', '43337013830744a1aba1f696d92832df', '105007008000', '���ֹ�', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('78e51dc257924e8ab8b51e3a17531715', '43337013830744a1aba1f696d92832df', '105007008100', '����', 'ge', 'ge', 1, '�����ͼ�|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('257e155848cb4db481cbe76d30a0c037', '43337013830744a1aba1f696d92832df', '105007008200', '����', 'ge', 'ge', 1, 'ʳƷ��|�����|ȫԲ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e775f15c98ff4235957928668bffce17', '43337013830744a1aba1f696d92832df', '105007008300', '�˿�', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e75f3174b74b4b1d83f5ec95d1fcbc50', '43337013830744a1aba1f696d92832df', '105007008400', '�˿�', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c4fbd8222994449c94f5cc7803f24444', '43337013830744a1aba1f696d92832df', '105007008500', 'ζ��', 'ge', 'ge', 1, '16cm|�ǿ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('dec28f266c654da3849d003962689fb3', '43337013830744a1aba1f696d92832df', '105007008600', '�޴��붷', 'ge', 'ge', 1, '20cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6db00d3e0e4646d483e82ac4eafa984f', '43337013830744a1aba1f696d92832df', '105007008700', '�޴��붷', 'ge', 'ge', 1, '18cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5e57d2eff7414ed7afc0d20be4e3b517', '43337013830744a1aba1f696d92832df', '105007008800', '�޴��붷', 'ge', 'ge', 1, '16cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8926a13c2c80411394f0544ace309019', '43337013830744a1aba1f696d92832df', '105007008900', '�͹���', 'ge', 'ge', 1, '�޴żӺ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('79dc3ac881dc4f93a96761b352b1badc', '43337013830744a1aba1f696d92832df', '105007009000', '��Ͱ', 'ge', 'ge', 1, '40cm|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9fcf89cc1aeb407081a1eeb3efeb535d', '43337013830744a1aba1f696d92832df', '105007009100', '��Ͱ', 'ge', 'ge', 1, '35cm|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5689c1ad5be84dfebb8f43807b07343a', '43337013830744a1aba1f696d92832df', '105007009200', '��Ͱ', 'ge', 'ge', 1, '30cm|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('17fee3947a0040e88d050eeaf179ab12', '43337013830744a1aba1f696d92832df', '105007009300', '�ﶷ', 'ge', 'ge', 1, '24cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8dc2eb1da8a34114a5275ba06d8d1843', '43337013830744a1aba1f696d92832df', '105007009400', '����', 'ge', 'ge', 1, '36cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3dafe2e6ca8b474e8b4d69b8a1e03096', '43337013830744a1aba1f696d92832df', '105007009500', '����', 'ge', 'ge', 1, '50cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('127f9366c5954e1cb21682e564afbfda', '43337013830744a1aba1f696d92832df', '105007009600', '©��', 'ge', 'ge', 1, 'ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('defc41a7945149399ef3f3a326676ded', '43337013830744a1aba1f696d92832df', '105007009700', '����', 'ge', 'ge', 1, '�е�|ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('75027a3d186444998b6fb00b03d243be', '43337013830744a1aba1f696d92832df', '105007009800', '����', 'ge', 'ge', 1, 'Բ��|ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('44a889d8987d48968e0c5ad553722692', '43337013830744a1aba1f696d92832df', '105007009900', 'ζ��', 'ge', 'ge', 1, '�˸�|��ʽ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f8226765cc624f1788369454f2f40501', '43337013830744a1aba1f696d92832df', '105007010000', '��ɨ', 'ge', 'ge', 1, 'ϸ|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6187cfaaff514a4d8d7b4ec7830021fb', '43337013830744a1aba1f696d92832df', '105007010100', '��ƿ', 'ge', 'ge', 1, '1043|��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b25d318fcb034de0ae5d9002d3e4f728', '43337013830744a1aba1f696d92832df', '105007010200', '��ɸ', 'ge', 'ge', 1, '0030|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('29d92991de044327a7b2ac464f8f9dee', '43337013830744a1aba1f696d92832df', '105007010300', '��ɸ', 'ge', 'ge', 1, '0044|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ffe92f202b2142329cabd8fefd964e08', '43337013830744a1aba1f696d92832df', '105007010400', '��ɸ', 'ge', 'ge', 1, '0047|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3ea4bf93da7a425686d8293b32c2c089', '43337013830744a1aba1f696d92832df', '105007010500', '�߹�', 'ge', 'ge', 1, '5��|�غ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d79387dca7ea492987ae2a3aff9caa8c', '43337013830744a1aba1f696d92832df', '105007010600', '�˶�', 'kuai', 'kuai', 1, '15cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ce98526b468b4128bf1f493bc191777b', '43337013830744a1aba1f696d92832df', '105007010700', '��ǽ��', 'ge', 'ge', 1, '2780*320mm|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d076a2a51591485e86ffa7729e64e797', '43337013830744a1aba1f696d92832df', '105007010800', '��ǽ��', 'ge', 'ge', 1, '1100*320mm|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('728296e23f2c45da8f57291fca238031', '43337013830744a1aba1f696d92832df', '105007010900', '��ǽ��', 'ge', 'ge', 1, '2800*320mm|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0fa5c56ecc7e48c6b1bc97b888fa52a6', '43337013830744a1aba1f696d92832df', '105007011000', '��ǽ��', 'ge', 'ge', 1, '800*320mm|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f83d4fe156524017876a29ee0465f45c', '43337013830744a1aba1f696d92832df', '105007011100', '��ǽ��', 'ge', 'ge', 1, '1200*300*300|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5fd015742f85413db1d3a71fafe15ae1', '43337013830744a1aba1f696d92832df', '105007011200', '��ʳ̨', 'zu', 'zu', 1, '200*650*800*150mm|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7061973675f4442aa0da4b1afe0537ac', '43337013830744a1aba1f696d92832df', '105007011300', '����', 'ge', 'ge', 1, '520*660*1450mm|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fd3e089c6c304ca7ab70f4ed38091ef1', '43337013830744a1aba1f696d92832df', '105007011400', '��ʿ¯', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0ec2e5549f5849b7ad657257efbd65c0', '43337013830744a1aba1f696d92832df', '105007011500', '��Ƥ��', 'ba', 'ba', 1, 'ľ�Ҹ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fc205ad02fb5412589a6cb7639bbf138', '43337013830744a1aba1f696d92832df', '105007011600', '��ˢ', 'ba', 'ba', 1, '����', 'ʹ��', null);
commit;
prompt 100 records committed...
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e7069cf6e805409cb838655577396eb9', '43337013830744a1aba1f696d92832df', '105007011700', '��Ͱ', 'ge', 'ge', 1, '40cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a5a82869100f463d81a956803d11418d', '43337013830744a1aba1f696d92832df', '105007011800', '��Ͱ', 'ge', 'ge', 1, '20cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9aba8066f2b841f9ba9ab9e96abf4dcc', '43337013830744a1aba1f696d92832df', '105007011900', '�ּ�', 'ge', 'ge', 1, 'ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1b37af85d3fc40aa9400dc530e1101d8', '43337013830744a1aba1f696d92832df', '105007012000', '���ӿ˳�', 'ge', 'ge', 1, '���ӿ˳�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6258b94a759f4aa5b6615e2b24af2c03', '43337013830744a1aba1f696d92832df', '105007012100', '�嵰Ȧ', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4b997bed58f44537aac52e1f9a18372d', '43337013830744a1aba1f696d92832df', '105007012200', '�ǰ�', 'ge', 'ge', 1, 'ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('01e950f1aa6d499db600d77ff81d3d00', '2833b78c78f1479ab58017696af54f5c', '103006000100', '�վ���ʽƤ��', 'tao', 'tao', 1, 'ɽ��Ƥ��400g/�O��ë��Ƭ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8fa0a313a8a4424393f0fc64d7b8a3ae', 'ffc2fdd7dd57493cb1fc30f80710002a', '103007000100', '������', 'ge', 'ge', 1, '45*21*37|����1680D��������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('99f72bd48013404eacb02c01ac043cb6', 'ffc2fdd7dd57493cb1fc30f80710002a', '103007000200', '��װ��', 'ge', 'ge', 1, '59*9*48|����1680D��������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('17be9b67fd854830b66e5ed8a26cb22b', 'ffc2fdd7dd57493cb1fc30f80710002a', '103007000300', '����ԱС���', 'ge', 'ge', 1, '����1680D��������|35*10*21', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c18d7cbf1b07487aabe95b5d26085a96', 'b0f0a955b1944e52a124fa02b9d58438', '103008000100', '����Ա���޷�', 'jian', 'jian', 1, '�¼��临�ϲ���90%Ѽ�ޣ���ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2f6b39c59f864485a230e55991c0fdb6', 'b0f0a955b1944e52a124fa02b9d58438', '103008000200', '��ȫԱ����', 'jian', 'jian', 1, '���ڷ�ˮͿ�����ϡ��Ű�3M��240��/ m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('cfc1f94b7df04aea8e15373e2fd784a8', 'fec43e5f057c40b7a8d3a221af226b2b', '103010000100', '������Ա����ñ', 'ge', 'ge', 1, '60%�ޡ�40%����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('43b1dae82f3148c9a153d4b5d8a6026f', 'fec43e5f057c40b7a8d3a221af226b2b', '103010000200', '������Ա��������', 'fu', 'fu', 1, 'ţ�򲼡�ɺ���ޡ�Ƥ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3cbd45d2b37c49fd87453041ec48e6c7', 'bcca95cae9d44fbe8d56f7eef9980c6e', '103011000100', '��ȫԱ�����', 'jian', 'jian', 1, '������ά|ʢ�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1ddc04477c4e4887a5a49b98040ec523', '73bd5225ed874901912a58f615a1ba0b', '103013000100', '��ʿƤ��', 'tiao', 'tiao', 1, '��ɫƤ��', 'ʹ��', '����Ա����ȫԱ');
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1d2b85e9708942659f0395e324aad755', '73bd5225ed874901912a58f615a1ba0b', '103013000200', '��ʿƤ����', 'fu', 'fu', 1, '��ɫ��Ƥ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6f8a4996c2844fef8e1ab4ef928934e3', '73bd5225ed874901912a58f615a1ba0b', '103013000300', 'ŮʿƤ����', 'fu', 'fu', 1, '��ɫ��Ƥ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1c5c0a2104bd4d498a6d8fb90a2145ba', '73bd5225ed874901912a58f615a1ba0b', '103013000400', 'Ƥ��', 'tiao', 'tiao', 1, '��ɫ������Ƥ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('73cc7be7a5704be98469c70fa173b614', '73bd5225ed874901912a58f615a1ba0b', '103013000500', 'Ƥ��', 'tiao', 'tiao', 1, '��ɫ������Ƥ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('21ed5e40072742cc8070e787944a9f20', 'a73c71fb75454ef6a326383e18a82c78', '103014000100', 'ñ��', 'ding', 'ding', 1, '100%��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8a2cbf58a89b4df3b9449e86d831ecae', 'a73c71fb75454ef6a326383e18a82c78', '103014000200', '˿��', 'tiao', 'tiao', 1, '100%��˿', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d54dc385a56a4666b5c585ca62863d4d', 'a73c71fb75454ef6a326383e18a82c78', '103014000300', '��������', 'tiao', 'tiao', 1, '���Ͻ�ۡ�ȫ�ޱ�֯', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('30874286a2a24365a64aa1f5ececcaaa', 'a73c71fb75454ef6a326383e18a82c78', '103014000400', '��ɫ�ż�͸����о˿��о��ӵ�������', 'tiao', 'tiao', 1, '8729|���ڡ�����|��ɯ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f532fe7874214340b639014b64845797', 'a73c71fb75454ef6a326383e18a82c78', '103014000500', '��ɫ����޶���', 'tiao', 'tiao', 1, '2202|���ڡ�����|��ɯ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c83e4f8c21aa40d8a7adfe986d473223', 'a73c71fb75454ef6a326383e18a82c78', '103014000600', '��ɫ����������ࣨ800D��', 'tiao', 'tiao', 1, 'AX6987|���ڡ�����|��ɯ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ea65d13f572e4200a4f2bfc8c6b27f9a', 'a73c71fb75454ef6a326383e18a82c78', '103014000700', '��ɫ12000D��ů�ӵ�������', 'tiao', 'tiao', 1, '80430-1|������ά�����ڡ�����|��ɯ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8ba6a05b496441dc8cdc6b253a0171a4', 'a73c71fb75454ef6a326383e18a82c78', '103014000800', '109��ɫ���ſս����˿��о��ӵ�������', 'tiao', 'tiao', 1, 'Ax6848|���ڡ�����|��ɯ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('49d4a850c8324770bfe5b86287933bda', 'a73c71fb75454ef6a326383e18a82c78', '103014000900', '���120d����޿�ڶ���', 'tiao', 'tiao', 1, 'Ax2035|���ڡ�����|��ɯ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3927ae53b33e4d38b58c461d711eac01', 'a73c71fb75454ef6a326383e18a82c78', '103014001000', '��ȫԱ����', 'ge', 'ge', 1, '����֯����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1a99dd697da24a25a66c5e51dc3bbacc', 'a73c71fb75454ef6a326383e18a82c78', '103014001100', '��ȫԱ��������', 'ge', 'ge', 1, '����֯����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('47291344a29c4cc88e243651731a50ed', 'a73c71fb75454ef6a326383e18a82c78', '103014001200', '��ȫԱ�ػ�', 'ge', 'ge', 1, '�����廨', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a63ff42d443a464680c8ee7387b2d405', 'a73c71fb75454ef6a326383e18a82c78', '103014001300', '��ȫԱ����', 'ge', 'ge', 1, '�����廨', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('233be592fd154f36b0b05094a5f45c34', 'a73c71fb75454ef6a326383e18a82c78', '103014001400', '��ȫԱ��������', 'ge', 'ge', 1, '�����廨', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4c6e52189d644643bb6e1549b04b01af', 'a73c71fb75454ef6a326383e18a82c78', '103014001500', '������', 'ge', 'ge', 1, '�����ƽ𡢼�����', 'ʹ��', '����Ա�����а�ȫԱ������Ա');
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7b352cb10238491db4d1a80feabd315e', 'a73c71fb75454ef6a326383e18a82c78', '103014001600', '�ػ�', 'ge', 'ge', 1, '�����ƽ�', 'ʹ��', '����Ա');
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d961df72b75b403993c4dfb347ab77a8', 'a73c71fb75454ef6a326383e18a82c78', '103014001700', '�ػ�', 'ge', 'ge', 1, '�����ƽ�', 'ʹ��', '���а�ȫԱ������Ա');
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('23710343ac10487fb1077f7a2b43d6cc', 'a73c71fb75454ef6a326383e18a82c78', '103014001800', 'ñ��', 'ge', 'ge', 1, '�����ƽ�', 'ʹ��', '����Ա�����а�ȫԱ������Ա');
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('478f6900e7ba4ad18990f54fee9dae6e', 'a73c71fb75454ef6a326383e18a82c78', '103014001900', '����Ա�����', 'ge', 'ge', 1, '�Ͻ�', 'ʹ��', '����Ա�Ʒ����¿���');
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('33a7b3699f5c4614a61e977546bfdf65', 'a73c71fb75454ef6a326383e18a82c78', '103014002000', '����Ա�����', 'ge', 'ge', 1, '�Ͻ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2bc27d699ba94d5d9926d8227a9c7ddd', 'a73c71fb75454ef6a326383e18a82c78', '103014002100', '�ͱ�����', 'jian', 'jian', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('04a7fc3d8cbb411e8d206667d8d635b4', 'a73c71fb75454ef6a326383e18a82c78', '103014002200', '�ͱ���Ь', 'shaung', 'shaung', 1, '��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('995feb280c3a43c5b2a9d0edd75697db', 'a73c71fb75454ef6a326383e18a82c78', '103014002300', '����ñ', 'ge', 'ge', 1, 'ñ�ܴ��塢��ɫ�ӿ�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fcf984f41ae4448f9ad9123efce44cb5', 'f2199528239a40d68c976d63b0a6383d', '104001000100', '1.2�״�����', 'tiao', 'tiao', 1, '200*280|ȫ�޹���60s*40s', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('080470e2f08a492e833807dbb719d033', 'f2199528239a40d68c976d63b0a6383d', '104001000200', '1.2�״�����', 'tiao', 'tiao', 1, '200*280|ȫ��40s*40s', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8efc4b4756f84335be0e1fd017e50da1', 'f2199528239a40d68c976d63b0a6383d', '104001000300', '1.5�״�����', 'tiao', 'tiao', 1, '230*280|ȫ�޹���60s*40s', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7ea37bc29aa34fbc92d4ea220b320db4', 'f2199528239a40d68c976d63b0a6383d', '104001000400', '1.2�״�����', 'tiao', 'tiao', 1, '180*240|ȫ�������Ứ60s*40s', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('02a312f46f2948a3bb44f4967dd30bc4', 'f2199528239a40d68c976d63b0a6383d', '104001000500', '1.2�״�����', 'tiao', 'tiao', 1, '180*240|ȫ��40s*40s', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('90747a60d67b44869352b00c0cddd194', 'f2199528239a40d68c976d63b0a6383d', '104001000600', '1.5�״�����', 'tiao', 'tiao', 1, '210*240|ȫ�������Ứ60s*40s', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('03847f9f235241f18134c6d8baaea4f1', 'f2199528239a40d68c976d63b0a6383d', '104001000700', '1.2�״��ޱ�о', 'tiao', 'tiao', 1, '160*220|ȫ�޷���40s*40s��300gÿƽ����˿��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a4d93ffdecea4ca98c4742ff694ba394', 'f2199528239a40d68c976d63b0a6383d', '104001000800', '1.2�״��ޱ�о', 'tiao', 'tiao', 1, '160*220|����45s��300gÿƽ����˿��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('48e5fa37dd6b4241b76b236969a68ccb', 'f2199528239a40d68c976d63b0a6383d', '104001000900', '1.5�״��ޱ�о', 'tiao', 'tiao', 1, '190*220ȫ�޷���40s*40s��300gÿƽ����˿��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b561de2b75c34116872d6bdea0c4ed36', 'f2199528239a40d68c976d63b0a6383d', '104001001000', '����', 'ge', 'ge', 1, '60*90|ȫ�������Ứ60s*40s', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('97ef3c202e2b46338c93e945a29ed8bc', 'f2199528239a40d68c976d63b0a6383d', '104001001100', '����', 'ge', 'ge', 1, '60*90|ȫ��40s*40s', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4e10136e560547809836129612fb76fa', 'f2199528239a40d68c976d63b0a6383d', '104001001200', '��о', 'ge', 'ge', 1, '48*75|һ������һ����˿��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c4e8d1b4c068479689454d8707ae08f6', 'f2199528239a40d68c976d63b0a6383d', '104001001300', '��о', 'ge', 'ge', 1, '48*75|ȫ�޷���40s��1100g��˿��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c2dac8390de745b7a99d6e2698b2d57c', 'f2199528239a40d68c976d63b0a6383d', '104001001400', '��о', 'ge', 'ge', 1, '48*75|����45s��1100g��˿��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2ed54a7742dd43019cac650c147be105', 'f2199528239a40d68c976d63b0a6383d', '104001001500', '1.2�����ʵ�', 'ge', 'ge', 1, '120*200|ˮϴ��600gÿƽ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('95ef97dac3014616a6fa4145d1964201', 'f2199528239a40d68c976d63b0a6383d', '104001001600', '1.2�����ʵ�', 'ge', 'ge', 1, '120*200|ˮϴ��300gÿƽ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5e11f368ba98447d8376133f682386f1', 'f2199528239a40d68c976d63b0a6383d', '104001001700', '1.2�׷�����', 'ge', 'ge', 1, '120*200|ˮϴ��140gÿƽ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7eb5353c03214737ba503b3070483eea', 'f2199528239a40d68c976d63b0a6383d', '104001001800', '1.5�����ʵ�', 'ge', 'ge', 1, '150*200|ˮϴ��600gÿƽ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f0b303e510bd42878096240b6967fca5', 'f2199528239a40d68c976d63b0a6383d', '104001001900', '1.5�����ʵ�', 'ge', 'ge', 1, '150*200|ˮϴ��300gÿƽ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('75774f350b654bbab71f992d8bd7acb2', 'f2199528239a40d68c976d63b0a6383d', '104001002000', '1.5�׷�����', 'ge', 'ge', 1, '150*200|ˮϴ��140gÿƽ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e573d34c69754bf0963b8d399dfdb637', 'f2199528239a40d68c976d63b0a6383d', '104001002100', 'ë��', 'tiao', 'tiao', 1, '40*75|160gȫ��������ëȦ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('09468969ad774b9bbe4a975cf182cb7d', 'f2199528239a40d68c976d63b0a6383d', '104001002200', 'ԡ��', 'tiao', 'tiao', 1, '70*130|500gȫ��������ëȦ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('36697c538d25487db8422ee98543516b', '6867d185a1664828887012afbd4c02ab', '105001000100', '������', 'ba', 'ba', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3bd06312de9941758320666cb5b5e654', '6867d185a1664828887012afbd4c02ab', '105001000200', '�칫��', 'ba', 'ba', 1, '590*590*860mm|֯��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3ec2e26dffc34f80a1ef57b2c7c61fa5', '6867d185a1664828887012afbd4c02ab', '105001000300', '�칫��', 'ba', 'ba', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('59f21d1ef6244dcc8f8091ebd496e5d2', '6867d185a1664828887012afbd4c02ab', '105001000400', '�칫��', 'ba', 'ba', 1, '�۵�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5dcd368da8f84c07821e9efb16d20efd', '6867d185a1664828887012afbd4c02ab', '105001000500', '����', 'ba', 'ba', 1, '700*590*950mm|Ƥ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('457644112b0546c8be9f787c6775d435', '6867d185a1664828887012afbd4c02ab', '105001000600', '����', 'ba', 'ba', 1, '700*590*1135mm|Ƥ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b7a2aa72497c4123808ea6074862dac1', '6867d185a1664828887012afbd4c02ab', '105001000700', '����', 'ba', 'ba', 1, '670*560*1170mm|Ƥ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a19742612bdd44848cdffd5fbc97d926', '6867d185a1664828887012afbd4c02ab', '105001000800', '����', 'ba', 'ba', 1, 'Ƥ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c9d145d69025416c95cd702c1b5b4551', '6867d185a1664828887012afbd4c02ab', '105001000900', '������', 'ba', 'ba', 1, '580*520*970|����Ƥ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('68628912c3764be89e34402f05094aba', '6867d185a1664828887012afbd4c02ab', '105001001000', '������', 'ba', 'ba', 1, '630*635*830|Ƥ��|������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8e37d53080a24bcf85fa5007304451a9', '6867d185a1664828887012afbd4c02ab', '105001001100', '������', 'ba', 'ba', 1, '560*540*930|Ƥ��|', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8d8f8d9395e8429da7de2849d0ef145d', '6867d185a1664828887012afbd4c02ab', '105001001200', '������', 'ba', 'ba', 1, '550*570*770mm|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4295063a14224371a78a0f962e598f5f', '6867d185a1664828887012afbd4c02ab', '105001001300', 'Ǣ̸��', 'ba', 'ba', 1, '560*620*870mm|������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('022b5daf8f6244c2a5c88097cc4c7f4a', '6867d185a1664828887012afbd4c02ab', '105001001400', '����', 'ba', 'ba', 1, '��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2db33cf1cc424b119ba43279f5b59569', '6867d185a1664828887012afbd4c02ab', '105001001500', '����', 'ba', 'ba', 1, 'ţ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fe4825fffc2e40a4bf56146183198a36', '6867d185a1664828887012afbd4c02ab', '105001001600', '����', 'ba', 'ba', 1, '520*500*1020mm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4c10a260367545e9b0301023fc42af74', '6867d185a1664828887012afbd4c02ab', '105001001700', '������', 'ba', 'ba', 1, '600*700*660', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b9ff04152569430bb3c79f4f7683f757', '6867d185a1664828887012afbd4c02ab', '105001001800', '������', 'tao', 'tao', 1, '�ٱ�|2��һ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7e3558ee0fc64303a9a1aaad3a80fd78', '6867d185a1664828887012afbd4c02ab', '105001001900', '��̨', 'zhang', 'zhang', 1, '1.8m|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7a7911555e584edea3af65fa13037382', '6867d185a1664828887012afbd4c02ab', '105001002000', '��̨', 'zhang', 'zhang', 1, '1.6m|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e6ab4dbe2ae54bbc8e0290f16d1a1850', '6867d185a1664828887012afbd4c02ab', '105001002100', '��̨', 'zhang', 'zhang', 1, '2.8m|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6566afdec13c450ab63b57bd38148bd5', '6867d185a1664828887012afbd4c02ab', '105001002200', '��̨', 'zhang', 'zhang', 1, '2.4m|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d8b3b278a4464174bc02700aca76c595', '6867d185a1664828887012afbd4c02ab', '105001002300', '��̨', 'zhang', 'zhang', 1, '2m|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a50437abbcdb4a45a8f8e2b3e19f7001', '6867d185a1664828887012afbd4c02ab', '105001002400', '��̨', 'zhang', 'zhang', 1, '1.8m|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4282c89769b04af68320a9efe36bf5b4', '6867d185a1664828887012afbd4c02ab', '105001002500', '��̨', 'zhang', 'zhang', 1, '1.5m|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c939d2af41654015a78e6ca279db429c', '6867d185a1664828887012afbd4c02ab', '105001002600', '�칫��', 'zhang', 'zhang', 1, '3.6*1.2m|6��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f1128c14c5024a809c5f5d8c5cb95e1a', '6867d185a1664828887012afbd4c02ab', '105001002700', '�칫��', 'zhang', 'zhang', 1, '1.8*0.8', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a51def272dfe456fa4aacd7093e253e3', '6867d185a1664828887012afbd4c02ab', '105001002800', '��λ', 'zu', 'zu', 1, '1m*0.6m*1.2m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a7775bf2ca574fa6897218a3b20d9b12', '6867d185a1664828887012afbd4c02ab', '105001002900', '��λ', 'zu', 'zu', 1, '1.4*1.2m|L��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('78128f2c71f5436d978328a226efce19', '6867d185a1664828887012afbd4c02ab', '105001003000', '��λ', 'zu', 'zu', 1, '1.4*1.4m|L��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fd2003616c1443bca1367fcb8d0b8a56', '6867d185a1664828887012afbd4c02ab', '105001003100', '��λ', 'zu', 'zu', 1, '1.4*2.8m|L��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('87859a302ba94627bd23d1ad8acfb750', '6867d185a1664828887012afbd4c02ab', '105001003200', '������', 'zhang', 'zhang', 1, '2400*1200*750|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('be11c47ed81e43099f1d14c3d3a49ab4', '6867d185a1664828887012afbd4c02ab', '105001003300', '������', 'zhang', 'zhang', 1, '2000*900*750|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('20c49957e8484ebaaba9f774bb2e2a99', '6867d185a1664828887012afbd4c02ab', '105001003400', '������', 'zhang', 'zhang', 1, '1800*900*750|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('53e739ce6f6744ed878fa10b5b4b6853', '6867d185a1664828887012afbd4c02ab', '105001003500', '������', 'zhang', 'zhang', 1, '4500*1600*750|ʵľ', 'ʹ��', null);
commit;
prompt 200 records committed...
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('387d1fa8e93a469e9b93f69d8b7ec177', '6867d185a1664828887012afbd4c02ab', '105001003600', '������', 'zhang', 'zhang', 1, '4800*2000*750|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d9dd9698542744ce9bb6a911041f856f', '6867d185a1664828887012afbd4c02ab', '105001003700', '������', 'zhang', 'zhang', 1, '240cm*120cm*75cm|���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9600f0cf85a34013b0adad9e4001e6bb', '6867d185a1664828887012afbd4c02ab', '105001003800', '��ѵ��', 'zhang', 'zhang', 1, '1200*600cm|��ľ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('31d45517191b4423a7c3bc27f62e3d70', '6867d185a1664828887012afbd4c02ab', '105001003900', 'Ǣ̸��', 'zhang', 'zhang', 1, 'ֱ��800*745mm|��ľ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0fd69ac152644433a51bd0dc0a16814a', '6867d185a1664828887012afbd4c02ab', '105001004000', '����', 'zhang', 'zhang', 1, '1800*600*750mm|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c4692f931a0644fe93209b823ac2f7be', '6867d185a1664828887012afbd4c02ab', '105001004100', '����', 'zhang', 'zhang', 1, 'ֱ��1.6m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1abac2d0731b40308b2bd8bd8921cfd4', '6867d185a1664828887012afbd4c02ab', '105001004200', '����', 'zhang', 'zhang', 1, 'ֱ��1m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3e02737c075f4fb08b25b9b9e77d1e13', '6867d185a1664828887012afbd4c02ab', '105001004300', '����', 'zhang', 'zhang', 1, 'ֱ��1.8m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0b41b063b1784079b7de49ad1c59a721', '6867d185a1664828887012afbd4c02ab', '105001004400', '����', 'zhang', 'zhang', 1, '1500*750', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('966ce240a59d446da695afc96a16d7bc', '6867d185a1664828887012afbd4c02ab', '105001004500', '����', 'zhang', 'zhang', 1, '1200*600*750', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('090600e0422740fdba2cbe8333eed520', '6867d185a1664828887012afbd4c02ab', '105001004600', '����ת��', 'ge', 'ge', 1, '0.9m|10mm�ֻ�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('84202147a73a4479a07f546283c4ecce', '797ce8bb11074b4fbfa8f9ae4404b887', '105002000100', '���´�', 'zhang', 'zhang', 1, '����|200*90*175cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('eac39461ea4f45c4aba3e8b01f47f9c3', '797ce8bb11074b4fbfa8f9ae4404b887', '105002000200', '���´�', 'zhang', 'zhang', 1, 'ľ��|200*120*175cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9310bc989b4342348811dd7d9e40afc7', '797ce8bb11074b4fbfa8f9ae4404b887', '105002000300', '���˴�', 'zhang', 'zhang', 1, '1.2m*2m|ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2d70bfc6779a43f59145b72140c99ef9', '797ce8bb11074b4fbfa8f9ae4404b887', '105002000400', 'ɳ��', 'zu', 'zu', 1, '2200*880*1250|����|PUƤ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1a55886defd049209fa34fb20d3672b6', '797ce8bb11074b4fbfa8f9ae4404b887', '105002000500', 'ɳ��', 'zu', 'zu', 1, '1740*840*780|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('730e71f97cb64718a12dbf7913e5eb08', '797ce8bb11074b4fbfa8f9ae4404b887', '105002000600', 'ɳ��', 'zu', 'zu', 1, '180*85*80cm|����|PUƤ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('45007b39048d4cb19a060ffdd3b2215a', '797ce8bb11074b4fbfa8f9ae4404b887', '105002000700', 'ɳ��', 'zu', 'zu', 1, '1650*720*770|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b5af4bb4c0264a2e843a343bbfc83ec8', '797ce8bb11074b4fbfa8f9ae4404b887', '105002000800', 'ɳ��', 'zu', 'zu', 1, '˫��|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b6fcbd672aaf4e7bbf994b6a6e2114df', '797ce8bb11074b4fbfa8f9ae4404b887', '105002000900', 'ɳ��', 'zu', 'zu', 1, '790*840*780|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d6cabba5f3514b4992e037fd6be74bcd', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003000100', 'Ь��', 'zu', 'zu', 1, '2.6m*1.2m*0.4m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5ad6025b10bd48f0a8457c20824e20c5', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003000200', 'Ь��', 'zu', 'zu', 1, '185*90*40cm|', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0ca6e947eb75452d9756c030828645d6', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003000300', '���', 'zu', 'zu', 1, '4500*450*2200mm|ʵľ|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6e38654da20b433b87baa99d4ba66b03', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003000400', '���', 'zu', 'zu', 1, '2*1.2*0.4m|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('394768de3e8d48aebc905fb8c1995dc4', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003000500', '���', 'zu', 'zu', 1, '120*35*90cm|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ef2c53089bc14835bab9fc0fc7fc347b', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003000600', '���', 'zu', 'zu', 1, '80*35*90cm|˫��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('dceaf9ec19a14e22a2f797aa68830620', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003000700', '�ļ���', 'zu', 'zu', 1, '2000*470*2030|ʵľ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('02c3a7bcc1654684b3fe795144ac1589', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003000800', '�ļ���', 'zu', 'zu', 1, '˫��|185*90*40cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8930ef3990454835985d23ec2629c5fc', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003000900', '�ļ���', 'zu', 'zu', 1, '185*90*40cm|�ϲ�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('174195ea0683490eae38bfcfd6ab239e', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003001000', '�ļ���', 'zu', 'zu', 1, '185cm*90cm*40cm|�����|ͨ�岣����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1103ca086d074c79ac033d2e75d63676', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003001100', '�ļ���', 'zu', 'zu', 1, '2500mm*900mm*560mm|��ҡ�ܼ���|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d9e7a1afd6594f1896a31221e510c0ab', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003001200', '�ļ���', 'zu', 'zu', 1, '408*520*600mm|�ƹ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6a12dca5f2e7445da99d4289ccd50431', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003001300', '���¹�', 'zu', 'zu', 1, '185*90*40cm|˫��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3cb8ea5bb68c4fbcaa93236d7438986a', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003001400', '���¹�', 'zu', 'zu', 1, '185*90*40cm|4��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d70e356cdc6c4a6a937c00bf73371688', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003001500', 'չʾ��', 'zu', 'zu', 1, '2m*1.2m*0.3m|ͨ�岣��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('61a3445ab1b94e7999c26af224efb6fd', '889d4603d1e04ffaa7d2dd2d3d9b776c', '105003001600', 'չʾ��', 'zu', 'zu', 1, '850*390*1850mm|��־��|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7045a7f980904edd8c2f119d3f1577eb', 'c35a2b3d2d1b4ef4ac29b78087167214', '105004000100', '���', 'ge', 'ge', 1, '93mm|�ɰ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('410e6328f54142ca9138366bc86f9388', 'c35a2b3d2d1b4ef4ac29b78087167214', '105004000200', '��������', 'ge', 'ge', 1, '71*31.5cm|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9764edb36f1f4f3ca192205e0b7f9220', 'c35a2b3d2d1b4ef4ac29b78087167214', '105004000300', '�����', 'ge', 'ge', 1, '�ڹ�ʽ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7faa2d75e8ea4a1d811c20d0663f6092', '702fa7af9ff04de89c554ff8fe55a523', '105005000100', '˫������', 'zu', 'zu', 1, '1500*850*800mm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fdd2cb7264e8482a9bc4626a25125eae', '702fa7af9ff04de89c554ff8fe55a523', '105005000200', '���̾���һ���', 'zu', 'zu', 1, '1500*1350*800mm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5f759153d11e457aaad3d02612de2356', '702fa7af9ff04de89c554ff8fe55a523', '105005000300', '���̾���һ���', 'zu', 'zu', 1, '2400*1350*800mm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e5d99d9c2af8480fb680fe2a8d258fa9', '702fa7af9ff04de89c554ff8fe55a523', '105005000400', '����̨', 'zu', 'zu', 1, '1800*750*800|ƽ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f7af5505244e45dc892a1a72ca3c981d', '702fa7af9ff04de89c554ff8fe55a523', '105005000500', '����̨', 'zu', 'zu', 1, '1000*90*80|˫��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('00d03ae6dabf44588b1a1aa9e36ec58d', '702fa7af9ff04de89c554ff8fe55a523', '105005000600', '����̨', 'zu', 'zu', 1, '1800*800*800|˫ͨ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2eb2533f59d04572998688cb2701eb0e', '702fa7af9ff04de89c554ff8fe55a523', '105005000700', '����̨', 'zu', 'zu', 1, '2400*800*800|˫ͨ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('445fef0568db4b49a5c0aa787095c27b', '702fa7af9ff04de89c554ff8fe55a523', '105005000800', '����̨', 'zu', 'zu', 1, '1300*800*800|˫��ƽ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0445c081dca749eaa02de89e49dbd959', '702fa7af9ff04de89c554ff8fe55a523', '105005000900', '����̨', 'zu', 'zu', 1, '1200*500*800mm|˫��ƽ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e848e3a70fdc47bfb0336401ce3baae3', '702fa7af9ff04de89c554ff8fe55a523', '105005001000', '����̨', 'zu', 'zu', 1, '1600*800*800|ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('957e1bceed2b4d44b7aa1af8f48fd8c6', '702fa7af9ff04de89c554ff8fe55a523', '105005001100', '���Ǵ���̨', 'zu', 'zu', 1, '1200*600*800', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('537c5453dde744409dd6d564c71aacbc', '702fa7af9ff04de89c554ff8fe55a523', '105005001200', '����', 'zu', 'zu', 1, '1800*300*600|̨��˫��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('72b96b87788c4664898dba41cbef7494', '702fa7af9ff04de89c554ff8fe55a523', '105005001300', '����', 'zu', 'zu', 1, '1200*500*1560|�Ĳ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('71ab6b7d975149d4a9f170c4f9219cd6', '702fa7af9ff04de89c554ff8fe55a523', '105005001400', '����', 'zu', 'zu', 1, '1600*500*1800|���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ee767c062fe747e39e7b4a642a6495d2', '702fa7af9ff04de89c554ff8fe55a523', '105005001500', '����', 'zu', 'zu', 1, '890*350*1560|�Ĳ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('21fdc5901185490399979953007a3d79', '702fa7af9ff04de89c554ff8fe55a523', '105005001600', '����', 'zu', 'zu', 1, '890*350*1560|�Ĳ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b468968677464e41910157b5af9f6d82', '702fa7af9ff04de89c554ff8fe55a523', '105005001700', '����', 'zu', 'zu', 1, '1200*500*1560|�Ĳ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bc9a0c40e95346f5a65e374a5a67db03', '702fa7af9ff04de89c554ff8fe55a523', '105005001800', 'L��ƽ̨', 'zu', 'zu', 1, '460*560+330*250*800mm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a6b28778bcd3469db437c252e75b6138', '702fa7af9ff04de89c554ff8fe55a523', '105005001900', 'ˮ��', 'zu', 'zu', 1, '1000*600*800mm|˫��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1eb8a601898240538c0b92fa71803dfc', '702fa7af9ff04de89c554ff8fe55a523', '105005002000', 'ˮ��', 'zu', 'zu', 1, '1200*600*800mm|˫��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4a7617d275944f48bc7061617aa5c6b3', '702fa7af9ff04de89c554ff8fe55a523', '105005002100', 'ˮ��', 'zu', 'zu', 1, '1800*600*800|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('647e8ff1a44141b88473750e078b688c', '702fa7af9ff04de89c554ff8fe55a523', '105005002200', '����¯', 'zu', 'zu', 1, '1000*1000*800mm|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d01307a418384c0caac9e2c1117e2f04', '702fa7af9ff04de89c554ff8fe55a523', '105005002300', '����¯', 'zu', 'zu', 1, '600*700*500|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('20eb149e326f4c61a61a59a9db37df45', '702fa7af9ff04de89c554ff8fe55a523', '105005002400', '������', 'zu', 'zu', 1, '����|ȼ��|12��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('023ead47647644ca8612bf4699f6fc0e', '702fa7af9ff04de89c554ff8fe55a523', '105005002500', '������', 'zu', 'zu', 1, '˫��|��|12��|2.4KW', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4971886ce1e44bbb9476cea5b1912608', '702fa7af9ff04de89c554ff8fe55a523', '105005002600', '�翾��', 'zu', 'zu', 1, 'һ��һ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d2494b954ec142f59a7d7a9e01d655ff', '702fa7af9ff04de89c554ff8fe55a523', '105005002700', '�����', 'zu', 'zu', 1, '̨ʽ|2.5KW', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a3021734dbab450bbe72a1171b2d4bbd', '702fa7af9ff04de89c554ff8fe55a523', '105005002800', '����', 'zu', 'zu', 1, '1.5����|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('56bff54d81ff4b3fa393c66477cb7bb7', '702fa7af9ff04de89c554ff8fe55a523', '105005002900', '���', 'zu', 'zu', 1, '1200*500*1560|����|', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('12d4c2beddbc4523a8c3a907d406b456', '702fa7af9ff04de89c554ff8fe55a523', '105005003000', '������', 'zu', 'zu', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ae5dc091db6d46baab0ef6270ea9816a', '702fa7af9ff04de89c554ff8fe55a523', '105005003100', '��˹�', 'zu', 'zu', 1, 'DC-18WZ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6a8d0e077f214fdf8b942f853818a47f', '702fa7af9ff04de89c554ff8fe55a523', '105005003200', 'ѹ���', 'tai', 'tai', 1, '60��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('176034673dc1465485cac41089fb7f23', '702fa7af9ff04de89c554ff8fe55a523', '105005003300', '�����', 'tai', 'tai', 1, '25kg', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4f5da84b9a6a47d481e4851df6575807', '702fa7af9ff04de89c554ff8fe55a523', '105005003400', '��۳�', 'liang', 'liang', 1, '500*500*550', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fb03e0216057471ebdedc0589ae9ea17', '702fa7af9ff04de89c554ff8fe55a523', '105005003500', '�����', 'tai', 'tai', 1, 'JQJ-22', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7baf47061da74aacbe9ad3fe6648a5de', '702fa7af9ff04de89c554ff8fe55a523', '105005003600', '�򵰻�', 'tai', 'tai', 1, 'B20', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('23cd1da4dcb94ed39b54484f3e094e13', '702fa7af9ff04de89c554ff8fe55a523', '105005003700', '����ը��', 'tai', 'tai', 1, '���Ͷ๦�ܹ�|HD9220|20', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('48f036601c1d41dd9e4e3cdac0d61618', '702fa7af9ff04de89c554ff8fe55a523', '105005003800', '��֭��', 'tai', 'tai', 1, '˫ͷ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3aec51ce52074e4fb55c3ea29be69f29', '702fa7af9ff04de89c554ff8fe55a523', '105005003900', '�����', 'tai', 'tai', 1, '������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('51ad2c4e4f31424b8a4df436e7a02c36', '702fa7af9ff04de89c554ff8fe55a523', '105005004000', '��ˮ��', 'tai', 'tai', 1, '15L|ú��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e724ebd1c8714b55b06a12d3e6a84271', '702fa7af9ff04de89c554ff8fe55a523', '105005004100', '����', 'tai', 'tai', 1, '10L', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('92c38bf6944a427aa4d513b9f987dd06', '702fa7af9ff04de89c554ff8fe55a523', '105005004200', 'ʳ�������', 'tai', 'tai', 1, '2L', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9bcc0eaba6ec47719a818a2e264d6f6e', '702fa7af9ff04de89c554ff8fe55a523', '105005004300', '��ʳ�׼�', 'ge', 'ge', 1, '1500*500*350', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('46ad84e0f2444ccab484c7069ddfae82', '702fa7af9ff04de89c554ff8fe55a523', '105005004400', '΢��¯', 'tai', 'tai', 1, '�Ⲩ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2b0fbc417b2b40af9e4e2612b8f61c0b', '702fa7af9ff04de89c554ff8fe55a523', '105005004500', '�ղг�', 'liang', 'liang', 1, '120*60*75cm|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('85b48080c38148f8a9936a6125e20efb', '702fa7af9ff04de89c554ff8fe55a523', '105005004600', '������', 'tai', 'tai', 1, '75*40cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ece21d29fccb4a38ad30b89042edf46d', '702fa7af9ff04de89c554ff8fe55a523', '105005004700', '������¯', 'tai', 'tai', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('92e6cc421ac34e11bef7635739f6890b', '702fa7af9ff04de89c554ff8fe55a523', '105005004800', '����', 'ge', 'ge', 1, '��֬', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8c229a80ee994c3abe7c6aa09b3c367e', '702fa7af9ff04de89c554ff8fe55a523', '105005004900', 'ը¯', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7a1c5dcc5ef143a8a717c1f826ec38c4', '702fa7af9ff04de89c554ff8fe55a523', '105005005000', '�̵�����', 'ge', 'ge', 1, '400*400', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('55d25631c5454c3b947661196fcaf676', '702fa7af9ff04de89c554ff8fe55a523', '105005005100', '�ع��ǰ�', 'kuai', 'kuai', 1, '200mm��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f8782f163a9b4c0bb2a9bb1a967f8e9b', '702fa7af9ff04de89c554ff8fe55a523', '105005005200', '�޶������ͳ�', 'zu', 'zu', 1, '1000*400*300', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('58884a5e8da543b0a227cdb345ce2df3', '702fa7af9ff04de89c554ff8fe55a523', '105005005300', '�޶������ͳ�', 'zu', 'zu', 1, '500*400*300', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5d414eda0a4c4829b87399757594c26a', '702fa7af9ff04de89c554ff8fe55a523', '105005005400', 'ˮ��ͷ', 'ge', 'ge', 1, '��ˮ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c44604ed2a2044efbede5dda7230144e', 'f40405ef6e26410887873345bf7bf950', '105006000100', '�����', 'ge', 'ge', 1, '6��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7081dcae18b9476687d966b66af5082d', 'f40405ef6e26410887873345bf7bf950', '105006000200', '�ǵ�', 'ge', 'ge', 1, '�Ǵ������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ac20d88ebe23439995817c8f2ae33212', 'f40405ef6e26410887873345bf7bf950', '105006000300', '����', 'ge', 'ge', 1, '�Ǵ������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5e1d38af38d2457dacec08ae77748f09', 'f40405ef6e26410887873345bf7bf950', '105006000400', '�豭', 'ge', 'ge', 1, '�Ǵ������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('af4d953227b6483bab31d4a11251696c', 'f40405ef6e26410887873345bf7bf950', '105006000500', '����', 'ge', 'ge', 1, '�Ǵ������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0005d66352d8430e9eb61f75fed275a2', 'f40405ef6e26410887873345bf7bf950', '105006000600', '���', 'ge', 'ge', 1, '�Ǵ������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f23b225783fc476dae94a97f5d24956c', 'f40405ef6e26410887873345bf7bf950', '105006000700', '���', 'ge', 'ge', 1, '�Ǵ������', 'ʹ��', null);
commit;
prompt 300 records committed...
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3000687964fc44689efa641126e7f622', 'f40405ef6e26410887873345bf7bf950', '105006000800', '����', 'shaung', 'shaung', 1, '�Ͻ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c62072de5e7e443484de9e8b7ccfa9c7', 'f40405ef6e26410887873345bf7bf950', '105006000900', 'չʾ��', 'ge', 'ge', 1, '�Ǵ������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1706f94f684d4a589441b59d28267abe', 'f40405ef6e26410887873345bf7bf950', '105006001000', '�Ե�', 'ge', 'ge', 1, '�״�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('027361594a6e4318b4287b946f708783', 'f40405ef6e26410887873345bf7bf950', '105006001100', '��Ʊ�', 'zhi2', 'zhi2', 1, '���ڲ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('38217c20aff240a1a055005d9412037b', 'f40405ef6e26410887873345bf7bf950', '105006001200', '�׾Ʊ�', 'zhi2', 'zhi2', 1, '���ڲ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('adf945c6d1a44475a979da4a8d1412db', 'f40405ef6e26410887873345bf7bf950', '105006001300', 'ơ�Ʊ�', 'zhi2', 'zhi2', 1, '���ڲ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('815f9210359d47e1af9130c2231a04c4', 'f40405ef6e26410887873345bf7bf950', '105006001400', '�־���', 'ge', 'ge', 1, '���ڲ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a088773240a94ee797f60945c7eb1ca5', 'f40405ef6e26410887873345bf7bf950', '105006001500', '�Ѿ���', 'ge', 'ge', 1, '���ڲ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('29c2e5a89c2b44e587d5122a632591a3', 'f40405ef6e26410887873345bf7bf950', '105006001600', '��', 'ge', 'ge', 1, 'ϡ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ccef3fb6c02748e5aa1f1b8386261c73', 'f40405ef6e26410887873345bf7bf950', '105006001700', '��', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a1d90348490942cbbd13709aeae2a47d', 'f40405ef6e26410887873345bf7bf950', '105006001800', '��', 'ge', 'ge', 1, '��ͨ|��֬', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('57a3fc15f4a4485e87e9ecaeb89a2312', 'f40405ef6e26410887873345bf7bf950', '105006001900', '����', 'ge', 'ge', 1, '��ͨ|��֬', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('484e1fa58be647e19b478af6c69a856f', 'f40405ef6e26410887873345bf7bf950', '105006002000', '����', 'ge', 'ge', 1, '��ͨ|��֬', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('74e8ea9a827e4e4e95054435ef26ffab', 'f40405ef6e26410887873345bf7bf950', '105006002100', '��', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4a5b57f93ff34c3d804b4b791192733c', 'f40405ef6e26410887873345bf7bf950', '105006002200', '��', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('29f99ea7fb004290b9b7ef00fe2c9509', 'f40405ef6e26410887873345bf7bf950', '105006002300', '����', 'ge', 'ge', 1, '15�Ź���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('59c5164adea3495ba27b90b199602920', 'f40405ef6e26410887873345bf7bf950', '105006002400', '�߽���', 'ge', 'ge', 1, '8����ʽ|�໨', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6e5b726210c84b5e98353e7c641bc86c', 'f40405ef6e26410887873345bf7bf950', '105006002500', 'Բ��', 'ge', 'ge', 1, '24cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('03dae8fbcb4e4752950d4b57b9af43cf', 'f40405ef6e26410887873345bf7bf950', '105006002600', '���ο�', 'ge', 'ge', 1, '26cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fa58767e69b149178c733d0c74082414', 'f40405ef6e26410887873345bf7bf950', '105006002700', '���ο�', 'ge', 'ge', 1, '24cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a4d58016188d44f4a70f06ab44cd813e', 'f40405ef6e26410887873345bf7bf950', '105006002800', '������', 'ge', 'ge', 1, '7��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('aded186e1de34a7a90ef5463092e50d3', 'f40405ef6e26410887873345bf7bf950', '105006002900', '�׵�', 'ge', 'ge', 1, '�״�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('21a7b62d9dc84a2b85c42ea8d0abb703', 'f40405ef6e26410887873345bf7bf950', '105006003000', '����', 'ge', 'ge', 1, '�Ǵ�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('82a6f03a0cb6442eb7b56d077457f575', 'f40405ef6e26410887873345bf7bf950', '105006003100', '����', 'ge', 'ge', 1, '�Ǵ�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('14aa69da34ac455f98bdb5c40aed1ddb', 'f40405ef6e26410887873345bf7bf950', '105006003200', '����', 'ge', 'ge', 1, '���|��ʿ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0b0b9d8ef4bd41e29fab0662ffee45eb', 'f40405ef6e26410887873345bf7bf950', '105006003300', '����', 'ge', 'ge', 1, 'С��|��ʿ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('97feaf365dcd4a5fbe69a7754c5b599f', 'f40405ef6e26410887873345bf7bf950', '105006003400', '�ͺ�', 'ge', 'ge', 1, '750', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4bad96356a344e8291b2c62e92d6f666', 'f40405ef6e26410887873345bf7bf950', '105006003500', '�ڱ�', 'zhi2', 'zhi2', 1, '9', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('260295ff506e434aaefcb0049427ddfb', 'f40405ef6e26410887873345bf7bf950', '105006003600', '���Ȼ�', 'ge', 'ge', 1, '˫ͷ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ecf67e4d85374f12b3d516bf9b3820ac', 'f40405ef6e26410887873345bf7bf950', '105006003700', '�������', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('239dc421d57b4254a7e6a50a8f0cc49a', 'f40405ef6e26410887873345bf7bf950', '105006003800', '�緹��', 'ge', 'ge', 1, '8L', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6010578b96704a469bd13f212145cfcc', '43337013830744a1aba1f696d92832df', '105007000100', '����������', 'tai', 'tai', 1, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8e2b9ecf4f7e488dab52a8f475561225', '43337013830744a1aba1f696d92832df', '105007000200', '�׺�', 'ge', 'ge', 1, '�ǿ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('20873b4ac26c41f2a9e04f9de3e5b974', '43337013830744a1aba1f696d92832df', '105007000300', '��ƿ', 'ge', 'ge', 1, '�ǿ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('aedfcb1fc51d4db4aa90b29ebb16e161', '43337013830744a1aba1f696d92832df', '105007000400', '������', 'ge', 'ge', 1, '�ǿ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('24dcf35ba72b44b6a639c981a3c63a61', '43337013830744a1aba1f696d92832df', '105007000500', 'ֽ���', 'ge', 'ge', 1, 'Ƥ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f1a320d2cc60424bb6b5f5307bf50ca7', '43337013830744a1aba1f696d92832df', '105007000600', '����', 'ge', 'ge', 1, 'ȫ�ּӺ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4ae028ba93bb4932b6e082485e8d1a69', '43337013830744a1aba1f696d92832df', '105007000700', '������', 'ge', 'ge', 1, '����|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('71e7d475f4054821a8a04e4da6ecb8c5', '43337013830744a1aba1f696d92832df', '105007000800', '����', 'ge', 'ge', 1, 'ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('57ead9dbf72c4c54a96d6539bb92aca6', '43337013830744a1aba1f696d92832df', '105007000900', '��©', 'ge', 'ge', 1, 'ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c3f33b81154148e3a440d054d3d9475e', '43337013830744a1aba1f696d92832df', '105007001000', '����', 'ge', 'ge', 1, 'ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5ecec7031f864498b51de1e052db3dea', '43337013830744a1aba1f696d92832df', '105007001100', 'ˮ��', 'ge', 'ge', 1, 'ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('57d69530e4d54d62a06df0e162298c4c', '43337013830744a1aba1f696d92832df', '105007001200', 'ˮ��', 'ge', 'ge', 1, 'ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c8d1c2958315458d8a5d940236f2b715', '43337013830744a1aba1f696d92832df', '105007001300', '��ʯ', 'ge', 'ge', 1, 'Ϻ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ab9bf34caad94c29b700ccc46c667bd6', '43337013830744a1aba1f696d92832df', '105007001500', '�˵�', 'ba', 'ba', 1, '���ϸ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('30fabff2e6a9415a89d598f48b09a5f7', '43337013830744a1aba1f696d92832df', '105007001600', '�˵�', 'ba', 'ba', 1, '2��|���ϸ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6837380d96f8441a9bbd345c3f2b36ef', '43337013830744a1aba1f696d92832df', '105007001700', '�˵�', 'ba', 'ba', 1, '��ּб�Ƭ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9c00cd73e3a0471582981f0e1d5b17c2', '43337013830744a1aba1f696d92832df', '105007001800', '����', 'ba', 'ba', 1, '������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('67961dbab03d44d389a2b9f8e32cb318', '43337013830744a1aba1f696d92832df', '105007001900', 'ѹ����', 'ge', 'ge', 1, '������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ae67dcba41c94d0ab3886001b9d1aafe', '43337013830744a1aba1f696d92832df', '105007002000', '����', 'ge', 'ge', 1, '1��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0c21960dddb7406da110065c5716d807', '43337013830744a1aba1f696d92832df', '105007002100', '����', 'ge', 'ge', 1, '0.8��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2db83198b1fc470499ec6ddfa82592b5', '43337013830744a1aba1f696d92832df', '105007002200', '����', 'ge', 'ge', 1, '2��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1698887c849c4225abf74bba7aebfb0b', '43337013830744a1aba1f696d92832df', '105007002300', '�ֲ�', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5a30b570130d4d129fd7f3e79f03c1e7', '43337013830744a1aba1f696d92832df', '105007002400', '�͹�', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3215513f19cf466fb97e7d35b80763ac', '43337013830744a1aba1f696d92832df', '105007002500', '���Ϲ�', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bacead0cefbd4ff08c0935e18b5a4fc1', '43337013830744a1aba1f696d92832df', '105007002600', 'ɰ��', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3546cff1a71146cb8eaa724cda553092', '43337013830744a1aba1f696d92832df', '105007002700', '����', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6aa5397c3c3d433eba2218a04f49b43a', '43337013830744a1aba1f696d92832df', '105007002800', '����Ͱ', 'ge', 'ge', 1, '30*40cm|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0c16a78d389745ccbea9ed89be29f279', '43337013830744a1aba1f696d92832df', '105007002900', '��', 'ge', 'ge', 1, '��8��|�ִ�Ӻ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('381d6d35a07e4b44b2d09ffb875d4fdd', '43337013830744a1aba1f696d92832df', '105007003000', '��', 'ge', 'ge', 1, '��5��|�ִ�Ӻ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a8843570c56e4e999522d01a58e5017e', '43337013830744a1aba1f696d92832df', '105007003100', '��', 'ge', 'ge', 1, '70cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4a39c369a4c9468d8addc2b04ef97dde', '43337013830744a1aba1f696d92832df', '105007003200', '��', 'ge', 'ge', 1, '50cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('dea0ecfb91ee4d19a144b2cd4eaf1bee', '43337013830744a1aba1f696d92832df', '105007003300', '��', 'ge', 'ge', 1, '40cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('cead2b60615d48bbb5e4463d6ab0dd6a', '43337013830744a1aba1f696d92832df', '105007003400', '��', 'ge', 'ge', 1, '30cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('04dc352f627743669880a619de6a3103', '43337013830744a1aba1f696d92832df', '105007003500', '����', 'ba', 'ba', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4ef95f186ed543ee804e20370a5e6fb7', '43337013830744a1aba1f696d92832df', '105007003600', '���ʺ�', 'ge', 'ge', 1, '����|�Ӻ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('52e1d80d7a504770b18e8b89a8b6b2a6', '43337013830744a1aba1f696d92832df', '105007003700', '���ʺ�', 'ge', 'ge', 1, '����|1��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fb482915f1c74ea298b239fc2e8d7c86', '43337013830744a1aba1f696d92832df', '105007003800', '���ʺ�', 'ge', 'ge', 1, '����|2��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('28bc0484beb44ee393342b47be7c74b2', '43337013830744a1aba1f696d92832df', '105007003900', '���ʺ�', 'ge', 'ge', 1, '����|3��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c2e5b88b704b4cb0a7da4acd94885c62', '43337013830744a1aba1f696d92832df', '105007004000', '��', 'ge', 'ge', 1, 'ȫ��|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6ea959b1178947929b561ce881922ed2', '43337013830744a1aba1f696d92832df', '105007004100', '��', 'ge', 'ge', 1, 'ȫ��|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('201bd4b3a6a542eb84ee0a6bfe9b5484', '43337013830744a1aba1f696d92832df', '105007004200', '�˰�', 'kuai', 'kuai', 1, '40*60cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('659632e1bcb14fdd938fa883d20925f1', '43337013830744a1aba1f696d92832df', '105007004300', 'ˮ����', 'ba', 'ba', 1, '����|ӥ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6b7a3a8d11bb4e7f8e6965ef2243293c', '43337013830744a1aba1f696d92832df', '105007004400', '��Ӭ��', 'ge', 'ge', 1, 'LED', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('13e94478639c445a883e363d6a8d5287', '43337013830744a1aba1f696d92832df', '105007004500', '������', 'ge', 'ge', 1, '�к�|�ֻ�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('67a35c3216d1411681714afedac01735', '43337013830744a1aba1f696d92832df', '105007004600', 'ߦ����', 'gen', 'gen', 1, '��|ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0e7c73f9ab504449aef620afc04d03e3', '43337013830744a1aba1f696d92832df', '105007004700', 'ߦ����', 'gen', 'gen', 1, '��|ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e38522939aac4fd2b5a2d9da0ccf6f89', '43337013830744a1aba1f696d92832df', '105007001400', '�˶�', 'kuai', 'kuai', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bdcc075f8d1c4e83b12e2671cf856ad8', '43337013830744a1aba1f696d92832df', '105007004800', 'ë��', 'kuai', 'kuai', 1, '��ˮ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3ac8029ccf8a44f2be73d94abd0202fb', '43337013830744a1aba1f696d92832df', '105007004900', 'ë��', 'kuai', 'kuai', 1, '���ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f6f4f6273c244f3ea93da3ba704c4714', '43337013830744a1aba1f696d92832df', '105007005000', '��ñ', 'ding', 'ding', 1, '�޷Ĳ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fcb033f945ba461ba1af5d9b5d3689a8', '9363693c358b429e8969edcf750b5693', '101017000100', '42���ϰ׷ڰ׾�', 'ping', 'xaing', 6, '450ml|��ʮ�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('553296dc722e40fca259635ba6260cef', '9363693c358b429e8969edcf750b5693', '101017000200', '53���ϰ׷ڰ׾�', 'ping', 'xaing', 6, '475ml|ʮ�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9ea9c4c9570e4f4881d0d41eece2d36f', '9363693c358b429e8969edcf750b5693', '101017000300', '13.5�����ź��', 'ping', 'ping', 1, '750ml|���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d8fc8b12734c41f7b0208e7ceb88e751', '9363693c358b429e8969edcf750b5693', '101017000400', '13.5�����ź��', 'ping', 'ping', 1, '750ml|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5a9cf649d77c4770a5c0b6b495271c14', '9363693c358b429e8969edcf750b5693', '101017000500', '13.5���ָ��غ��', 'ping', 'ping', 1, '750ml', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f0d22bda5af9463eab14007b1bbbbb5c', '247f61d2f14f490baa43aa6dac0d8333', '102001000100', 'SAD300-A�;ƾ������', 'tai', 'tai', 1, '��ʽ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5b937587c79148e39aefa31521849c9e', '247f61d2f14f490baa43aa6dac0d8333', '102001000200', '̨ʽѪѹ��', 'tai', 'tai', 1, 'ˮ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('45809146c7e84e438286c63fc2b5611a', '247f61d2f14f490baa43aa6dac0d8333', '102001000300', '�ķθ���ģ����', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('77e544c137234d33ba574be92f37ab0c', '247f61d2f14f490baa43aa6dac0d8333', '102001000400', '�ķθ���ģ����', 'ge', 'ge', 1, 'ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c00cf02d79ce47328cc7f0187e28ccd7', '247f61d2f14f490baa43aa6dac0d8333', '102001000500', '����ģ����', 'ge', 'ge', 1, 'ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2b4d42fe7fb749d39046330be7687ceb', 'b22670a7795844978a151f77708f6f96', '103001000100', '����Ա����', 'jian', 'jian', 1, '60%ë��Ʒ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('580d21b55a41439d92ab9eba013e503f', 'b22670a7795844978a151f77708f6f96', '103001000200', '����Ա�����Ʒ���������', 'jian', 'jian', 1, '70%ë��Ʒ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('50a60f8a2f934ffa8791ed66b3fcd60b', 'b22670a7795844978a151f77708f6f96', '103001000300', '����Ա�ﶬ�Ʒ���������', 'jian', 'jian', 1, '70%ë��Ʒ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('609e0f31dfdc4b349f34456738f88ec7', 'b22670a7795844978a151f77708f6f96', '103001000400', '����Ա�����Ʒ�����', 'tiao', 'tiao', 1, '70%ë��Ʒ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e01014787a674f7690edacb649b53016', 'b22670a7795844978a151f77708f6f96', '103001000500', '����Ա�ﶬ�Ʒ�����', 'tiao', 'tiao', 1, '70%ë��Ʒ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3211c151dab4406cbbcd2d93d288a9bf', 'b22670a7795844978a151f77708f6f96', '103001000600', '����Ա�������', 'jian', 'jian', 1, '��ɫ60��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a5f9173dc0c947b78179403bef46d63c', 'b22670a7795844978a151f77708f6f96', '103001000700', '����Ա�������', 'jian', 'jian', 1, '��ɫ60��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('88dc0e8e5a594741859ecf09dfb605f8', 'b22670a7795844978a151f77708f6f96', '103001000800', '����Ա���', 'jian', 'jian', 1, 'ë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7c3f6a6089c043d8a2cd83f5e2b41d8f', 'b22670a7795844978a151f77708f6f96', '103001000900', '����Ա�Ŀ�', 'jian', 'jian', 1, 'ë��', 'ʹ��', null);
commit;
prompt 400 records committed...
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('193a4c6422fa4993a860d3aacac38df9', 'b22670a7795844978a151f77708f6f96', '103001001000', '����������Ա���У���������', 'jian', 'jian', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5c7b2c7f80774c04bd6b5ac2157c856b', 'b22670a7795844978a151f77708f6f96', '103001001100', '����������Ա���У�����', 'tiao', 'tiao', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6caac7a8fd8640f3a6c46bbf23e6a0e3', 'b22670a7795844978a151f77708f6f96', '103001001200', '����������Ա���У����', 'jian', 'jian', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6f1c8ab514fe4aaeb825c551e5f72c45', 'b22670a7795844978a151f77708f6f96', '103001001300', '����������Ա���У��Ŀ�', 'tiao', 'tiao', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('80500c97e4894dfdbfaf745a3cfcf77f', 'b22670a7795844978a151f77708f6f96', '103001001400', '����������Ա���У��������', 'jian', 'jian', 1, '��ɫ60��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c04debc6f330497fa7e0b20ed1ac2194', 'b22670a7795844978a151f77708f6f96', '103001001500', '����������Ա���У��������', 'jian', 'jian', 1, '��ɫ60��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6df7f8c65e19452fa8d12b3f245ff889', 'b22670a7795844978a151f77708f6f96', '103001001600', '�г�����Ա���У���������', 'jian', 'jian', 1, '��ɫ��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('dd710b62e099427e91027bc45e2fb8a4', 'b22670a7795844978a151f77708f6f96', '103001001700', '�г�����Ա���У�����', 'tiao', 'tiao', 1, '��ɫ��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a0050b8944374c7db4b14e74ca5766f7', 'b22670a7795844978a151f77708f6f96', '103001001800', '�г�����Ա���У����', 'jian', 'jian', 1, '��ɫ��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b8d03f3980c0493ca2f7391a5ef7f36f', 'b22670a7795844978a151f77708f6f96', '103001001900', '�г�����Ա���У��Ŀ�', 'tiao', 'tiao', 1, '��ɫ��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('64ac700a18404d19a4cc4085c0df8cec', 'b22670a7795844978a151f77708f6f96', '103001002000', '�г�����Ա���У��������', 'jian', 'jian', 1, '��ɫ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('339eaa2b86d74ac9826edc4be3de237f', 'b22670a7795844978a151f77708f6f96', '103001002100', '�г�����Ա���У��������', 'jian', 'jian', 1, '��ɫ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0e252be4d14047668bdae6d867204f52', 'b22670a7795844978a151f77708f6f96', '103001002200', '�ط���Ա���У���������', 'jian', 'jian', 1, '��ɫë��70%ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f278a62f8aa84d15ad344235457a69f7', 'b22670a7795844978a151f77708f6f96', '103001002300', '�ط���Ա���У���������', 'tiao', 'tiao', 1, '��ɫë��70%ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f675c9096fc44b67892ee3780173a0a5', 'b22670a7795844978a151f77708f6f96', '103001002400', '�ط���Ա���У�����', 'jian', 'jian', 1, 'ë�Ӵ�����70%ë30%��˿', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('44a4dd34ecf846228ff7771591becf9e', 'b22670a7795844978a151f77708f6f96', '103001002500', '�ط���Ա���У�����˾���������', 'jian', 'jian', 1, '��ɫ60%��40%��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b50d2c2e873346089d75511562aa1b39', 'b22670a7795844978a151f77708f6f96', '103001002600', '�ط���Ա���У�����˾���������', 'jian', 'jian', 1, '��ɫ60%��40%��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d902101a273043738ac6509513149cc0', 'b22670a7795844978a151f77708f6f96', '103001002700', '�ط���Ա���У��Ŀ�', 'tiao', 'tiao', 1, '��ɫ100%����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bb5d96ad2317462287d40106c3bd584a', 'b22670a7795844978a151f77708f6f96', '103001002800', '�ط���Ա���У����', 'jian', 'jian', 1, '��ɫ100%����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e6d608a618a24d1dacb34b69bed6a705', 'b22670a7795844978a151f77708f6f96', '103001002900', '����˾����������', 'jian', 'jian', 1, '����ë��70%ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('00f4fef413404a03ba9706d4d59d404b', 'b22670a7795844978a151f77708f6f96', '103001003000', '����˾����������', 'tiao', 'tiao', 1, '����ë��70%ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('cbe816cf917040dea7930d4c69251927', 'b22670a7795844978a151f77708f6f96', '103001003100', '����˾���Ŀ�', 'tiao', 'tiao', 1, '����100%����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5b7adfda2bd44335ac64b0a0e47982f2', 'b22670a7795844978a151f77708f6f96', '103001003200', '��ȫԱ�п�', 'jian', 'jian', 1, '��б����ߴ50%ë50%��400��/ m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('81a55329fa6c4ba3b028e64b8403312a', 'b22670a7795844978a151f77708f6f96', '103001003300', '��ȫԱ�������', 'jian', 'jian', 1, '65%��35%���ڡ�CVC', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('41254a655ccc4b65b52dc82752eabf87', 'b22670a7795844978a151f77708f6f96', '103001003400', '��ȫԱ�������', 'jian', 'jian', 1, '65%��35%���ڡ�CVC', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e324db8ac90a41c9a9bf040685fe0617', 'b22670a7795844978a151f77708f6f96', '103001003500', '������Ա���У���������', 'jian', 'jian', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9fc758a99e57400f9f41c3d1265669af', 'b22670a7795844978a151f77708f6f96', '103001003600', '������Ա���У�����', 'tiao', 'tiao', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5875b4bb228642ffa93f3080f3b57b30', 'aef9f2ad086a4f53ab47150b1bce888f', '103002000100', '������������', 'jian', 'jian', 1, '��ɫ80%��ë19.5%����0.5%������ά290��/m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('56834ee3827244238c1cdcc82dd3c39f', 'aef9f2ad086a4f53ab47150b1bce888f', '103002000200', '����Ա��������', 'jian', 'jian', 1, '��ɫ80%��ë19.5%����0.5%������ά290��/m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('cfca329a9dfb4f56aa44114f642a67a2', 'aef9f2ad086a4f53ab47150b1bce888f', '103002000300', '������������', 'tiao', 'tiao', 1, '��ɫ80%��ë19.5%����0.5%������ά290��/m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e1adcb8562eb48319d373499128f46af', 'aef9f2ad086a4f53ab47150b1bce888f', '103002000400', '����Ա��������', 'tiao', 'tiao', 1, '��ɫ80%��ë19.5%����0.5%������ά290��/m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c1d007c90c974d17b6975a002e74c98c', 'aef9f2ad086a4f53ab47150b1bce888f', '103002000500', '�����������', 'jian', 'jian', 1, '��ɫ80%��ë19.5%����0.5%������ά290��/m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d698715973414f3bb49a46617f6a3ed3', 'aef9f2ad086a4f53ab47150b1bce888f', '103002000600', '����Ա�������', 'jian', 'jian', 1, '��ɫ80%��ë19.5%����0.5%������ά290��/m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('33b758504c604ae681291e57a818a75f', 'aef9f2ad086a4f53ab47150b1bce888f', '103002000700', '����������ȹ', 'tiao', 'tiao', 1, '��ɫ80%��ë19.5%����0.5%������ά290��/m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f62de1badf014c118f3a3480826dc741', 'aef9f2ad086a4f53ab47150b1bce888f', '103002000800', '����Ա������ȹ', 'tiao', 'tiao', 1, '��ɫ80%��ë19.5%����0.5%������ά290��/m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('46248abb4f5448c68ec1519910b38d22', 'aef9f2ad086a4f53ab47150b1bce888f', '103002000900', '����Ա����', 'jian', 'jian', 1, '��ɫ30%���� 70%��ë,580��/ m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a1e9fb91ce7b4485af1a5db196d8c7ff', 'aef9f2ad086a4f53ab47150b1bce888f', '103002001000', '����Ա����', 'jian', 'jian', 1, '����100%������ά,��ˮ���������ϲ�����50D', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('18b629d0af0443dfbea066bf7f7210e8', 'aef9f2ad086a4f53ab47150b1bce888f', '103002001100', '��������ȹ', 'tiao', 'tiao', 1, '��ɫ50%ë50%�����Ứ���ϡ�80s��290��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('31a77d60ae28443eaffcb438ce20012c', 'aef9f2ad086a4f53ab47150b1bce888f', '103002001200', '����Ա����ȹ', 'tiao', 'tiao', 1, '��ɫ50%ë50%�����Ứ���ϡ�80s��290��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c49c0ca6b25b448eb96b598aa96d4f70', 'aef9f2ad086a4f53ab47150b1bce888f', '103002001300', '����Ա�������', 'jian', 'jian', 1, '��ɫ80%��20%���ڣ�100֯ɴ˫��˫γ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c407236c34854778a51647f06aeda381', 'aef9f2ad086a4f53ab47150b1bce888f', '103002001400', '����Ա�������', 'jian', 'jian', 1, '��ɫ80%��20%���ڣ�100֯ɴ˫��˫γ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e9a1a51d0add4c0b843b64cdeb479036', 'aef9f2ad086a4f53ab47150b1bce888f', '103002001500', '����ԱΧȹ', 'tiao', 'tiao', 1, '50%ë50%�����Ứ���ϡ�80s��290��/ m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e4fa80971f2242dc919bf9bd1d4cacf6', 'aef9f2ad086a4f53ab47150b1bce888f', '103002001600', '����������Ա��Ů����������', 'jian', 'jian', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d049fe626d94499595c49504523080c5', 'aef9f2ad086a4f53ab47150b1bce888f', '103002001700', '����������Ա��Ů������', 'tiao', 'tiao', 1, '��ɫë��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e4715e62b14f44749cfcc555b07e44d8', '554fa7cc502249ae8d3322f0695f1219', '112010000100', '�绰', 'tai', 'tai', 1, '|¼��|HCD007(198)|�����ߣ�BBK��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e8ee54b8d3eb4927916f5067dfcd3129', '43337013830744a1aba1f696d92832df', '105007012300', '�ΰ�', 'ge', 'ge', 1, 'ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3bd2c7c453f8459c9a39e4eb859cc7d7', '43337013830744a1aba1f696d92832df', '105007012400', '�ߴ�', 'ge', 'ge', 1, 'ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f28de57a1a784a5aa5939df29be8eb06', '43337013830744a1aba1f696d92832df', '105007012500', '����', 'kuai', 'kuai', 1, '֯��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0ce863d14a3d4f378a9cd80ace35955e', '43337013830744a1aba1f696d92832df', '105007012600', 'ʳƷ��', 'kuai', 'kuai', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f9ea8a1789f64c03be01f3b10b450859', '43337013830744a1aba1f696d92832df', '105007012700', '������', 'kuai', 'kuai', 1, '8*8cm|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('49eb52ac85bd47cfafeabd8695c1a0a2', '43337013830744a1aba1f696d92832df', '105007012800', '�ҵ�', 'kuai', 'kuai', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('60ec8a9295a544d4b4777234f4fa2c54', '43337013830744a1aba1f696d92832df', '105007012900', '��ʦ��', 'jian', 'jian', 1, '��ʿ|֯��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('10d28a55e1644a2d95e7ab4c48277a8f', '43337013830744a1aba1f696d92832df', '105007013000', '�����', 'ge', 'ge', 1, 'ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('10e6e0d30ca4428caf5a51a598ca880a', '43337013830744a1aba1f696d92832df', '105007013100', '��̵�', 'ba', 'ba', 1, 'ȫ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8c75a5412bc1451a8a355a368a9c04bf', '43337013830744a1aba1f696d92832df', '105007013200', '������', 'ba', 'ba', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('343940e35a4c40c183da0ecb4d194593', '43337013830744a1aba1f696d92832df', '105007013300', '�������ߺ�', 'ba', 'ba', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d91bd4f6b7ee4f1f9d1b8ce7f1cb1211', '43337013830744a1aba1f696d92832df', '105007013400', '���ϳ�', 'liang', 'liang', 1, '100*60*75cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('64ca99a0e8ab4f5ab1d7e0d65d83728a', '43337013830744a1aba1f696d92832df', '105007013500', '��ˢ', 'ge', 'ge', 1, 'ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('28f5c192d649434ab2e107d9a0810074', '43337013830744a1aba1f696d92832df', '105007013600', '��ֽ', 'zhang', 'zhang', 1, '8.5cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ef37850a20384121b430715d1bc18b62', '43337013830744a1aba1f696d92832df', '105007013700', 'ζ��', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ed224acd123a426f82a955f84e362b24', '43337013830744a1aba1f696d92832df', '105007013800', '����', 'ge', 'ge', 1, 'ֱ��30cm|ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bb440af9746e408fadbfe8cc1765757a', '43337013830744a1aba1f696d92832df', '105007013900', '����', 'ge', 'ge', 1, '40*30cm|ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c62a8b1dc4ca491b8ac896de028a2bdb', '43337013830744a1aba1f696d92832df', '105007014000', 'Χȹ', 'jian', 'jian', 1, 'puƤ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f47ca11a94ee4e90a8d2c1ffa41966da', '43337013830744a1aba1f696d92832df', '105007014100', '��ڻ�', 'tai', 'tai', 1, '��ڻ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('05734e52edf44b89a3085b00bf5acedd', '43337013830744a1aba1f696d92832df', '105007014200', '��Ĥ��', 'tai', 'tai', 1, '��ڻ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('484ceb70fdaf4cb0bc6c5fad9ade26d5', '43337013830744a1aba1f696d92832df', '105007014300', '�ڲ�', 'kuai', 'kuai', 1, '֯��|', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d154df2bd7a04d57a70e8f6a767f6aba', '43337013830744a1aba1f696d92832df', '105007014400', 'Բ��ģ��', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9fe29c3df1e54b9392ac84bdba12f440', '43337013830744a1aba1f696d92832df', '105007014500', '����', 'ge', 'ge', 1, '65067||��֬', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1d7bb48a45874b7da1b4d6bbd4903627', '43337013830744a1aba1f696d92832df', '105007014600', '�ع�', 'ge', 'ge', 1, 'ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('07c9ebe558bb4e64812b73c8521c0883', '43337013830744a1aba1f696d92832df', '105007014700', '��ʽ¯', 'tai', 'tai', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4f2a9441e678476897291c3bfa6cd917', '43337013830744a1aba1f696d92832df', '105007014800', '����¯', 'tai', 'tai', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('97eb3af5fdc14d45a19cecb93b86bdf4', '43337013830744a1aba1f696d92832df', '105007014900', '���̼�', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('96a3d13f65a5440fbe1221a0c4fd4cec', '43337013830744a1aba1f696d92832df', '105007015000', '���̳�', 'liang', 'liang', 1, '120*60*75cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3eb41861ec93460f8f8066a292e0a422', '43337013830744a1aba1f696d92832df', '105007015100', '��ˮ��', 'liang', 'liang', 1, '80*40cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('db73fad8dc6d446ebac79242fd1e7724', '43337013830744a1aba1f696d92832df', '105007015200', '����', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('910dd2f6b30a4c10b8c26c1e23ba78aa', '43337013830744a1aba1f696d92832df', '105007015300', 'չʾ̨��', 'ge', 'ge', 1, '�ǿ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f126e89bf4564867a79c111818000b93', '43337013830744a1aba1f696d92832df', '105007015400', '���Ƽ�', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('88bb175d96e742c6a34ce027923583f6', '43337013830744a1aba1f696d92832df', '105007015500', 'һϴ��ˢ', 'ge', 'ge', 1, '��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('44cf8ee369c94b5ea6da57f95fe0df33', '43337013830744a1aba1f696d92832df', '105007015600', '��ˮ��', 'ge', 'ge', 1, '�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('723ecba517644e8dbc5cbd0f14d80238', '43337013830744a1aba1f696d92832df', '105007015700', '˫¯ˮ��', 'ge', 'ge', 1, '60L', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('35a68627bb9243138d3608eb98665a14', '80dd5d2124c949d18bc772b4d969ed07', '105008000100', '��ëˢ', 'ge', 'ge', 1, '��ëͷ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c5e68fb799b249b6a04ea4b10aef8cf0', '80dd5d2124c949d18bc772b4d969ed07', '105008000200', '�����', 'ge', 'ge', 1, '42.5*24.5*34cm|��֬', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('18f9066619d04c27b538901fa4469684', '80dd5d2124c949d18bc772b4d969ed07', '105008000300', '���ݿ�', 'ge', 'ge', 1, '62*48*37cm����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d83eb96afa3c438bb2f57b143a917247', '80dd5d2124c949d18bc772b4d969ed07', '105008000400', 'ֽ¨', 'ge', 'ge', 1, '6.8L', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f5b7eac227e54ad784e01985a1af9f7d', '97dc1e968daf4a5f8e79530c40b2c6da', '105009000100', '�ŵ�', 'kuai', 'kuai', 1, '38*57cm|֯��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('71a07f22cf06487d84b30c410067b6c1', '97dc1e968daf4a5f8e79530c40b2c6da', '105009000200', 'ң������', 'ge', 'ge', 1, 'ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2086fd154647459e873cea7728c7dc7b', '97dc1e968daf4a5f8e79530c40b2c6da', '105009000300', '�¼�', 'ge', 'ge', 1, 'ľ��|��˼��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1c72f420a7484281b94d0c5d043375cf', '97dc1e968daf4a5f8e79530c40b2c6da', '105009000400', '������Ź���', 'kuai', 'kuai', 1, '�ǿ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('db302c969a914ada8dfed07956690ba7', '97dc1e968daf4a5f8e79530c40b2c6da', '105009000500', '��ȴ�ɨ����', 'kuai', 'kuai', 1, '������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3be2070cc25446ebac98e5a9d1b74e7a', '97dc1e968daf4a5f8e79530c40b2c6da', '105009000600', '������ʾ��', 'kuai', 'kuai', 1, '�ǿ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('60f4d4dfc616421ead989154320d2cd1', '97dc1e968daf4a5f8e79530c40b2c6da', '105009000700', '����ˮ��ʾ��', 'kuai', 'kuai', 1, '�ǿ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4cf431eff4084dcf8285470e2188a16a', '97dc1e968daf4a5f8e79530c40b2c6da', '105009000800', '�̸�', 'ge', 'ge', 1, '�ɰ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('45f184ad550c4a8d909972a7031057cb', '97dc1e968daf4a5f8e79530c40b2c6da', '105009000900', '����', 'ge', 'ge', 1, '29*21*1.5cm|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b884c1c1a2cd417497504ba41cf3ebbf', '97dc1e968daf4a5f8e79530c40b2c6da', '105009001000', '����', 'ge', 'ge', 1, '19*13cm|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('86523bb2a65c4e0ebfc722f514ac88a9', '97dc1e968daf4a5f8e79530c40b2c6da', '105009001100', '������', 'ge', 'ge', 1, 'ֱ��40cm����36cm|�ٱ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3bfb5973a665498899218a6bdc269b70', '97dc1e968daf4a5f8e79530c40b2c6da', '105009001200', '���', 'ge', 'ge', 1, '1L|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('06aee3adb98546b887d9c2f50857c615', '97dc1e968daf4a5f8e79530c40b2c6da', '105009001300', '�輸', 'ge', 'ge', 1, '100*50*42cm|ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8dc8951a6aae4935acd69c07034c76e7', '97dc1e968daf4a5f8e79530c40b2c6da', '105009001400', '�輸', 'ge', 'ge', 1, '1400*600*550mm|��ʽ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('04fe1add1bde4ced82670b62a87d8667', '97dc1e968daf4a5f8e79530c40b2c6da', '105009001500', '�ڱ�', 'zhi2', 'zhi2', 1, '7cm|����|�׿�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('30a2d00b261245d6949fe13b4e250082', '97dc1e968daf4a5f8e79530c40b2c6da', '105009001600', '��Ͱˢ', 'ge', 'ge', 1, '����|����', 'ʹ��', null);
commit;
prompt 500 records committed...
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('63ebe480e22e4a669dc2a90bf663cfc3', '97dc1e968daf4a5f8e79530c40b2c6da', '105009001700', '������', 'shan', 'shan', 1, '92cm*235cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0f207852453a4862830205038395d51f', '97dc1e968daf4a5f8e79530c40b2c6da', '105009001800', '�Ǽ�', 'ge', 'ge', 1, '430*420mm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6567554087064fb0ae0efb9c6918832a', '385e6874bee2473d8b6cd73244fd46f6', '107002000100', 'ϴ�Ӽ�', 'tong', 'tong', 1, '����|20kg', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7550993f023540a9a67a3f7a24afd4e8', '385e6874bee2473d8b6cd73244fd46f6', '107002000200', '�ٽ಼', 'kuai', 'kuai', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8d6574151e404c658e8d38789305c4ef', '385e6874bee2473d8b6cd73244fd46f6', '107002000300', 'ϴ��Һ', 'tong', 'tong', 1, '3����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a77d7646961c4e4abf74d04f64ce7110', '385e6874bee2473d8b6cd73244fd46f6', '107002000400', '��޼�', 'tong', 'tong', 1, '3����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('58dd34d1fdbd42f291a3e4ea9444ff71', '385e6874bee2473d8b6cd73244fd46f6', '107002000500', 'Ьˢ��', 'ba', 'ba', 1, '����ë|ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('dff5b3737308426d91b2cc9a699ceb24', '385e6874bee2473d8b6cd73244fd46f6', '107002000600', 'ϴ��ˢ', 'ba', 'ba', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('cd1fbee5749243938690570ea11ea14c', '385e6874bee2473d8b6cd73244fd46f6', '107002000700', '����ˢ', 'ba', 'ba', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2dea793437134554bb4391aaa4b9902c', '385e6874bee2473d8b6cd73244fd46f6', '107002000800', '����', 'shaung', 'shaung', 1, '��|�Ӻ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3a989eb41adf46bdb739e47a185191bc', '385e6874bee2473d8b6cd73244fd46f6', '107002000900', '����', 'ba', 'ba', 1, '90cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a9fd703074ab4059a38a57a184ab55ac', '385e6874bee2473d8b6cd73244fd46f6', '107002001000', '����', 'ba', 'ba', 1, '30cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f314585d4e8747e1b148bc4b609d682b', '385e6874bee2473d8b6cd73244fd46f6', '107002001100', '������', 'ba', 'ba', 1, '2.4��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e2978fdf6a754bfcb05d64d3d494f451', '385e6874bee2473d8b6cd73244fd46f6', '107002001200', '�ϰ�', 'ba', 'ba', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d23f59200f1e462fae885a2596ec31ec', '385e6874bee2473d8b6cd73244fd46f6', '107002001300', '�ϰ�', 'ba', 'ba', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bae3b34a2b5948ac996c8bc836362458', '385e6874bee2473d8b6cd73244fd46f6', '107002001400', '��ˢ', 'ge', 'ge', 1, '����|��ë', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8ffd1505191642c4a13180917948c85c', '385e6874bee2473d8b6cd73244fd46f6', '107002001500', 'Ĩ��', 'kuai', 'kuai', 1, '��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6bd212b1a59d4b7aba6724c181a74360', '62d5dc7fd13640b18285c5937c951929', '111002000800', 'ǩ����', 'ben', 'ben', 100000, '��|25*35.5CM|�̽�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('536de0b12f9f4e00b48aac2353e383f3', '385e6874bee2473d8b6cd73244fd46f6', '107002001600', 'Ĩ��', 'kuai', 'kuai', 1, '��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('93af7bf0b6914a2c9369f294eb21a30d', '385e6874bee2473d8b6cd73244fd46f6', '107002001700', '��ˮ����', 'kuai', 'kuai', 1, '8*5cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1a2a5695ac2b4531bf14609a0e4717d0', '385e6874bee2473d8b6cd73244fd46f6', '107002001800', 'ϴ�ྫ', 'ping', 'ping', 1, '1L|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3a379565a3b845ab8e265d605030a973', '385e6874bee2473d8b6cd73244fd46f6', '107002001900', '�ϰѼ�', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bc76ff287f974255868dd0f754c8de8f', '385e6874bee2473d8b6cd73244fd46f6', '107002002000', 'ϴ�·�', 'dai', 'dai', 1, '750g|̭��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('af076bba087c47a8b4562c569cdb0562', '385e6874bee2473d8b6cd73244fd46f6', '107002002100', 'ɨ��', 'ba', 'ba', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('db8262fcfaf84b8982db7cb84f710c47', '385e6874bee2473d8b6cd73244fd46f6', '107002002200', 'ɨ��', 'ba', 'ba', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b3ce95d869594f25afbc0ce944d899a0', 'c06a0d7253934c8d81f05a63ab63c393', '109001000100', 'ϴ����װ', 'tao', 'tao', 1, '���ӡ����ߡ���ԡҺ��ϴ��Һ��������װ��ԡñ������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0c666d4afcd74d6c92ad02c603c5d099', 'c06a0d7253934c8d81f05a63ab63c393', '109001000200', 'Сë��', 'tiao', 'tiao', 1, 'һ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('140f21dad45b472dbf0e917b1f70ce56', 'c06a0d7253934c8d81f05a63ab63c393', '109001000300', '��ԡ¶', 'dai', 'dai', 1, 'һ����|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('cb8be5ced6144d119676d648abd3006a', 'c06a0d7253934c8d81f05a63ab63c393', '109001000400', 'ϴ��¶', 'dai', 'dai', 1, 'һ����|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2e959f12f1364ae6ae00bfabe5d1ddc8', 'c06a0d7253934c8d81f05a63ab63c393', '109001000500', 'ѹˮ�ϲ�Ͱ', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e6c9b81f9eb94db2ac3afb6d8c9e0b32', 'c06a0d7253934c8d81f05a63ab63c393', '109001000600', '����', 'ge', 'ge', 1, 'һ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a217e9e03c1044febc69d99c71cbe076', 'dc6857c4f62d475ca4d1858de6906582', '109002000100', '̨��', 'zhang', 'zhang', 1, 'һ����|1.6m', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('deb23e68979f48098839d2ce1d43cf9f', 'dc6857c4f62d475ca4d1858de6906582', '109002000200', '����', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('cbc8b69b313c4ba6838e42bac3d3934a', 'dc6857c4f62d475ca4d1858de6906582', '109002000300', '������', 'ge', 'ge', 1, 'һ����|ֽ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ce3267e79ebc49faa5dfcb372d5e798d', 'dc6857c4f62d475ca4d1858de6906582', '109002000400', '����', 'shaung', 'shaung', 1, 'һ����|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('aded0acc57674f8faa1f3a1419a9f8bf', 'dc6857c4f62d475ca4d1858de6906582', '109002000500', '��ͺ�', 'ge', 'ge', 1, 'һ����|4��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('353b83da26b040589e12dbcb7a879189', 'dc6857c4f62d475ca4d1858de6906582', '109002000600', '�����', 'ge', 'ge', 1, '36', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b90c20c32f1b439fa64d20015e79a47e', 'dc6857c4f62d475ca4d1858de6906582', '109002000700', '����', 'shaung', 'shaung', 1, 'һ����|�����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fdbb5a5143e74b4a9333b34d9f9bc0e5', 'dc6857c4f62d475ca4d1858de6906582', '109002000800', '�ͺ�', 'ge', 'ge', 1, '�ɽ���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1512d5f1eb0f4ed986045d7743e1cc3e', 'dc6857c4f62d475ca4d1858de6906582', '109002000900', 'һ���Կ���', 'shaung', 'shaung', 1, 'ľ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('165d233a11e04de78eedc5a5f9f30902', 'dc6857c4f62d475ca4d1858de6906582', '109002001000', 'һ������', 'ge', 'ge', 1, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('da16392e876c468f988c2435fe40208c', 'dc6857c4f62d475ca4d1858de6906582', '109002001100', '����ֽ', 'zhang', 'zhang', 1, '����ֽ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e10219d0d82a42449e7b0f4439bdeab3', 'c110e353820d4bcfa81816e9761c8e26', '109004000100', '����', 'shaung', 'shaung', 1, '7.5#|һ����|�з���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c7d652dae96d4d388920694d8a434310', 'c110e353820d4bcfa81816e9761c8e26', '109004000200', 'ѹ���', 'ge', 'ge', 1, 'ľ��|һ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d6f5f609b7f34a26aaaead37420a4392', '7e2928bcbe2e4eb1b285cd14cb4dbe4e', '111001000100', 'A4��ӡֽ', 'bao', 'xaing', 500000, '70g', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1420ac3f84804521aea19f6a30649f31', '7e2928bcbe2e4eb1b285cd14cb4dbe4e', '111001000200', '��ֽ', 'bao', 'bao', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6a92ee3eddb740918cc64763ebe9fd14', '62d5dc7fd13640b18285c5937c951929', '111002000100', '��Ƥ��', 'ben', 'ben', 100000, 'A5|40ҳ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f9e851a37d884b3fa70f65ecc62d931c', '62d5dc7fd13640b18285c5937c951929', '111002000200', '��Ƥ��', 'ben', 'ben', 100000, 'B5|40ҳ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('79715a5a041346ea8e95fb2bd2acac3d', '62d5dc7fd13640b18285c5937c951929', '111002000300', 'Ƥ�汾', 'ben', 'ben', 100000, 'B5|100ҳ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7daa62f1390b4e99a710024da5e2085f', '62d5dc7fd13640b18285c5937c951929', '111002000400', 'Ƥ�汾', 'ben', 'ben', 100000, 'B5|100ҳ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d5f3ed2836fb4868a1c3e95408ece132', '62d5dc7fd13640b18285c5937c951929', '111002000500', '������', 'ben', 'ben', 100000, 'B5|100ҳ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5a62b91253b0439ebd4cd660e6b96cfe', '62d5dc7fd13640b18285c5937c951929', '111002000600', '��ҳƤ', 'ben', 'ben', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7991e69a71ba49a2860d30792dd49fcc', '62d5dc7fd13640b18285c5937c951929', '111002000700', '��ҳо', 'ben', 'ben', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f1a77ceeef1e48cab47b15617981ace5', 'b19d36de1be7478ebedc6e0a43b293bb', '111003000100', '����ǩ�ֱ�', 'zhi', 'he', 120000, 'ˮ��|��(0.5)', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('31959c13027f4d7387d9f8bfabb0b4b8', 'b19d36de1be7478ebedc6e0a43b293bb', '111003000200', '����ǩ�ֱ�', 'zhi', 'he', 120000, 'ˮ��|��(0.5)', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1e70bf4c2671469e908b9e388c10a6e5', 'b19d36de1be7478ebedc6e0a43b293bb', '111003000300', '����ǩ�ֱ�', 'zhi', 'he', 120000, 'ˮ��|��(0.5)', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('426cd168f8da472fb746b70fe40284fe', 'b19d36de1be7478ebedc6e0a43b293bb', '111003000400', '����ǩ�ֱ�', 'zhi', 'he', 120000, 'ˮ��|��(0.38)', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6aedcf91dd54440292f31a124d34a06b', 'b19d36de1be7478ebedc6e0a43b293bb', '111003000500', '����ǩ�ֱ�', 'zhi', 'he', 120000, 'ˮ��|��(0.38)', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('962718f252a94b8e8347eaeee90e6776', 'b19d36de1be7478ebedc6e0a43b293bb', '111003000600', '����ǩ�ֱ�', 'zhi', 'he', 120000, 'ˮ��|��(1.0��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fdf06e9873284a359c59afc88a0d0806', 'b19d36de1be7478ebedc6e0a43b293bb', '111003000700', '����ǩ�ֱ�о', 'zhi', 'he', 200000, 'ˮ��|��(0.5)', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('95f0dd969c104c05bebc62aa9897b4d9', 'b19d36de1be7478ebedc6e0a43b293bb', '111003000800', '����ǩ�ֱ�о', 'zhi', 'he', 200000, 'ˮ��|��(0.5)', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9411b62291394c5eb5cc13908ed1c48d', 'b19d36de1be7478ebedc6e0a43b293bb', '111003000900', '����ǩ�ֱ�о', 'zhi', 'he', 200000, 'ˮ��|��(0.5)', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('03802d0baca14674bcfc565b227d329f', 'b19d36de1be7478ebedc6e0a43b293bb', '111003001000', '����ǩ�ֱ�о', 'zhi', 'he', 200000, 'ˮ��|��(1.0��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6c17b3d0130f4d1aa6af520b052fae01', 'b19d36de1be7478ebedc6e0a43b293bb', '111003001100', '����ǩ�ֱ�о', 'zhi', 'he', 200000, 'ˮ��|��(0.38)', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ecce8bbf7e764770b21b081a312c9141', 'b19d36de1be7478ebedc6e0a43b293bb', '111003001200', '����ǩ�ֱ�о', 'zhi', 'he', 200000, 'ˮ��|��(0.38)', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3916fc280ecf4f14a593caf59aec023a', 'b19d36de1be7478ebedc6e0a43b293bb', '111003001300', '����Բ���', 'zhi', 'he', 360000, '��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3099eb1201fc48a6bbcac4f982b6a1d7', 'b19d36de1be7478ebedc6e0a43b293bb', '111003001400', '����Բ���о', 'zhi', 'he', 400000, '��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('99b2c7bacd454a3e91cfa528f756703d', 'b19d36de1be7478ebedc6e0a43b293bb', '111003001500', '�����װ��', 'zhi', 'zhi', 100000, '��|��|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b1d8f0942a614d5881d8699523d4654b', 'b19d36de1be7478ebedc6e0a43b293bb', '111003001600', '�����Ǻű�', 'zhi', 'zhi', 100000, '��|��|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('569c9b5c1672419ba18dab76973a0069', 'b19d36de1be7478ebedc6e0a43b293bb', '111003001700', '����ӫ���', 'zhi', 'zhi', 100000, '��|��|��|��|��|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('63ad4691790d41fa8e7a7c4c263f979d', 'b19d36de1be7478ebedc6e0a43b293bb', '111003001800', '���Ա�˫ͷ', 'zhi', 'zhi', 100000, '��|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('88b9b34650e04d299f29bd529ad28574', 'b19d36de1be7478ebedc6e0a43b293bb', '111003001900', '�Զ�Ǧ��', 'zhi', 'zhi', 100000, '0.50', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('29b7beb49a9c4a3894d98899286b4989', 'b19d36de1be7478ebedc6e0a43b293bb', '111003002000', '�Զ�Ǧ��о', 'he', 'he', 100000, '0.50', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3e8bc12007b44e17a71f98c36114f38c', 'b19d36de1be7478ebedc6e0a43b293bb', '111003002100', 'Ǧ��', 'zhi', 'zhi', 100000, 'ľ��|2B', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f062347e4bd242fb8c53fbbdb36a6a94', 'b19d36de1be7478ebedc6e0a43b293bb', '111003002200', 'Ǧ��', 'zhi', 'zhi', 100000, 'ľ��|HB', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2364b18776364cae80b8dc41f90d7a01', 'b19d36de1be7478ebedc6e0a43b293bb', '111003002300', '��ɫˮ�ʱ�', 'tao', 'tao', 100000, '24ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c75d6345d726492287bd74f24980f3f6', '25255cd0d0264311a6fd37524ca491fc', '111004000100', '���ڵ��', 'jie', 'jie', 100000, '5��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e3ba8fa93f564dd6ab15cf438f770fc8', '25255cd0d0264311a6fd37524ca491fc', '111004000200', '���ڵ��', 'jie', 'jie', 100000, '7��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5199e99f7f8a45b8a7297e7607600e5a', '25255cd0d0264311a6fd37524ca491fc', '111004000300', '���ڵ��', 'jie', 'jie', 100000, '1��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0d6bd28d95ca4412b6555dfeefcff521', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005000100', '������¼���绰', 'bu', 'bu', 100000, 'HCD198', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('00e4554899c54f758147988ed0f1245e', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005000200', '�����ߵ绰', 'bu', 'bu', 100000, 'HCD113', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('21abb37593f143b19ba89f32fd9caaf1', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005000300', '�����绰', 'bu', 'bu', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0c73e3db52334ed4baf09e9e43b98f4d', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005000400', '���߰�', 'ge', 'ge', 100000, '8λ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3cc4cd7de5f14b40be32a3f990fd13ec', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005000500', '���߰�', 'ge', 'ge', 100000, '6λ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5a8e76b483cf408698d83394c12525c1', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005000600', '���߰�', 'ge', 'ge', 100000, '4λ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('82f9ecac351940c984a50d57a57e049e', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005000700', '�����װ�', 'ge', 'ge', 100000, '��ʽ|60*90', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('039e750fc2e7446cac63ffcce51dfc3c', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005000800', '�����װ�', 'ge', 'ge', 100000, '��ʽ|1.2*0.9', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0d1896121a8d4d3da01bbf4e0b579a63', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005000900', '�����װ�', 'ge', 'ge', 100000, '��ʽ|1.8*1.2', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5ca378dd282b416c8fcd2470e3e04b2c', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005001000', '�����װ�', 'ge', 'ge', 100000, '��ʽ|1.5*0.9', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('710f28f4db30493d9a50fdbe564634ce', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005001100', '�����װ�', 'ge', 'ge', 100000, '��ʽ|2.4*1.2', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e346addda01e4dbdac06565796c5d270', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005001200', '�����װ��', 'ge', 'ge', 100000, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5b4b721d22564957b6e3942deb5b8de9', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005001300', '������', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('56ce17d6aea546ef8424526a3872c5f3', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005001400', '������', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d246bf9f5c2e4647994be4da30c27124', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005001500', '����������', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2767c6bed4864a018af3c78db5b7360a', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005001600', 'С������', 'ge', 'ge', 100000, '12λ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7eabfe34afbc457a96c94f6ac20582d3', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005001700', '����������', 'ge', 'ge', 100000, '���', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5ecf9144ab5c41d2bb15a525a75ac8b7', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005001800', '����������', 'ge', 'ge', 100000, '�к�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('02a895d9ef6040379500babd7f225713', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005001900', '��������', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d343b70abb5f480a845ba4d12f71bbb9', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005002000', '�������鶤', 'he', 'he', 100000, '�غ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6785937835e442448539bf1ba2a85f47', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005002100', '�������鶤', 'he', 'he', 100000, null, 'ʹ��', null);
commit;
prompt 600 records committed...
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('59e5f1421a714782aa76ffb2635e31c3', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005002200', '�Ϻ�����', 'ge', 'ge', 100000, '15��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('81627555c5c043b9b8da05a4b22e6952', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005002300', '������ˮ', 'ge', 'ge', 100000, '50ML', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c136de1ee8ff4498bf3b18f0b02619c5', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005002400', '��������彺', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('aee1c716eddc4a4e9a075c8fa10ef37e', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005002500', '����AB��', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('01a8f734d8144738a8ed165bf8878777', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005002600', '����502��', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('980c2ac6ac574c39bcba9fb7a014b413', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005002700', '������ֽ��', 'ba', 'ba', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a678e0a91f5f42d9bbdfea64b51345e5', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005002800', '����������Ƭ', 'he', 'he', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d0e2e31f98bc4ccdb53fb7bc13d05877', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005002900', '����ֱ��', 'ba', 'ba', 100000, '30CM|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('26cbda40443e4180ab6bc0b40c21bca8', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005003000', '�������ǰ�', 'ba', 'ba', 100000, '16cm|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fb952731ba894ac78427d762e4476607', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005003100', '����������', 'he', 'he', 100000, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('29a64b91d6f945cfa692938b62029372', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005003200', '����������', 'he', 'he', 100000, '��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e7d370fe374743f1807ad0f2ffc4eddb', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005003300', '����', 'he', 'he', 100000, '�к�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('12a54ac660414bb2899e444ed64b981a', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005003400', '������ʵ�', 'ge', 'ge', 100000, 'п�Ͻ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9f66b8b86d1a41b1b68aa0e5a02ea118', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005003500', '��������', 'juan', 'juan', 100000, '��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1f2fcd8d6cd345f9ad849e2f45908976', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005003600', '��������', 'juan', 'juan', 100000, 'С', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3ec257bc8e6c4a308f626f431cd27de5', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005003700', '˫�潺', 'juan', 'juan', 100000, '36MM*8', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a4af3e5f554b473b84bf4dec0f7124ff', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005003800', '˫�潺', 'juan', 'juan', 100000, '18MM*16', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8506dfd1966f4ad4ad3cf766cbdb4798', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005003900', '������β��', 'he', 'he', 100000, '��ɫ|25MM', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('51e6dec04d89415c9146030b726df96f', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005004000', '������β��', 'he', 'he', 100000, '��ɫ|32MM', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7bc424a3bc044160ba900c78ed9fb72e', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005004100', '������β��', 'he', 'he', 100000, '��ɫ|41MM', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('cb76ce2db1934c8ca5252d6c2321725c', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005004200', '������β��', 'he', 'he', 100000, '��ɫ|32MM', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('67f966ccd51e4226bbc0a71b18370893', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005004300', '������β��', 'he', 'he', 100000, '��ɫ|25MM', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('33b3b030a1d84e4f979c107f14a248e0', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005004400', '������β��', 'he', 'he', 100000, '��ɫ|19MM', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('af632c1039024f2f89613dba355cfaf3', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005004500', '������β��', 'he', 'he', 100000, '��ɫ|15MM', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f9245b14513c46778db4ca1f7642eee1', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005004600', '�����������', 'ge', 'ge', 100000, '��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('00fbcacb2f9f42878090ab2ae89b7003', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005004700', '�����������', 'ge', 'ge', 100000, '��ɫ����|100*4', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('336c1bcc42a6411c87551d5c21466200', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005004800', '������', 'ge', 'ge', 100000, '��ɫ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('70f538430b2d45bfbe16d88294654865', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005004900', 'ӫ����', 'ge', 'ge', 100000, '��ȡʽ|6ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3275d62a6c61479b85d8cde1813df839', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005005000', '������ȡֽ', 'dai', 'dai', 100000, '��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d4c1e4f7d0bb43febaa9546827590568', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005005100', '������ȡֽ', 'dai', 'dai', 100000, '��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('90f96b7b73f94d5fb5dd65299c299be3', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005005200', '������ȡֽ', 'dai', 'dai', 100000, '���|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5fb8b0f66d88406cb7690431456bfdc9', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005005300', '������ȡֽ', 'dai', 'dai', 100000, '���|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('75a1238b4acd4806b884f82e4d90430f', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005005400', '������������', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('49544047aad54dd6a7a8a40204e73e93', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005005500', '����������Һ', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b54c3eb7385e471e988dba53f96682bc', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005005600', 'A4�ҿ��̼�', 'ge', 'ge', 100000, '��|��|��|��|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('319e8bcb163f4a8ba603453cfca83164', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005005700', '����ӡ��', 'ge', 'ge', 100000, '105mm|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7253729396864d098d727c0fe3baff36', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005005800', '����ӡ̨', 'ge', 'ge', 100000, '��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fcf31642ed48452c9041dd96d947c404', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005005900', '����ӡ̨', 'ge', 'ge', 100000, '��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7bcbd6cf76da41c49726d0d26cdecd97', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005006000', '����ӡ��', 'ge', 'ge', 100000, '��|10ml|��������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('aed244c531be4f3abe0f593b70b72ec3', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005006100', '����ӡ��', 'ge', 'ge', 100000, '��|10ml|��������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f99e478f4d2c4f3e8ce6a3e6d34d3d49', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005006200', '���ӡ��', 'ge', 'ge', 100000, '����|��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('090f9c221003488ea4c054cb79ea8274', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005006300', 'A4ֱ���', 'ge', 'ge', 100000, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('37208c18d713413087ee5454884f077c', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005006400', '�����ŷ�', 'ge', 'ge', 100000, '5��|��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('30f57fdf7e254ada97e1d8c769d2f447', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005006500', 'A4�ŷ�', 'ge', 'ge', 100000, 'ţƤֽ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('dfbab6be56354bb6bc8bd11cf9e7b2a9', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005006600', 'A5�ŷ�', 'ge', 'ge', 100000, 'ţƤֽ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5afbfe46ff1842ddaa7d54524a89a1cb', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005006700', '��׼�ŷ�', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ec8317a3013e401eade509c378667760', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005006800', 'Ƥ��', 'dai', 'dai', 100000, '��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d0abe7ade200490d84bcd4995de01e08', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005006900', '����Ƥ��', 'dai', 'dai', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('36c046361f4448d5b11f4a9e04370650', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005007000', '��������', 'ba', 'ba', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bdf020bb3a9642709ddbd8d8c21b476f', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005007100', '�������ֶ�', 'he', 'he', 100000, '��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9b7016ebfc534f54b83a3a18487214e6', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005007200', '��������', 'ge', 'ge', 100000, '��ĥ��|200MM*250MM', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e20181443070463f8024fa903b7751b0', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005007300', 'ֽ¨', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0d5eab6d38584241af1626926f919fb3', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005007400', '�����', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('77d4d19275a541beaf5b26ab68c3aeb3', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005007500', '����', 'dai', 'dai', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6744df0eef7044b2b3d640c476f6a9f0', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005007600', '������', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c69b31450d3c4380aa36cf6b2d3c0b77', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005007700', '������Ͳ', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('482e0360670a4227b141c2ca0f4e5377', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005007800', '�Ϻ���Ƥ', 'kuai', 'kuai', 100000, '4B��ͼ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('81f129dd825243f58043c4d26b82d4d4', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005007900', '�������ܷ�Ĥ', 'bao', 'bao', 100000, '10��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('dbae7349fdb041ec8e16e19e7fe4c15d', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005008000', '���ܷ�Ĥ', 'bao', 'bao', 100000, '8��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0649b8e9b8a241debc28039b85af652f', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005008100', '���ߺ�', 'he', 'he', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('026194d92227414ca166f1cda0b9f9f3', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005008200', '������', 'kun', 'kun', 100000, '��|70��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7e742df6bb3d42c3aa8bbaf257cf8fe7', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005008300', '���º�', 'ge', 'ge', 100000, '3.5cm', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('cf920c228d96411a86086ee07e990643', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005008400', '���', 'ge', 'ge', 100000, '�̽�ϲ��|12��12С', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d635aa4003d54955899df31bddb201c9', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005008500', '����������', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('cc7c87d5e3d54ab9a6108ca10a4fd859', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005008600', '������¼����', 'ge', 'ge', 100000, 'R6611', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('aff217a5dbaf439e90d09f57a04c46ab', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005008700', '֤����', 'ge', 'ge', 100000, '��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f798937218264292b9bef47a5d7113ca', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005008800', '����', 'mian', 'mian', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1ab562cccc92423cb2abf3e3ae4d5d86', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005008900', 'ɨ��+��ݽ', 'tao', 'tao', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('119f710a970249f58ee3015c9b3353cf', '6c45d6e8a99c4b1ba42d29d15266daa6', '111005009000', '�ϲ�', 'ba', 'ba', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b21a29ecb9ec43ba84bfc7165ff89c5d', 'f4908a990e244539965dc4ff2b673fa1', '111006000100', '����A4�ļ���', 'ge', 'ge', 100000, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('09a08b4650944d7583d1e6ed104d861f', 'f4908a990e244539965dc4ff2b673fa1', '111006000200', '�����ļ���', 'ge', 'ge', 100000, 'ʮһ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('bfb9426b29d948a297e92cde5b2babfd', 'f4908a990e244539965dc4ff2b673fa1', '111006000300', '�ļ���', 'ge', 'bao', 100000, 'ʮһ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c0514372d77a4f86be3b35d60f5af32f', 'f4908a990e244539965dc4ff2b673fa1', '111006000400', '����A4�ļ���', 'ge', 'ge', 100000, '������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('83d6c9d70af74026a59f4267bf05be48', 'f4908a990e244539965dc4ff2b673fa1', '111006000500', '����A4�ļ���', 'ge', 'ge', 100000, '˫����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c9316b4a10c040cdb07af6ffd1e2f220', 'f4908a990e244539965dc4ff2b673fa1', '111006000600', '������˼�', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a3af029f74224812b0b3d494fff15d95', 'f4908a990e244539965dc4ff2b673fa1', '111006000700', '�������ϼ�', 'ge', 'ge', 100000, '������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('68dfaef9bca847df80e1b6a5508eac0c', 'f4908a990e244539965dc4ff2b673fa1', '111006000800', '�������ϼ�', 'ge', 'ge', 100000, '˫��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2d52b57e04864a3381a14c0f75cf29b8', 'f4908a990e244539965dc4ff2b673fa1', '111006000900', '�����ļ���', 'ge', 'ge', 100000, '40ҳ|���ϲ�ҳ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3203894dec5940c8b786dc0c506f7209', 'f4908a990e244539965dc4ff2b673fa1', '111006001000', '�����ļ���', 'ge', 'ge', 100000, '60ҳ|���ϲ�ҳ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('91b394cc346743b9936f135601b121ae', 'f4908a990e244539965dc4ff2b673fa1', '111006001100', '�����ļ���', 'ge', 'ge', 100000, '100ҳ|���ϲ�ҳ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a93c0c1707034d3fa881baa301ab849b', 'f4908a990e244539965dc4ff2b673fa1', '111006001200', '�ĸ��鵵', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ceebff43f66249d1af380bcc69a7b3d7', 'f4908a990e244539965dc4ff2b673fa1', '111006001300', '�������Ϻ�', 'ge', 'ge', 100000, '����|��|��|��|��|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('608ba136ce7248739a564a5656981ae2', 'f4908a990e244539965dc4ff2b673fa1', '111006001400', '�������Ϻ�', 'ge', 'ge', 100000, '����|��|��|��|��|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c40a231f68504b019fa8a06675812748', 'f4908a990e244539965dc4ff2b673fa1', '111006001500', '�������Ϻ�', 'ge', 'ge', 100000, '����|��|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3167ab54265e412a8bc3a10402aeb47b', 'f4908a990e244539965dc4ff2b673fa1', '111006001600', '�������Ϻ�', 'ge', 'ge', 100000, '����|��|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a9d3cfc4c8ae4d24bdfc07c69936dbe3', 'f4908a990e244539965dc4ff2b673fa1', '111006001700', '������', 'ge', 'ge', 100000, '����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0bbf4b17814f4155ab5d7d68db6d1af5', 'f4908a990e244539965dc4ff2b673fa1', '111006001800', '������', 'ge', 'ge', 100000, 'ţƤֽ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('552ee04d459b4fdea3ff651683bff32c', 'f4908a990e244539965dc4ff2b673fa1', '111006001900', 'L�����', 'ge', 'bao', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('169a719f70f149fbab755a28a54a85e9', 'f4908a990e244539965dc4ff2b673fa1', '111006002000', 'A4�۴�', 'ge', 'ge', 100000, '��ɫ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('892e83993f3a401f98834dc54c2cc740', 'f4908a990e244539965dc4ff2b673fa1', '111006002100', 'A4���ߴ�', 'ge', 'ge', 100000, '����|��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('211a286c428b495695ef4f6bdbb55db9', 'f4908a990e244539965dc4ff2b673fa1', '111006002200', '�������ټ�', 'ge', 'ge', 100000, 'A4|13��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('84b71c5bb9c7400c88d0ed4ec2dd285a', 'f4908a990e244539965dc4ff2b673fa1', '111006002300', '���ټ�', 'ge', 'ge', 100000, '12��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9a0388be4156420bb286689d20376812', 'f4908a990e244539965dc4ff2b673fa1', '111006002400', '����A4�����', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('215296200cd14d81946dc9c449163699', 'f4908a990e244539965dc4ff2b673fa1', '111006002500', '�Է��', 'ge', 'ge', 100000, '700mm*600mm|���0.12', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9571132d83534ac481311024014e8b47', 'f4908a990e244539965dc4ff2b673fa1', '111006002600', '�Է��', 'ge', 'ge', 100000, '330*220|���0.08', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('2948afcef7644e63be81e941c84211f8', 'f4908a990e244539965dc4ff2b673fa1', '111006002700', '�Է��', 'ge', 'ge', 100000, '155*100|���0.08', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('39c414f6012f4a02a8a271b9d68a9be1', 'f4908a990e244539965dc4ff2b673fa1', '111006002800', '�Է��', 'ge', 'ge', 100000, '330*220|���0.08����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('eb1d75d79ccf458c8dc62b5c450991ae', 'f4908a990e244539965dc4ff2b673fa1', '111006002900', '�������ϰ�װ��', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('34c6f7101ff943b1a62a75393c962bf9', 'f4908a990e244539965dc4ff2b673fa1', '111006003000', '��̺��װ��', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b6e2359e7a664d548be1bda737316304', 'f4908a990e244539965dc4ff2b673fa1', '111006003100', '�����������ļ���', 'ge', 'ge', 100000, null, 'ʹ��', null);
commit;
prompt 700 records committed...
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b3b85ab980334a7bbe5022a64089ab03', '01511bdd1eb74dc4bdbbf7aee5d7e30a', '111007000100', '֧Ʊ��', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('474195302595400f81f7ea5cf76751bc', '01511bdd1eb74dc4bdbbf7aee5d7e30a', '111007000200', '��������', 'ben', 'ben', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('be85b810337a4f56a39e2e9ce2454e19', '01511bdd1eb74dc4bdbbf7aee5d7e30a', '111007000300', '������ϸ��', 'ben', 'ben', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('afba3a0e9d0d4869af5970cb944643f6', '01511bdd1eb74dc4bdbbf7aee5d7e30a', '111007000400', '����������', 'ben', 'ben', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('655ff54ecf844973b682dcc43d9095f8', '01511bdd1eb74dc4bdbbf7aee5d7e30a', '111007000500', '���������˲���Ƥ', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('07109f36a2f14d96bd80a357e5208c00', '01511bdd1eb74dc4bdbbf7aee5d7e30a', '111007000600', '�����ʶ�', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8fe79795da8542c4a9879e05783f5ae4', '01511bdd1eb74dc4bdbbf7aee5d7e30a', '111007000700', '����ƾ֤Ƥ', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('325edcb1a8cd4f7eb6e9dc6927f6ddea', '01511bdd1eb74dc4bdbbf7aee5d7e30a', '111007000800', '����ⵥ', 'ben', 'ben', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e235056c2b424814a82304fe8a3cad94', '01511bdd1eb74dc4bdbbf7aee5d7e30a', '111007000900', '��Դ�����վ�', 'ben', 'ben', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d95013f598174e12885fc977064fab64', '01511bdd1eb74dc4bdbbf7aee5d7e30a', '111007001000', '���������վ�', 'ben', 'ben', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8535df9687c545768662c654110ff71c', '8441f90b27c54c98b0b8a5f964a17368', '111008000100', '��������', 'ge', 'ge', 100000, '388', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8b540fa2c5394db9b5783669d669dbee', '8441f90b27c54c98b0b8a5f964a17368', '111008000200', '��������', 'ge', 'ge', 100000, '278', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c463a1d1c1614d5ca3e0a7fbd06ecf93', '8441f90b27c54c98b0b8a5f964a17368', '111008000300', '��Ʊ��ɫ��', 'juan', 'juan', 100000, '��֮��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('174f4cd16a604bc9969855fb11e20ab7', '8441f90b27c54c98b0b8a5f964a17368', '111008000400', '����', 'ge', 'ge', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('eea07975017e444eb18dd150fc65e586', '8441f90b27c54c98b0b8a5f964a17368', '111008000500', '�շ��ϱ�ǩ��ӡɫ��', 'juan', 'juan', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('75e6fc9683aa44f98889a4550debf7cd', '8441f90b27c54c98b0b8a5f964a17368', '111008000600', 'POSS����ӡֽ', 'juan', 'juan', 100000, null, 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4b5fe17b51f941fc86da7d59903203bd', '8441f90b27c54c98b0b8a5f964a17368', '111008000700', 'ŵ���շ���ӡֽ', 'juan', 'juan', 100000, '100mm*70mm|690��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('a1f59d5a1e11426f9551a51f249e4abe', 'd017f6681d574a95907ab783b647e0bf', '112001000100', '��ʾ��', 'tai', 'tai', 1, '|21.5��| ����Ѷ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('9689ea1b2fd2460386300a39a10fe38a', 'd017f6681d574a95907ab783b647e0bf', '112001000200', '��ʾ��', 'tai', 'tai', 1, '|21.5��|  AOC', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0ca151eab825410983e3b310241bb3a0', 'd017f6681d574a95907ab783b647e0bf', '112001000300', '��ʾ��', 'tai', 'tai', 1, '|21.5��|������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('85af357592894a88a4857abe0c0741d5', 'd017f6681d574a95907ab783b647e0bf', '112001000400', '��ʾ��', 'tai', 'tai', 1, '|27��|������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('55506729d9464942aeb163e1a8e47e5e', 'd017f6681d574a95907ab783b647e0bf', '112001000500', '��ʾ��', 'tai', 'tai', 1, '|27��-HDMI|������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7d6b10ea19f9474e991d6f5f87053435', 'd017f6681d574a95907ab783b647e0bf', '112001000600', '��ʾ��', 'tai', 'tai', 1, '|24��|AOC', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('42bff123677441ddbdd0232bfd736703', 'd017f6681d574a95907ab783b647e0bf', '112001000700', '��ʾ��', 'tai', 'tai', 1, '|24��-HDMI|AOC', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5dcd62f3bcc94cefa40aa5828d75a75d', 'd017f6681d574a95907ab783b647e0bf', '112001000800', '��ʾ��', 'tai', 'tai', 1, '|24��|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('87a3d04d51e8481b9c16eb5f424ad742', 'd017f6681d574a95907ab783b647e0bf', '112001000900', '��ʾ��', 'tai', 'tai', 1, '|27��-HDMI-S27E390H|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('973f02fa829b4344a14db4742ceb38ef', 'd017f6681d574a95907ab783b647e0bf', '112001001000', 'U��', 'ge', 'ge', 1, '|32G|��֥', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d2c37ee7e11e4af48634d02929da66e0', 'd017f6681d574a95907ab783b647e0bf', '112001001100', 'U��', 'ge', 'ge', 1, '|64G|��֥', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('34f246f76a7749638b49c1227d0bf252', 'd017f6681d574a95907ab783b647e0bf', '112001001200', '�ƶ�Ӳ��', 'ge', 'ge', 1, '|500G|Ŧ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('1f493006036b46d7a9cef4953912b786', 'd017f6681d574a95907ab783b647e0bf', '112001001300', '�ƶ�Ӳ��', 'ge', 'ge', 1, '|1T|Ŧ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e49ad0ab35434079b2982d392463bf8b', 'd017f6681d574a95907ab783b647e0bf', '112001001400', '����ͷ', 'ge', 'ge', 1, '|HYC-S600|�ִ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e0f0645d090543d7b2dacd83f328d9b7', 'd017f6681d574a95907ab783b647e0bf', '112001001500', '����ͷ', 'ge', 'ge', 1, '|C270 |�޼�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c095b7061426475d96625ca2f80b659b', 'd017f6681d574a95907ab783b647e0bf', '112001001600', 'USB��', 'ge', 'ge', 1, '|��ɫ 1.5�� |Ʒʤ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d5e644ea9223437e919b99cb8d6f736a', 'd017f6681d574a95907ab783b647e0bf', '112001001700', '�������', 'tao', 'tao', 1, '|MK270 |�޼�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5c8e3e0e782a4264ad3723fee471594e', 'd017f6681d574a95907ab783b647e0bf', '112001001800', '�ʼǱ��������', 'ge', 'ge', 1, '|H680|�Ϲ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7e0ca8931e9540efb20531a9c90cdd99', 'd017f6681d574a95907ab783b647e0bf', '112001001900', '�ʼǱ����Լ���', 'ge', 'ge', 1, '|HY-KA7| �ִ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('99c4f25f57c247a29ee6e0eee636a890', 'd017f6681d574a95907ab783b647e0bf', '112001002000', '����', 'ge', 'ge', 1, '|CJC-8213|�ִ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('45278ee76fff439da365630102881251', 'd017f6681d574a95907ab783b647e0bf', '112001002100', '��˷�', 'ge', 'ge', 1, '|SM-008|˶����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('dff754134e784566aa766ea90d570213', 'bcdf272857e446c68e42a9623ba57601', '112002000100', '�ʼǱ�����', 'tai', 'tai', 1, 'ThinkPad E450 CPU��I3 5300  �ڴ�:4G Ӳ�̣�500G', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('266fc86434e548398704e0a84849368f', 'bcdf272857e446c68e42a9623ba57601', '112002000200', '�ʼǱ�����', 'tai', 'tai', 1, 'ThinkPad E450 CPU��I5 5300  �ڴ�:8G Ӳ�̣�1T', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ffc9983aee6145d88e595069b5725b9f', 'bcdf272857e446c68e42a9623ba57601', '112002000300', '�ʼǱ�����', 'tai', 'tai', 1, 'ThinkPad E470 CPU��I3 5005U �ڴ�:4G Ӳ�̣�500G', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5d5c9fbdfb27488f8ed3c16fef24afc3', 'bcdf272857e446c68e42a9623ba57601', '112002000400', '�ʼǱ�����', 'tai', 'tai', 1, 'ThinkPad E470 CPU��I3 6006U �ڴ�:4G Ӳ�̣�500G  2G����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('478e1b25c858495a9390fda3fb07672f', 'bcdf272857e446c68e42a9623ba57601', '112002000500', '�ʼǱ�����', 'tai', 'tai', 1, 'ThinkPad E470 CPU��I5 6200U �ڴ�:4G Ӳ�̣�500G', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('997fd19900954e0ab88203cdc9837dbb', 'bcdf272857e446c68e42a9623ba57601', '112002000600', '�ʼǱ�����', 'tai', 'tai', 1, 'ThinkPad E470 CPU��I5 6200U �ڴ�:8G Ӳ�̣�500G  2G����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3164b9fc32cd4811a1ff6e8fbda4716a', 'bcdf272857e446c68e42a9623ba57601', '112002000700', '�ʼǱ�����', 'tai', 'tai', 1, 'ThinkPad E470 CPU��I5 6200U �ڴ�:8G Ӳ�̣�256SSD2G����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ec504eb1fb7a42cf81ef98ca088b5859', 'bcdf272857e446c68e42a9623ba57601', '112002000800', '�ʼǱ�����', 'tai', 'tai', 1, 'Thinkpad�ڽ�S5 CPU��I7 6700 �ڴ�:8G Ӳ��128Gssd+1TFHD ' || chr(10) || '�Կ���GTX960M 2G��������ͷ��3D', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('fa438f2d11f34097bee1ca1d10adff3c', '4ad5fd6d7047498fb7751c003580baeb', '112003000100', 'ƴװ��', 'tai', 'tai', 1, '|CPU��G3260˫�����壺��˶H81 �ڴ�������ʿ��4G Ӳ�̣�ϣ��1T ��ʾ�����ڽ�����Ѷ21.5 ���������Դ ˫���������װ|�������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('275050fd45fe480db776f89093586bcc', '4ad5fd6d7047498fb7751c003580baeb', '112003000200', 'ƴװ��', 'tai', 'tai', 1, '|CPU G3260˫������ ����H81 �ڴ���������4G/��ʿ��4G' || chr(10) || 'Ӳ�̣�ϣ��1T ��ʾ����AOC21.5 �����߻����Դ �޼�������װ|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b3e2aefe1887413bbb7fbedae06d93fe', '4ad5fd6d7047498fb7751c003580baeb', '112003000300', 'ƴװ��', 'tai', 'tai', 1, '|CPU G3260˫������ ����H81 �ڴ���������4G/��ʿ��4G' || chr(10) || 'Ӳ�̣�ϣ��1T ��ʾ����AOC21.5 �����߻����Դ �޼�������װ|ͨ���ŵ�', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('45aa6a598dd04c06b13f64fd19faf0e6', '4ad5fd6d7047498fb7751c003580baeb', '112003000400', 'ƴװ��', 'tai', 'tai', 1, 'ƴװ��|CPU�� I5 4460�ĺ����壺��˶H81 �ڴ�������ʿ��4G Ӳ�̣�ϣ��1T ' || chr(10) || '��ʾ�����ڽ�����ѷ21.5 ���������Դ ˫���������װ|�������', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('7c4bb9257416488f808e2802c056549d', '4ad5fd6d7047498fb7751c003580baeb', '112003000500', 'ƴװ��', 'tai', 'tai', 1, '|CPU�� I5 6500�ĺ����壺��˶B150 �ڴ����� ��ʿ�� 8GӲ�̣�ϣ��1T ��ʾ���� AOC 24��1080p �����߻����Դ �޼�������װ|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('199dca702ca64982af5e24dba8589413', '4ad5fd6d7047498fb7751c003580baeb', '112003000600', 'ƴװ��', 'tai', 'tai', 1, '|CPU�� I5 6400�ĺ����壺��˶B150 �ڴ����� ��ʿ��8G Ӳ�̣�ϣ��2T ��ʾ���� AOC 21.5��1080p �����߻����Դ �޼�������װ|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('961832ee1ad449ee854e094c08885679', '31846ccdf89a41abadf6c5011b7cf7f3', '112004000100', '������', 'tao', 'tao', 1, '|rd450|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f6b7a4c7ba0f47b494669b1a2c72a26a', '31846ccdf89a41abadf6c5011b7cf7f3', '112004000200', '������', 'tao', 'tao', 1, '|rd350����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('e6b8fbdd1efe4baa876e2b383a74e41b', '31846ccdf89a41abadf6c5011b7cf7f3', '112004000300', '������', 'tao', 'tao', 1, '|rd650|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('338dd46e90494247a34c50b7485705a7', '31846ccdf89a41abadf6c5011b7cf7f3', '112004000400', '������', 'tao', 'tao', 1, '|rd640|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('addf08b4233847f883272ca50a0618e1', '31846ccdf89a41abadf6c5011b7cf7f3', '112004000500', '������', 'tao', 'tao', 1, '|x3650 |IBM', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('77eef5bfbaaa4c6a8a6e513d5194b481', '31846ccdf89a41abadf6c5011b7cf7f3', '112004000600', '������', 'tao', 'tao', 1, '|S2600T|��Ϊ', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8848eb9d23044ca8b8d68cc47cefe5db', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005000700', 'Ӳ��', 'tao', 'tao', 1, '| IT |ϣ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('ac2c04ed4abc458e877c63b6e6faf48c', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005000100', 'Ӳ��', 'ge', 'ge', 1, '| 2T |ϣ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('caef1a193b734957903318044979270a', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005000200', '����', 'ge', 'ge', 1, '| 18����| ��˶', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('be1d0544282b417cbd5bed2535d8df98', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005000300', '����', 'ge', 'ge', 1, '|8���� USB2.0|��˶', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c064867a687c49edb036fad180816222', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005000400', '�ڴ���', 'ge', 'ge', 1, '|DDR3 2G |��ʿ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6834c4b2433a4108abbc1585d018cd6e', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005000500', '�ڴ���', 'ge', 'ge', 1, '|DDR3 4G |��ʿ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0f2c686e5443418fbe5b572b23a8766b', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005000600', '�ڴ���', 'ge', 'ge', 1, '|DDR3 2G |����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('38f8d4b8bffd4eaaadf93a32de2a6028', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005000800', '�ڴ���', 'ge', 'ge', 1, '|DDR4 8G|��ʿ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('23a73ecc87e442fb9e783c0784fcdfb4', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005000900', '�ڴ���', 'ge', 'ge', 1, '|DDR4 16G |��ʿ��', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4835f0a17cf74e4ea4b77be896f6c54d', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005001000', '�ڴ���', 'ge', 'ge', 1, '|DDR4 8G |����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6fe0e15e3e234ba694a6a9eac3b3ef59', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005001100', '�ڴ���', 'ge', 'ge', 1, '|DDR4 16G|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('749f8e156b9942c3b2a27aa37c781df5', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005001200', '����', 'ge', 'ge', 1, '|300M|TP-Link', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5a530ac583274209bb31f44387e7bbe0', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005001300', '����', 'ge', 'ge', 1, '|Xonar DG|��˶', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('75e9f30534dc4fbca7f56760cd26bb96', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005001400', '�Կ�', 'ge', 'ge', 1, '|GT730| �߲ʺ�Colorful', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8f776af8442f4f30915ecfffc35d8449', 'ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '112005001500', '�Կ�', 'ge', 'ge', 1, '|GT730| ����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f402ddeb9ab649ac93596ef32f79799d', 'c3744206c6504f64aba77098ed81b831', '112006000100', '������', 'tai', 'tai', 1, '| AU3200|AUTLAN', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('f9a994b626e64df09fcc338d620a1825', 'c3744206c6504f64aba77098ed81b831', '112006000200', '������', 'tai', 'tai', 1, '|2960-48TC-L|CISCO', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d3217b4587404c11b275a619afd7c0f0', 'c3744206c6504f64aba77098ed81b831', '112006000300', '������', 'tai', 'tai', 1, '|TL-SL2218P|TP-LINK', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('5d7b7fa9588445c281931b1affbfe13a', 'c3744206c6504f64aba77098ed81b831', '112006000400', '���ģ��', 'tai', 'tai', 1, '|ǧ��|CISCO', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('30b44d227744473ba84635528b7c6c82', 'c3744206c6504f64aba77098ed81b831', '112006000500', '���ģ��', 'tai', 'tai', 1, '|ǧ��|AUTLAN', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8d48d72ac3944cbe810a48d1fbc02c11', 'c3744206c6504f64aba77098ed81b831', '112006000600', '·����', 'tai', 'tai', 1, '|300Mbps|TP-Link', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('51abe5dcfc8a4ebd8f026e661c82f43b', 'c3744206c6504f64aba77098ed81b831', '112006000700', '·����', 'tai', 'tai', 1, '|600Mbps|TP-Link', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d97a7806fd94454db7317ffe5bab8d83', 'c3744206c6504f64aba77098ed81b831', '112006000800', '·����', 'tai', 'tai', 1, '|���� 300Mbps|TP-Link', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('b9ab673863fc4debb551451d96078a80', 'c3744206c6504f64aba77098ed81b831', '112006000900', '·����', 'tai', 'tai', 1, '|���� 600Mbps|TP-Link', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('6a104e626c5b4e76b7dfcd8ceb3a22e2', '7907aeff9bf9469fa30a7f6d7ec736a2', '112007000100', '���������', 'zu', 'zu', 1, '|rd640-800w|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('8d0f9aaf0ad14fbca6c350c67380080d', '7907aeff9bf9469fa30a7f6d7ec736a2', '112007000200', '���������', 'zu', 'zu', 1, '|rd630-800w|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('0b7d700db9fb4b6f8201c9df1c8f97d1', '7907aeff9bf9469fa30a7f6d7ec736a2', '112007000300', '���������', 'zu', 'zu', 1, '|rd650-550W|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('d707117e48444222983091d9edef9b0f', '7907aeff9bf9469fa30a7f6d7ec736a2', '112007000400', '���������', 'zu', 'zu', 1, '|rd530-550W|����', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('3c40292c37aa400da43af22f927e5930', '7907aeff9bf9469fa30a7f6d7ec736a2', '112007000500', '���������', 'zu', 'zu', 1, '|3650m3-675w|IBM', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('91a8fd662be64be59583c7933d254a00', '7907aeff9bf9469fa30a7f6d7ec736a2', '112007000600', '���������', 'zu', 'zu', 1, '|3750m4-675W|IBM', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('52294701945d48faa520f4886c941fe5', 'dec07c3190b447bdb19ed6c2f1df26dd', '112008000100', '����', 'gen', 'gen', 1, '|3��|', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('c604256d3e5f4308ab113009e295f52e', 'dec07c3190b447bdb19ed6c2f1df26dd', '112008000200', '����', 'gen', 'gen', 1, '|5��|', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('89381069598c4d86a8c6858b15be784f', 'dec07c3190b447bdb19ed6c2f1df26dd', '112008000300', '�绰��', 'gen', 'gen', 1, '|5��|', 'ʹ��', null);
insert into BASE_MATERIAL (id, material_type, code, name, unit, unit_help, conversion, spec, state, explain)
values ('4b838b8069f74ea4b7f692ec8c274a45', 'dec07c3190b447bdb19ed6c2f1df26dd', '112008000400', '����', 'tao', 'tao', 1, '�����豸', 'ʹ��', null);
commit;
prompt 792 records loaded
prompt Loading BASE_MATERIAL_TYPE...
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6a6d9c4d2d7d4b348135501411c3a2a3', '0', '2', '������Ӫ��', 'ge', 1, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('02111c53fbb74c27ab884514161d3d4f', '140fb3ec8c28487fa0bb23784233a4cf', '101001', '���༰��Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('5e44241f90ac4b6fbb8347f7721603ad', '140fb3ec8c28487fa0bb23784233a4cf', '101002', '������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('74c18289b2cd4fb8a094f8712fe83a65', '140fb3ec8c28487fa0bb23784233a4cf', '101003', 'ˮ����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('e2765d61bb994bf8915db0002cf02350', '140fb3ec8c28487fa0bb23784233a4cf', '101004', '��Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('a924465f83314efda43767d4e72a96ac', '140fb3ec8c28487fa0bb23784233a4cf', '101005', '��������Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('04a1f4d2c3f1464392734f72e62560e0', '140fb3ec8c28487fa0bb23784233a4cf', '101006', '���༰����Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('209ddf5dd38742b78dec764b1fd40972', '140fb3ec8c28487fa0bb23784233a4cf', '101007', '�߲�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('b96be269efc44fdca0e3fa235888b85a', '140fb3ec8c28487fa0bb23784233a4cf', '101008', 'ˮ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('c12617cc182a4894a01a2621f7a44591', '140fb3ec8c28487fa0bb23784233a4cf', '101009', '�����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('35293cab941148719332b517edf6cb5c', '140fb3ec8c28487fa0bb23784233a4cf', '101010', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('17a890c6748a4d0893beb4e150254855', '140fb3ec8c28487fa0bb23784233a4cf', '101011', '��ζ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('3326d9d5eb52435f96b8e0747b69f8d8', '140fb3ec8c28487fa0bb23784233a4cf', '101012', '��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('9904357ca68741c1b95f6e3fbc8f91ce', '140fb3ec8c28487fa0bb23784233a4cf', '101013', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('34ff98efbbf34720b9f6a5040931907a', '140fb3ec8c28487fa0bb23784233a4cf', '101014', '�ٶ�ʳƷ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('71d9f3a9bf2d4f408a8d9645a244cec0', '140fb3ec8c28487fa0bb23784233a4cf', '101015', '��������Ʒ����Ʒ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('0d933d09fd6943b68b4e8d97ec34782a', '140fb3ec8c28487fa0bb23784233a4cf', '101016', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('9363693c358b429e8969edcf750b5693', '140fb3ec8c28487fa0bb23784233a4cf', '101017', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('a2cac97bb3ea491eaeeab2b50c33443b', '140fb3ec8c28487fa0bb23784233a4cf', '101018', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('3faafc6e965c49d8b22d2b6ba8dc9f57', '140fb3ec8c28487fa0bb23784233a4cf', '101019', 'ʳƷ��Ӽ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('cbb1c92f90f642408116b1143085a919', '140fb3ec8c28487fa0bb23784233a4cf', '101020', 'ʳƷ��װ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('3bdb678ac6514a62909ebea94bf5a660', '140fb3ec8c28487fa0bb23784233a4cf', '101021', '�䶳��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('0e41587023884af18b83592d7a139ff5', '140fb3ec8c28487fa0bb23784233a4cf', '101022', '������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('80df86c9e44d46a08b4c0c89f3a6e786', '140fb3ec8c28487fa0bb23784233a4cf', '101023', '�ʼ���', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('33829a856c7540bb8b9d55f750010d32', '140fb3ec8c28487fa0bb23784233a4cf', '101024', '������Ʒ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('b02361ee8b374ca3b4bad7a78affcb8b', '140fb3ec8c28487fa0bb23784233a4cf', '101025', '��ͷ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('b9138779492948fbb26cb02582dc2bb3', '140fb3ec8c28487fa0bb23784233a4cf', '101026', 'ԭ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('488b8a90a36840e78eaa5228130e3f13', '140fb3ec8c28487fa0bb23784233a4cf', '101027', 'С����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('06fec661b31c489aa9de9a98ad7dc7d8', '140fb3ec8c28487fa0bb23784233a4cf', '101028', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('afbdb719446949bdbfdd2ad30bc60dd5', '140fb3ec8c28487fa0bb23784233a4cf', '101029', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6792fc45523947d28857830d70074e92', '140fb3ec8c28487fa0bb23784233a4cf', '101030', '���ࣨ����Ѽ������⼰�ȡ�����ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('247f61d2f14f490baa43aa6dac0d8333', 'c7105c05fd604859ba8820ada513b35e', '102001', 'ҽ����е', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('7afb013fca3e4fefacd080b30deadd08', 'c7105c05fd604859ba8820ada513b35e', '102002', '������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('898c1f30d71e4578a67c8ae6b755af6c', 'c7105c05fd604859ba8820ada513b35e', '102003', '������Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('2119f38747ae487883199ea58ea6a729', 'c7105c05fd604859ba8820ada513b35e', '102004', '��������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('7de49a6c7d94487ba963e65cfd7f2e35', 'c7105c05fd604859ba8820ada513b35e', '102005', '��ҩ��Ƭ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('b22670a7795844978a151f77708f6f96', '75ccd0b366914a89ac6777c17b2a1a3f', '103001', '�������Ʒ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('aef9f2ad086a4f53ab47150b1bce888f', '75ccd0b366914a89ac6777c17b2a1a3f', '103002', 'Ů�����Ʒ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6a80321d51e44bee87faef9bacd80fa5', '75ccd0b366914a89ac6777c17b2a1a3f', '103003', '������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('9582ce691c674ed696d8d38ef7f5bc8d', '75ccd0b366914a89ac6777c17b2a1a3f', '103004', '��֯Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('201df6ea9b2c4eb5b54c7681217134f3', '75ccd0b366914a89ac6777c17b2a1a3f', '103005', 'Ь��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('2833b78c78f1479ab58017696af54f5c', '75ccd0b366914a89ac6777c17b2a1a3f', '103006', 'Ƥ�����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('ffc2fdd7dd57493cb1fc30f80710002a', '75ccd0b366914a89ac6777c17b2a1a3f', '103007', '�䡢��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('b0f0a955b1944e52a124fa02b9d58438', '75ccd0b366914a89ac6777c17b2a1a3f', '103008', '���޷�|������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('b1ced32f137c4f66b6ff5e8992eb0a03', '192c0db23f6042b1af846b5aae1d3630', '106001', '��ӳ�������������DVD������ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('96d3655cf7e54cfb895cb03020cf17f6', '192c0db23f6042b1af846b5aae1d3630', '106002', '��༰�����������ϴ�»��������������������������ٶ�����ɻ��ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('2abeebb7c217455cbf2d8fb273801c93', '192c0db23f6042b1af846b5aae1d3630', '106003', '������������ˮ���������̻���������ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('d4de258d3298468d85c21de0de6fb77c', '192c0db23f6042b1af846b5aae1d3630', '106004', '���������������/�������/�񡢱��չ񡢿յ������ȡ���ʪ���ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6971f0cec14d48128be53b0718f8f4bd', '192c0db23f6042b1af846b5aae1d3630', '106005', 'ԡ���ࣨ����ˮ���ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('7374b39a54624420b5dfac04167d73da', '192c0db23f6042b1af846b5aae1d3630', '106006', '��ӡ��/��ӡ��/ɨ���Ǽ����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('7a85c350bc3042c69daefc3ef6def0c8', '192c0db23f6042b1af846b5aae1d3630', '106007', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('61a896bc99ed47ef9c8b3f4b3a90b583', '90dd2286feb0463e800d4a247e38a641', '107001', 'ϴ����໯ѧ�Ƽ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('385e6874bee2473d8b6cd73244fd46f6', '90dd2286feb0463e800d4a247e38a641', '107002', 'ϴ�������Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('2ca4114834b2402583c0a2ed90ad728e', '90dd2286feb0463e800d4a247e38a641', '107003', '�����ֽ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('9dc87d23841f4b88a7f0542cb85d6780', '90dd2286feb0463e800d4a247e38a641', '107004', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('a5dbbbbb8db046f8b483858af948d18f', '4685dd6222094c34b8f6bcab4fd5097c', '108001', 'ϴ����������Ʒ������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('5e9604729fd74ddcbd82e54573ef3616', '4685dd6222094c34b8f6bcab4fd5097c', '108002', '���༰��ǻ�����Ʒ������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('aa1de98c73e24ab8968776350245e586', '4685dd6222094c34b8f6bcab4fd5097c', '108003', '������Ʒ����ԡҺ������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6c5fdaf2b5df4180ba38f6403db54f02', '4685dd6222094c34b8f6bcab4fd5097c', '108004', '�������ݡ���ױ������Ʒ������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('c06a0d7253934c8d81f05a63ab63c393', '772c881dc6dc4e3a88b804158c928c98', '109001', '�ͷ�һ������Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('dc6857c4f62d475ca4d1858de6906582', '772c881dc6dc4e3a88b804158c928c98', '109002', '����һ������Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('42e0ee1b571f4703a6cd73d5fc830c5a', '772c881dc6dc4e3a88b804158c928c98', '109003', '����/��ĭ/����/ľ��/ֽ�������İ�װ������䡢�С�Ĥ�ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('c110e353820d4bcfa81816e9761c8e26', '772c881dc6dc4e3a88b804158c928c98', '109004', '����/ҽ��/�ͱ���ʹ�õ�һ������Ʒ�����ס������֡�Ь�ס���ǩ�ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('7da0598c87444aefae61f64f052868e9', '75ccd0b366914a89ac6777c17b2a1a3f', '103009', '��װ����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('fec43e5f057c40b7a8d3a221af226b2b', '75ccd0b366914a89ac6777c17b2a1a3f', '103010', '�ͱ�����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('bcca95cae9d44fbe8d56f7eef9980c6e', '75ccd0b366914a89ac6777c17b2a1a3f', '103011', '�˶���װ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6521580aa4314d7590b2b22b92ef98bf', '75ccd0b366914a89ac6777c17b2a1a3f', '103012', '�������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('73bd5225ed874901912a58f615a1ba0b', '75ccd0b366914a89ac6777c17b2a1a3f', '103013', 'Ƥ����Ʒ��Ƥ�׵ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('a73c71fb75454ef6a326383e18a82c78', '75ccd0b366914a89ac6777c17b2a1a3f', '103014', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('f2199528239a40d68c976d63b0a6383d', '767a950bc8fb4a16b13099dfc3f4ee3c', '104001', '���ϲ���', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6c88088f4b4841d6afe9dec672e4639c', '767a950bc8fb4a16b13099dfc3f4ee3c', '104002', 'ϴԡ����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('c46818fdbaa846eb9dc77655c632a897', '767a950bc8fb4a16b13099dfc3f4ee3c', '104003', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('c2f1f6139d4e45d4ae54bf42da93bd36', '767a950bc8fb4a16b13099dfc3f4ee3c', '104004', '��̺', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('06e77e100d014d8a877472cff3463ec6', '767a950bc8fb4a16b13099dfc3f4ee3c', '104005', '��������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('ca992c1bfeee4c8aaf56450e7d7ca0c9', '767a950bc8fb4a16b13099dfc3f4ee3c', '104006', '��������Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6867d185a1664828887012afbd4c02ab', '70192191072f44c4b3fd1b09f88a84c4', '105001', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('797ce8bb11074b4fbfa8f9ae4404b887', '70192191072f44c4b3fd1b09f88a84c4', '105002', 'ɳ������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('889d4603d1e04ffaa7d2dd2d3d9b776c', '70192191072f44c4b3fd1b09f88a84c4', '105003', '������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('c35a2b3d2d1b4ef4ac29b78087167214', '70192191072f44c4b3fd1b09f88a84c4', '105004', '��ԡ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('702fa7af9ff04de89c554ff8fe55a523', '70192191072f44c4b3fd1b09f88a84c4', '105005', '�����豸', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('f40405ef6e26410887873345bf7bf950', '70192191072f44c4b3fd1b09f88a84c4', '105006', '�;�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('43337013830744a1aba1f696d92832df', '70192191072f44c4b3fd1b09f88a84c4', '105007', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('80dd5d2124c949d18bc772b4d969ed07', '70192191072f44c4b3fd1b09f88a84c4', '105008', '��ɨ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('97dc1e968daf4a5f8e79530c40b2c6da', '70192191072f44c4b3fd1b09f88a84c4', '105009', '�Ҿ����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('c5f574ee6f444bc3abc750f9b83c689f', '70192191072f44c4b3fd1b09f88a84c4', '105010', '�Ŵ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('fceacdefc107467e82b2a362d40a4564', '772c881dc6dc4e3a88b804158c928c98', '109005', '�̻�������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('40f0529463fb4a2da562d89886e6795a', '772c881dc6dc4e3a88b804158c928c98', '109006', 'ɱ������Ʒ�����㡢����ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('cacfb40fc52e4cf9a19b48355b411283', '9e6060d968ba46ba9c73786e93a51274', '110001', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('d034e0b3005846aab32389ec04ee4aa7', '9e6060d968ba46ba9c73786e93a51274', '110002', '�ӱ���', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('0df2aace5ac4440285e346572212d847', '9e6060d968ba46ba9c73786e93a51274', '110003', '����Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('f9a0fc8c7eef4e9fbcd321877ffd1f43', '9e6060d968ba46ba9c73786e93a51274', '110004', 'װ��Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6c38135768384ec2aaef8254fb808572', '9e6060d968ba46ba9c73786e93a51274', '110005', '��Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('1fed7e73ccc34edca67f7523ae1c8705', '9e6060d968ba46ba9c73786e93a51274', '110006', '�۾�����������Ӿ���̫�������۾���Ƭ�ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('7e2928bcbe2e4eb1b285cd14cb4dbe4e', 'ec78e60b412149bb862fb0ef869529e3', '111001', 'ֽ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('62d5dc7fd13640b18285c5937c951929', 'ec78e60b412149bb862fb0ef869529e3', '111002', '�ʼǱ���', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('b19d36de1be7478ebedc6e0a43b293bb', 'ec78e60b412149bb862fb0ef869529e3', '111003', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('25255cd0d0264311a6fd37524ca491fc', 'ec78e60b412149bb862fb0ef869529e3', '111004', '���', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6c45d6e8a99c4b1ba42d29d15266daa6', 'ec78e60b412149bb862fb0ef869529e3', '111005', '�ľ���', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('f4908a990e244539965dc4ff2b673fa1', 'ec78e60b412149bb862fb0ef869529e3', '111006', '�ļ�������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('01511bdd1eb74dc4bdbbf7aee5d7e30a', 'ec78e60b412149bb862fb0ef869529e3', '111007', '����', 'ge', 3, null);
commit;
prompt 100 records committed...
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('8441f90b27c54c98b0b8a5f964a17368', 'ec78e60b412149bb862fb0ef869529e3', '111008', '�칫�Ĳ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('d017f6681d574a95907ab783b647e0bf', '22a98b81f51844458bfae3e39f207d58', '112001', '�����Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('bcdf272857e446c68e42a9623ba57601', '22a98b81f51844458bfae3e39f207d58', '112002', '�ʼǱ�����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('4ad5fd6d7047498fb7751c003580baeb', '22a98b81f51844458bfae3e39f207d58', '112003', '̨ʽ����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('31846ccdf89a41abadf6c5011b7cf7f3', '22a98b81f51844458bfae3e39f207d58', '112004', '������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('ac8f3a8e2a6649a8bbc4bac04cb8e2f5', '22a98b81f51844458bfae3e39f207d58', '112005', '����Ӳ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('c3744206c6504f64aba77098ed81b831', '22a98b81f51844458bfae3e39f207d58', '112006', '�����豸', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('7907aeff9bf9469fa30a7f6d7ec736a2', '22a98b81f51844458bfae3e39f207d58', '112007', '��ؼ���Դ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('dec07c3190b447bdb19ed6c2f1df26dd', '22a98b81f51844458bfae3e39f207d58', '112008', '�Ĳ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('e53af176893248b8807494340268d9e9', '22a98b81f51844458bfae3e39f207d58', '112009', '�绰ͨѶ�豸���Ĳģ��绰�����Խ��������ߡ��绰�ߡ�ˮ��ͷ�ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('554fa7cc502249ae8d3322f0695f1219', '22a98b81f51844458bfae3e39f207d58', '112010', 'ͶӰ��|����������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6b2ffedf78ca46abbab66c7fce291b80', '22a98b81f51844458bfae3e39f207d58', '112011', '��¼�豸�����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('095e34d38ccb4cadb5b0f8f10a87dd5a', '22a98b81f51844458bfae3e39f207d58', '112012', '��ء����ڡ��Ž����������豸', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('04f6dfb916614473bf37941cd8b982f6', '05414e1935ea4c43b1699b05aecc4696', '113001', '������Ʒ���豸', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('638058b1b75346e58a2a9bd1bdc801e3', '05414e1935ea4c43b1699b05aecc4696', '113002', '������Ʒ���豸', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('0cb1b3403b9644c7abafada793253a00', '05414e1935ea4c43b1699b05aecc4696', '113003', '������Ʒ���豸', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('56480ff81bdd48a580e4e0adf4249a5e', '05414e1935ea4c43b1699b05aecc4696', '113004', '�鼮', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('1fe75e0537924817b60e1b1c876faa9e', '2bc7797d02c842fe8700fb766044c778', '114001', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('e5c1d7f04cc649989972f86ba186cea7', '2bc7797d02c842fe8700fb766044c778', '114002', 'ԽҰ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('f5190e09a42442748772127926fa30ba', '2bc7797d02c842fe8700fb766044c778', '114003', '�ͳ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('278746d38d464e278dfc8033e4986797', '2bc7797d02c842fe8700fb766044c778', '114004', '�γ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('8218f87169d4465fa7b1e08422182bb6', '2bc7797d02c842fe8700fb766044c778', '114005', 'ƽ�⳵', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('43de6772dda3490eadfd780f99f715c2', '48bc0e1de1bf4885ae9015045e34f161', '115001', '�����豸', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('f439c4ca4f254f059b415fc6b99e7315', '48bc0e1de1bf4885ae9015045e34f161', '115002', '�����Դ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('ae966b32f9d34870833d2f318d545108', '48bc0e1de1bf4885ae9015045e34f161', '115003', '���Ӳ�Ʒ��ͨѶ�豸', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('db00735c06df44cfa3cd8bf5cad71afd', '48bc0e1de1bf4885ae9015045e34f161', '115004', '�ɻ���װ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('8b1e288809184934ad3b811fb2c334dd', '48bc0e1de1bf4885ae9015045e34f161', '115005', '������ά�޹��߼�֧Ԯ�豸���ݼܡ�ר���豸�ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('7f796fee408e49c8b6c35585af9b5a6b', '48bc0e1de1bf4885ae9015045e34f161', '115006', '�ɻ���Ԯ�豸', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('0f7103efeb2749538c3c479f1acb2833', '0', '1', '���ڱ�����', 'ge', 1, 'asd ');
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('140fb3ec8c28487fa0bb23784233a4cf', '0f7103efeb2749538c3c479f1acb2833', '101', 'ʳƷ', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('c7105c05fd604859ba8820ada513b35e', '0f7103efeb2749538c3c479f1acb2833', '102', 'ҽ����е', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('75ccd0b366914a89ac6777c17b2a1a3f', '0f7103efeb2749538c3c479f1acb2833', '103', '��װƤ��', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('767a950bc8fb4a16b13099dfc3f4ee3c', '0f7103efeb2749538c3c479f1acb2833', '104', '����', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('70192191072f44c4b3fd1b09f88a84c4', '0f7103efeb2749538c3c479f1acb2833', '105', '�Ҿ�', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('192c0db23f6042b1af846b5aae1d3630', '0f7103efeb2749538c3c479f1acb2833', '106', '����', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('90dd2286feb0463e800d4a247e38a641', '0f7103efeb2749538c3c479f1acb2833', '107', 'ϴ�������Ʒ������', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('4685dd6222094c34b8f6bcab4fd5097c', '0f7103efeb2749538c3c479f1acb2833', '108', '��ױ��Ʒ������', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('772c881dc6dc4e3a88b804158c928c98', '0f7103efeb2749538c3c479f1acb2833', '109', 'һ�����þ�', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('9e6060d968ba46ba9c73786e93a51274', '0f7103efeb2749538c3c479f1acb2833', '110', '���μ�����װ��Ʒ', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('ec78e60b412149bb862fb0ef869529e3', '0f7103efeb2749538c3c479f1acb2833', '111', '�칫��Ʒ', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('22a98b81f51844458bfae3e39f207d58', '0f7103efeb2749538c3c479f1acb2833', '112', 'IT�豸', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('05414e1935ea4c43b1699b05aecc4696', '0f7103efeb2749538c3c479f1acb2833', '113', '������Ʒ���豸', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('2bc7797d02c842fe8700fb766044c778', '0f7103efeb2749538c3c479f1acb2833', '114', '��ͨ�豸', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('48bc0e1de1bf4885ae9015045e34f161', '0f7103efeb2749538c3c479f1acb2833', '115', '����ר���豸', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('25f6fa5501ff4a93aa8a0c6318bbd721', '0f7103efeb2749538c3c479f1acb2833', '116', '��ҵ�豸', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('622aa28af6c345ad8e066c8e183cbc0a', '0f7103efeb2749538c3c479f1acb2833', '117', '�����豸����Ʒ', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('e64f6b6033824f0b9aae57d885dd7ca0', '0f7103efeb2749538c3c479f1acb2833', '118', '���������', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('224aa56cdbd54616a086222e422713dd', '0f7103efeb2749538c3c479f1acb2833', '119', '��Ʒ', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('d3d955287961499bb3e22e3789ceff8d', '0f7103efeb2749538c3c479f1acb2833', '120', 'ӡˢƷ', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('638b67dee37945b0a198533c99384da7', '0f7103efeb2749538c3c479f1acb2833', '121', '��Դ������', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('64401a16046141b3ac619947c37fee12', '0f7103efeb2749538c3c479f1acb2833', '122', '��ֲ���ʳ�ã�', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('72e26c984e064ff7a4954c7598a0066b', '6a6d9c4d2d7d4b348135501411c3a2a3', '201', '����Ʒ', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('793c09ac543040c8835b0e6bfffb827b', '6a6d9c4d2d7d4b348135501411c3a2a3', '202', '��������', 'ge', 2, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('d485ca962d8e469880c94d558435460b', '48bc0e1de1bf4885ae9015045e34f161', '115007', '����ѩ���߼���Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('92eb8ad3c2b048bb9bbf464d4dd8f61d', '48bc0e1de1bf4885ae9015045e34f161', '115008', '��������ѵ�豸', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('9f8b89dd7c0d45c180985c0987c099d1', '48bc0e1de1bf4885ae9015045e34f161', '115009', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('5fe985ad610d48cfb4c948ab62c017e4', '25f6fa5501ff4a93aa8a0c6318bbd721', '116001', '���ӹ�|�и�|����|�ȴ����豸��������ĥ�����괲���ⴲ�����졢�պ�����¯�ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('087eaec9ed804e2d81887a88b7dfd547', '25f6fa5501ff4a93aa8a0c6318bbd721', '116002', '����|Һѹ|����|����|��ѹ����豸', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6304b49692a34fda8f66358779e75e04', '25f6fa5501ff4a93aa8a0c6318bbd721', '116003', '�����豸', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('719e0c6c1e0541d6855d726dbc641444', '25f6fa5501ff4a93aa8a0c6318bbd721', '116004', 'ԭ������������������������ͻ������ͻ����綯������ѹ����Һѹ���ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('03af5c75a725496d96718fe8b6eacfdc', '25f6fa5501ff4a93aa8a0c6318bbd721', '116005', '�á�������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('c746e3bcc3474c64aa5857d51716cb49', '25f6fa5501ff4a93aa8a0c6318bbd721', '116006', '���������ѹ����������豸��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('6c38df1123aa40b18cdeca78b7449bde', '25f6fa5501ff4a93aa8a0c6318bbd721', '116007', '����|��������', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('bc3d7f7765fe4103bbd1a6debaacbc1d', '25f6fa5501ff4a93aa8a0c6318bbd721', '116008', '����|������|�����ݡ����ݡ��Զ����ݡ��Զ����е������ֵ��ݡ������㲿���ȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('e50c80e1053d49dd814401dc4b31e1cf', '25f6fa5501ff4a93aa8a0c6318bbd721', '116009', '����|�繤�������豸���Ĳģ����ء��������̵����������ơ����µȣ�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('26d4700387e8488aaa5c1099f9e7a68b', '622aa28af6c345ad8e066c8e183cbc0a', '117001', 'ר�ù���', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('d51ac06c73eb4bee9aa3a188f2ef4c9e', '622aa28af6c345ad8e066c8e183cbc0a', '117002', 'ͨ�ù���', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('3d91e2d944b448f5b73ca96f3d9208a9', 'e64f6b6033824f0b9aae57d885dd7ca0', '118001', '���', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('671acfb71e4f439eb77ffbdea28adb8c', 'e64f6b6033824f0b9aae57d885dd7ca0', '118002', '��ѵ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('f2b5d2d78f254355835f72ab2c5caf7e', 'e64f6b6033824f0b9aae57d885dd7ca0', '118003', 'ά��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('5c1b028b5d0c492488ebaa79621c84d0', 'e64f6b6033824f0b9aae57d885dd7ca0', '118004', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('107b22bba40c4857a52a29b91cd31e95', 'e64f6b6033824f0b9aae57d885dd7ca0', '118005', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('ff4663fe60fc4db18c5b67df45795ba8', '224aa56cdbd54616a086222e422713dd', '119001', '��Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('b54ed52283744a89a55a7f9a11e5f2e1', 'd3d955287961499bb3e22e3789ceff8d', '120001', 'ͼ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('4ff14e6a7017411b8937bb4dc225c857', 'd3d955287961499bb3e22e3789ceff8d', '120002', '�칫ֽ��ӡ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('79008cde1ecc48848090af2d8ec96593', 'd3d955287961499bb3e22e3789ceff8d', '120003', '�ֲ��ӡ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('f2705810366341edb68c2995916c2999', 'd3d955287961499bb3e22e3789ceff8d', '120004', '����Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('2e47b62f9177456eb310e76f8c9ded31', 'd3d955287961499bb3e22e3789ceff8d', '120005', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('8f51de8a05a04d7c812e66148e36b03b', '638b67dee37945b0a198533c99384da7', '121001', 'ȼ�͡�ȼú��ȼ����ȼ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('c1b159486bab40b79ced10043c872f10', '638b67dee37945b0a198533c99384da7', '121002', '���͡���֬��Һѹ�͡���ȴҺ��', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('d2365dba43a54efb9fba91f98735bd96', '224aa56cdbd54616a086222e422713dd', '119002', '�����ʳ�ã�', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('ee8f1b81ba494993ad0b3218e56f17b7', '72e26c984e064ff7a4954c7598a0066b', '201001', '��Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('8b1318a5e8d54b0b96d0e65e5947fc82', '72e26c984e064ff7a4954c7598a0066b', '201002', 'ʳƷ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('2f806b4e6e2f4c81b7925c833375e621', '72e26c984e064ff7a4954c7598a0066b', '201003', '����', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('b69296513a0c4775af93f502c3be44ac', '72e26c984e064ff7a4954c7598a0066b', '201004', '�����Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('0bc976750ab24c77bfe72349eeffd72f', '72e26c984e064ff7a4954c7598a0066b', '201005', '�޷�֯Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('d5253694e409489999e91708f775dbb4', '72e26c984e064ff7a4954c7598a0066b', '201006', '������Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('730ba5d94a894de789cafa3a883ada6f', '72e26c984e064ff7a4954c7598a0066b', '201007', '������Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('87e58373cb0648be9c42c6ce54797de4', '72e26c984e064ff7a4954c7598a0066b', '201008', '��Ʒ', 'ge', 3, null);
insert into BASE_MATERIAL_TYPE (id, parent, code, name, unit, levels, remark)
values ('9b7a2b197d2c45faa89f11c4db1d5762', '72e26c984e064ff7a4954c7598a0066b', '201009', '��ֽ', 'ge', 3, null);
commit;
prompt 190 records loaded
prompt Loading BASE_REGION...
insert into BASE_REGION (region_id, warehouse_id, region_code, region_name, state, area, remark, isdel)
values ('e67248ccad834106b7eda0a692f7729d', 'b5080548cfc64f15901f6161f903d28f', '101_10101', '��������', 'ʹ��', 0, null, 0);
commit;
prompt 1 records loaded
prompt Loading BASE_SUPPLIER...
insert into BASE_SUPPLIER (supplier_type, state, brief_introduction, id, supplier_no, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, bank_account_number)
values ('ս���Թ�Ӧ��', '��ʹ��', '������', '43118bc6c1724d548cacebdbe2877571', 'QSNO000002', '����', '������', '���ɹ�', '������', null, '243310214@qq.com', 'qkjhds', 'sdf ', '13233224220', null, null, null, '�й�����', '22222                                                                                               ', null, null, null, null, '2222222');
insert into BASE_SUPPLIER (supplier_type, state, brief_introduction, id, supplier_no, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, bank_account_number)
values ('ս���Թ�Ӧ��', '��ʹ��', '������', '87be2dcb49a64bfaad2dc1ef733516fa', 'QSNO000009', '111111111��', null, '�ӱ�', '����', null, '243310214@qq.com', '������', 'ˮ���', '13111111111', null, null, null, '��������', '2222', null, null, null, '��ʱ', '1233333333333');
insert into BASE_SUPPLIER (supplier_type, state, brief_introduction, id, supplier_no, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, bank_account_number)
values ('ս���Թ�Ӧ��', '��ʹ��', null, 'b392d8c49f0a4d85b5a315b3c42f3491', 'QSNO000004', '������', null, '������', '������', null, '243310214@qq.com', 'sdf ', '������', '13233224220', null, null, null, 'ʮ��', '��ʱ                                                                                                ', null, null, null, null, '2222222');
insert into BASE_SUPPLIER (supplier_type, state, brief_introduction, id, supplier_no, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, bank_account_number)
values ('ս���Թ�Ӧ��', '������', null, '5eddf3b19af942748d2b9af326e0e6e6', 'QSNO000003', '�׸�', 'ˮ���', '�㽭', 'ˮ���', '3', '243310214@qq.com', 'sdf ', 'sdf ', '13233224220', null, null, null, '�й���������', 'asd                                                                                                 ', null, null, null, null, '2222222');
insert into BASE_SUPPLIER (supplier_type, state, brief_introduction, id, supplier_no, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, bank_account_number)
values ('ս���Թ�Ӧ��', '��ʹ��', null, '170c2886309443e19703d27118f2c6c0', 'QSNO000001', 'shixin��Ӧ�̲���', 'shixin', '���', '������Ŵ���', null, '110@110.com', 'ʯ��', '������Ա', '13111111111', null, null, '110@110.com', '��������', '110                                                                                                 ', null, null, null, null, '1233333333333');
insert into BASE_SUPPLIER (supplier_type, state, brief_introduction, id, supplier_no, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, bank_account_number)
values ('ս���Թ�Ӧ��', '������', null, '6eae2f7e2cb644f1abfe22cd9f2dd616', 'QSNO000006', '��ͯ', null, '���ɹ�', '������', null, '243310214@qq.com', 'ʯ��', 'sdf ', '13111111111', null, null, null, '��������', 'asd ', null, null, null, null, '1233333333333');
insert into BASE_SUPPLIER (supplier_type, state, brief_introduction, id, supplier_no, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, bank_account_number)
values ('����͹�Ӧ��', '������', null, '07f8912c03c048388cafdf18981d550d', 'QSNO000007', 'ʯ�ι�Ӧ��', null, '���', '������Ŵ���', null, '110@110.com', 'ʯ��', '������Ա', '13111111111', null, null, null, '��������', '110               ', null, null, null, null, '1233333333333');
insert into BASE_SUPPLIER (supplier_type, state, brief_introduction, id, supplier_no, supplier_name, legal_person, province, address, fax, email, linkman, post, tel, financial_contact, financial_tel, financial_email, opening_bank, social_credit_code, quality_system, hygiene_license, food_circulation_license, remark, bank_account_number)
values ('����͹�Ӧ��', '������', 'asd', 'c62633198a704daba27700a05bd599f2', 'QSNO000008', '������12sdfsd��', '˵��', 'ɽ��', '������', null, '243310214@qq.com', '������', 'ˮ���', '13111111111', null, null, null, 'ˮ���', '2222', null, null, null, 'asd', '222');
commit;
prompt 8 records loaded
prompt Loading BASE_WAREHOUSE...
insert into BASE_WAREHOUSE (warehouse_id, warehouse_code, warehouse_name, province, place, area, state, contacts, contact_number, remark, isdel, warehouse_owner)
values ('0daa74b36f7944fab4d014d73f0d4954', '103', '��ԭ����', '����', null, 500, 'ʹ��', '��΢΢', '13038000780', null, 0, '������');
insert into BASE_WAREHOUSE (warehouse_id, warehouse_code, warehouse_name, province, place, area, state, contacts, contact_number, remark, isdel, warehouse_owner)
values ('b5080548cfc64f15901f6161f903d28f', '101', '�����ֿ�', '���', null, 400, 'ʹ��', null, null, null, 0, null);
insert into BASE_WAREHOUSE (warehouse_id, warehouse_code, warehouse_name, province, place, area, state, contacts, contact_number, remark, isdel, warehouse_owner)
values ('0486a4c8596c403bbdf90174d0c89daf', '102', '��������', 'ɽ��', null, 300, 'ʹ��', '��һ��', '13038000780', 'ǧ����绰', 0, '������');
commit;
prompt 3 records loaded
prompt Enabling triggers for BASE_MATERIAL...
alter table BASE_MATERIAL enable all triggers;
prompt Enabling triggers for BASE_MATERIAL_TYPE...
alter table BASE_MATERIAL_TYPE enable all triggers;
prompt Enabling triggers for BASE_REGION...
alter table BASE_REGION enable all triggers;
prompt Enabling triggers for BASE_SUPPLIER...
alter table BASE_SUPPLIER enable all triggers;
prompt Enabling triggers for BASE_WAREHOUSE...
alter table BASE_WAREHOUSE enable all triggers;
set feedback on
set define on
prompt Done.
