-----------------------------------------
-- Export file for user OKAY@ORA       --
-- Created by 唠叨 on 2018/1/18, 9:57:55 --
-----------------------------------------

set define off
spool okay.log

prompt
prompt Creating table BASE_MATERIAL
prompt ============================
prompt
create table OKAY.BASE_MATERIAL
(
  id            NVARCHAR2(32) not null,
  material_type NVARCHAR2(32) not null,
  code          NVARCHAR2(12) not null,
  name          NVARCHAR2(20) not null,
  unit          NVARCHAR2(20) not null,
  unit_help     NVARCHAR2(20),
  conversion    INTEGER,
  spec          NVARCHAR2(200),
  state         NVARCHAR2(20) not null,
  explain       NVARCHAR2(1000)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OKAY.BASE_MATERIAL
  add constraint TABLE1_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BASE_MATERIAL_TYPE
prompt =================================
prompt
create table OKAY.BASE_MATERIAL_TYPE
(
  id     NVARCHAR2(32) not null,
  parent NVARCHAR2(32) not null,
  code   NVARCHAR2(6) not null,
  name   NVARCHAR2(200) not null,
  unit   NVARCHAR2(20),
  levels INTEGER not null,
  remark NVARCHAR2(1000)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create unique index OKAY.TABLE1_PK1 on OKAY.BASE_MATERIAL_TYPE (ID)
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OKAY.BASE_MATERIAL_TYPE
  add constraint MATERIAL_TYPE_PK primary key (ID);

prompt
prompt Creating table BASE_REGION
prompt ==========================
prompt
create table OKAY.BASE_REGION
(
  region_id    NVARCHAR2(32) not null,
  warehouse_id NVARCHAR2(32) not null,
  region_code  NVARCHAR2(50) not null,
  region_name  NVARCHAR2(200) not null,
  state        NVARCHAR2(10) not null,
  area         NUMBER(20,2) not null,
  remark       NVARCHAR2(1000),
  isdel        NUMBER default ((0)) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BASE_SUPPLIER
prompt ============================
prompt
create table OKAY.BASE_SUPPLIER
(
  supplier_type            VARCHAR2(20) not null,
  state                    VARCHAR2(20) not null,
  brief_introduction       VARCHAR2(1000),
  id                       VARCHAR2(32) not null,
  supplier_no              VARCHAR2(15),
  supplier_name            VARCHAR2(200) not null,
  legal_person             VARCHAR2(200),
  province                 VARCHAR2(20) not null,
  address                  VARCHAR2(200) not null,
  fax                      VARCHAR2(20),
  email                    VARCHAR2(200) not null,
  linkman                  VARCHAR2(200) not null,
  post                     VARCHAR2(200) not null,
  tel                      VARCHAR2(200) not null,
  financial_contact        VARCHAR2(200),
  financial_tel            VARCHAR2(200),
  financial_email          VARCHAR2(200),
  opening_bank             VARCHAR2(1000) not null,
  social_credit_code       VARCHAR2(100) not null,
  quality_system           VARCHAR2(200),
  hygiene_license          VARCHAR2(200),
  food_circulation_license VARCHAR2(200),
  remark                   VARCHAR2(1000),
  bank_account_number      VARCHAR2(100) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.BASE_SUPPLIER.supplier_type
  is '供应商类型';
comment on column OKAY.BASE_SUPPLIER.state
  is '供应商状态';
comment on column OKAY.BASE_SUPPLIER.brief_introduction
  is '厂家简介';
comment on column OKAY.BASE_SUPPLIER.id
  is '供应商id';
comment on column OKAY.BASE_SUPPLIER.supplier_no
  is '供应商编码';
comment on column OKAY.BASE_SUPPLIER.supplier_name
  is '供应商名称';
comment on column OKAY.BASE_SUPPLIER.legal_person
  is '法人代表';
comment on column OKAY.BASE_SUPPLIER.province
  is '省份';
comment on column OKAY.BASE_SUPPLIER.address
  is '地址';
comment on column OKAY.BASE_SUPPLIER.fax
  is '传真';
comment on column OKAY.BASE_SUPPLIER.email
  is '邮箱';
comment on column OKAY.BASE_SUPPLIER.linkman
  is '联系人';
comment on column OKAY.BASE_SUPPLIER.post
  is '职务';
comment on column OKAY.BASE_SUPPLIER.tel
  is '电话';
comment on column OKAY.BASE_SUPPLIER.financial_contact
  is '财务联系人';
comment on column OKAY.BASE_SUPPLIER.financial_tel
  is '财务联系电话';
comment on column OKAY.BASE_SUPPLIER.financial_email
  is '财务邮箱';
comment on column OKAY.BASE_SUPPLIER.opening_bank
  is '开户行';
comment on column OKAY.BASE_SUPPLIER.social_credit_code
  is '社会信用代码';
comment on column OKAY.BASE_SUPPLIER.quality_system
  is '质量体系';
comment on column OKAY.BASE_SUPPLIER.hygiene_license
  is '卫生许可证';
comment on column OKAY.BASE_SUPPLIER.food_circulation_license
  is '食品流通许可证';
comment on column OKAY.BASE_SUPPLIER.remark
  is '备注';
comment on column OKAY.BASE_SUPPLIER.bank_account_number
  is '开户行账号';
alter table OKAY.BASE_SUPPLIER
  add constraint BASE_SUPPLIER_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BASE_WAREHOUSE
prompt =============================
prompt
create table OKAY.BASE_WAREHOUSE
(
  warehouse_id    NVARCHAR2(32) not null,
  warehouse_code  NVARCHAR2(50) not null,
  warehouse_name  NVARCHAR2(200) not null,
  province        NVARCHAR2(20) not null,
  place           NVARCHAR2(200),
  area            NUMBER(20,2),
  state           NVARCHAR2(10) not null,
  contacts        NVARCHAR2(50),
  contact_number  NVARCHAR2(11),
  remark          NVARCHAR2(1000),
  isdel           NUMBER default ((0)) not null,
  warehouse_owner NVARCHAR2(200)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
alter table OKAY.BASE_WAREHOUSE
  add constraint BASE_WAREHOUSE_PK primary key (WAREHOUSE_ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_BUDGET_ACCOUNT
prompt ===============================
prompt
create table OKAY.B_BUDGET_ACCOUNT
(
  id            NVARCHAR2(32) not null,
  code          NVARCHAR2(20) not null,
  name          NVARCHAR2(50) not null,
  explain       NVARCHAR2(500),
  isvalidate    NVARCHAR2(10) not null,
  warning_ratio INTEGER not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_BUDGET_ACCOUNT.id
  is 'id';
comment on column OKAY.B_BUDGET_ACCOUNT.code
  is '编码';
comment on column OKAY.B_BUDGET_ACCOUNT.name
  is '名称';
comment on column OKAY.B_BUDGET_ACCOUNT.explain
  is '说明';
comment on column OKAY.B_BUDGET_ACCOUNT.isvalidate
  is '是否可用';
comment on column OKAY.B_BUDGET_ACCOUNT.warning_ratio
  is '预警比例';

prompt
prompt Creating table B_BUDGET_PLAN_DETAIL
prompt ===================================
prompt
create table OKAY.B_BUDGET_PLAN_DETAIL
(
  id                      NVARCHAR2(32) not null,
  budget_head_id          NVARCHAR2(32) not null,
  account                 NVARCHAR2(32) not null,
  budget_amount           NUMBER(10,2) not null,
  residual_amount         NUMBER(10,2) not null,
  remark                  NVARCHAR2(200),
  residual_amount_storage NUMBER(10,2)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_BUDGET_PLAN_DETAIL.id
  is 'id';
comment on column OKAY.B_BUDGET_PLAN_DETAIL.budget_head_id
  is '计划预算主表';
comment on column OKAY.B_BUDGET_PLAN_DETAIL.account
  is '预算科目';
comment on column OKAY.B_BUDGET_PLAN_DETAIL.budget_amount
  is '订单预算金额';
comment on column OKAY.B_BUDGET_PLAN_DETAIL.residual_amount
  is '剩余金额';
comment on column OKAY.B_BUDGET_PLAN_DETAIL.remark
  is '备注';
comment on column OKAY.B_BUDGET_PLAN_DETAIL.residual_amount_storage
  is '入库剩余金额';

prompt
prompt Creating table B_BUDGET_PLAN_HEAD
prompt =================================
prompt
create table OKAY.B_BUDGET_PLAN_HEAD
(
  id            NVARCHAR2(32) not null,
  budget_no     NVARCHAR2(20),
  company       NVARCHAR2(32),
  year          NVARCHAR2(10),
  annual_budget NUMBER(12,2),
  input_user    NVARCHAR2(32),
  input_date    DATE,
  modify_date   DATE,
  state         NVARCHAR2(20)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_BUDGET_PLAN_HEAD.id
  is 'id';
comment on column OKAY.B_BUDGET_PLAN_HEAD.budget_no
  is '预算编号';
comment on column OKAY.B_BUDGET_PLAN_HEAD.company
  is '部门';
comment on column OKAY.B_BUDGET_PLAN_HEAD.year
  is '年份';
comment on column OKAY.B_BUDGET_PLAN_HEAD.annual_budget
  is '年度预算';
comment on column OKAY.B_BUDGET_PLAN_HEAD.input_user
  is '录入人';
comment on column OKAY.B_BUDGET_PLAN_HEAD.input_date
  is '录入日期';
comment on column OKAY.B_BUDGET_PLAN_HEAD.modify_date
  is '修改日期';
comment on column OKAY.B_BUDGET_PLAN_HEAD.state
  is '状态';

prompt
prompt Creating table B_DIRECT_DETAIL
prompt ==============================
prompt
create table OKAY.B_DIRECT_DETAIL
(
  id                 NVARCHAR2(50) not null,
  direct_row_no      NUMBER not null,
  direct_head        NVARCHAR2(50) not null,
  order_detail       NVARCHAR2(50) not null,
  material           NVARCHAR2(50) not null,
  packing            NUMBER(10,2),
  main_price         NUMBER(10,2),
  main_quantity      NUMBER(10,2),
  secondary_price    NUMBER(10,2),
  secondary_quantity NUMBER(10,2),
  remark             NVARCHAR2(500)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_DIRECT_DETAIL.id
  is 'ID';
comment on column OKAY.B_DIRECT_DETAIL.direct_row_no
  is '明细行号';
comment on column OKAY.B_DIRECT_DETAIL.direct_head
  is '主表ID';
comment on column OKAY.B_DIRECT_DETAIL.order_detail
  is '订单明细ID';
comment on column OKAY.B_DIRECT_DETAIL.material
  is '物资ID';
comment on column OKAY.B_DIRECT_DETAIL.packing
  is '包装数量';
comment on column OKAY.B_DIRECT_DETAIL.main_price
  is '主单位单价';
comment on column OKAY.B_DIRECT_DETAIL.main_quantity
  is '主单位数量';
comment on column OKAY.B_DIRECT_DETAIL.secondary_price
  is '常用单位单价';
comment on column OKAY.B_DIRECT_DETAIL.secondary_quantity
  is '常用单位数量';
comment on column OKAY.B_DIRECT_DETAIL.remark
  is '备注';
alter table OKAY.B_DIRECT_DETAIL
  add constraint B_DIRECT_DETAIL_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_DIRECT_HEAD
prompt ============================
prompt
create table OKAY.B_DIRECT_HEAD
(
  id               NVARCHAR2(50) not null,
  direct_no        NVARCHAR2(50) not null,
  entry_date       DATE not null,
  user_id          NVARCHAR2(50) not null,
  order_frame      NVARCHAR2(50) not null,
  state            NVARCHAR2(50) not null,
  department       NVARCHAR2(50),
  main_totalamount NUMBER(10,2)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_DIRECT_HEAD.id
  is 'id';
comment on column OKAY.B_DIRECT_HEAD.direct_no
  is '直达现场单号';
comment on column OKAY.B_DIRECT_HEAD.entry_date
  is '制单时间';
comment on column OKAY.B_DIRECT_HEAD.user_id
  is '制单人ID';
comment on column OKAY.B_DIRECT_HEAD.order_frame
  is '采购订单ID';
comment on column OKAY.B_DIRECT_HEAD.state
  is '状态';
comment on column OKAY.B_DIRECT_HEAD.department
  is '领用部门';
comment on column OKAY.B_DIRECT_HEAD.main_totalamount
  is '总金额';
alter table OKAY.B_DIRECT_HEAD
  add constraint B_DIRECT_HEAD_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_FRAME_ADDRESS
prompt ==============================
prompt
create table OKAY.B_FRAME_ADDRESS
(
  id               NVARCHAR2(32) not null,
  frame_head       NVARCHAR2(32) not null,
  delivery_address NVARCHAR2(500) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_FRAME_ADDRESS
  add constraint B_FRAME_ADDRESS_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_FRAME_DETAIL
prompt =============================
prompt
create table OKAY.B_FRAME_DETAIL
(
  id                  NVARCHAR2(32) not null,
  frame_head          NVARCHAR2(32) not null,
  tender_frame_detail NVARCHAR2(32),
  material            NVARCHAR2(32) not null,
  main_price          NUMBER(10,2) not null,
  secondary_price     NUMBER(10,2),
  purchased_quantity  NVARCHAR2(100) not null,
  minimum_quantity    NUMBER(10,2)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_FRAME_DETAIL
  add constraint B_FRAME_DETAIL_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_FRAME_HEAD
prompt ===========================
prompt
create table OKAY.B_FRAME_HEAD
(
  id                       NVARCHAR2(32) not null,
  frame_no                 NVARCHAR2(200) not null,
  varieties                NVARCHAR2(200),
  tender_frame             NVARCHAR2(32),
  sign_date                DATE not null,
  effect_date              DATE not null,
  expire_date              DATE not null,
  extended_year            INTEGER not null,
  supplier                 NVARCHAR2(32) not null,
  state                    NVARCHAR2(20) not null,
  a_responsible_department NVARCHAR2(32) not null,
  b_responsible_department NVARCHAR2(200),
  party_a_name             NVARCHAR2(200) not null,
  party_a_chargeperson     NVARCHAR2(200) not null,
  remark                   NVARCHAR2(500),
  extended_expire_date     DATE not null,
  bank_account_number      NVARCHAR2(100) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_FRAME_HEAD.id
  is 'id';
comment on column OKAY.B_FRAME_HEAD.frame_no
  is '协议编号';
comment on column OKAY.B_FRAME_HEAD.varieties
  is '品种';
comment on column OKAY.B_FRAME_HEAD.tender_frame
  is '招标单据id';
comment on column OKAY.B_FRAME_HEAD.sign_date
  is '签订日期';
comment on column OKAY.B_FRAME_HEAD.effect_date
  is '生效日期';
comment on column OKAY.B_FRAME_HEAD.expire_date
  is '到期日期';
comment on column OKAY.B_FRAME_HEAD.extended_year
  is '顺延年限';
comment on column OKAY.B_FRAME_HEAD.supplier
  is '供应商id';
comment on column OKAY.B_FRAME_HEAD.state
  is '状态';
comment on column OKAY.B_FRAME_HEAD.a_responsible_department
  is '甲方负责部门';
comment on column OKAY.B_FRAME_HEAD.b_responsible_department
  is '乙方负责部门';
comment on column OKAY.B_FRAME_HEAD.party_a_name
  is '甲方名称';
comment on column OKAY.B_FRAME_HEAD.party_a_chargeperson
  is '甲方负责人';
comment on column OKAY.B_FRAME_HEAD.remark
  is '备注';
comment on column OKAY.B_FRAME_HEAD.extended_expire_date
  is '顺延到期日期';
comment on column OKAY.B_FRAME_HEAD.bank_account_number
  is '银行账号';
alter table OKAY.B_FRAME_HEAD
  add constraint B_FRAME_HEAD_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_INVOICE
prompt ========================
prompt
create table OKAY.B_INVOICE
(
  id                  NVARCHAR2(32),
  invoice_no          NVARCHAR2(200),
  billing_date        DATE,
  supplier            NVARCHAR2(32),
  is_already          NVARCHAR2(20),
  total               NUMBER(12,2),
  bank_account_number NVARCHAR2(100)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_INVOICE.id
  is 'id';
comment on column OKAY.B_INVOICE.invoice_no
  is '开票单号';
comment on column OKAY.B_INVOICE.billing_date
  is '开票日期';
comment on column OKAY.B_INVOICE.supplier
  is '供应商';
comment on column OKAY.B_INVOICE.is_already
  is '是否引用的状态';
comment on column OKAY.B_INVOICE.bank_account_number
  is '开户行账号';

prompt
prompt Creating table B_INVOICE_DETAIL
prompt ===============================
prompt
create table OKAY.B_INVOICE_DETAIL
(
  id         NVARCHAR2(32),
  invoice_id NVARCHAR2(32),
  material   NVARCHAR2(32),
  price      NUMBER(10,2) not null,
  amount     NUMBER(10,2),
  sum        NUMBER(12,2)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_INVOICE_DETAIL.invoice_id
  is '主表id';
comment on column OKAY.B_INVOICE_DETAIL.material
  is '物料id';
comment on column OKAY.B_INVOICE_DETAIL.price
  is '单价';
comment on column OKAY.B_INVOICE_DETAIL.amount
  is '数量';
comment on column OKAY.B_INVOICE_DETAIL.sum
  is '金额';

prompt
prompt Creating table B_MATERIAL_PURCHASE_DETAIL
prompt =========================================
prompt
create table OKAY.B_MATERIAL_PURCHASE_DETAIL
(
  id                 NVARCHAR2(32) not null,
  purchase_head_id   NVARCHAR2(32) not null,
  purchase_row_no    NUMBER(3) not null,
  material           NVARCHAR2(32) not null,
  main_quantity      NUMBER(10,2) not null,
  main_price         NUMBER(10,2) not null,
  amount             NUMBER(10,2) not null,
  budget_plan_detail NVARCHAR2(32) not null,
  is_choice          NVARCHAR2(1) not null,
  secondary_price    NUMBER(10,2),
  secondary_quantity NUMBER(10,2),
  choicestate        NUMBER not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_MATERIAL_PURCHASE_DETAIL.id
  is 'uuid';
comment on column OKAY.B_MATERIAL_PURCHASE_DETAIL.purchase_head_id
  is '审批主表id';
comment on column OKAY.B_MATERIAL_PURCHASE_DETAIL.material
  is '物资id';
comment on column OKAY.B_MATERIAL_PURCHASE_DETAIL.main_quantity
  is '采购数量';
comment on column OKAY.B_MATERIAL_PURCHASE_DETAIL.budget_plan_detail
  is '计划预算明细id';
comment on column OKAY.B_MATERIAL_PURCHASE_DETAIL.is_choice
  is '预留字段；用来判定该明细是否被招标或订单选择';
alter table OKAY.B_MATERIAL_PURCHASE_DETAIL
  add constraint B_MATERIAL_PURCHASE_DETAIL_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_MATERIAL_PURCHASE_HEAD
prompt =======================================
prompt
create table OKAY.B_MATERIAL_PURCHASE_HEAD
(
  id                     NVARCHAR2(32) not null,
  purchase_no            NVARCHAR2(15) not null,
  state                  NVARCHAR2(20) not null,
  centralized_department NVARCHAR2(32) not null,
  input_date             DATE not null,
  purchase_time_limit    DATE,
  purchase_department    NVARCHAR2(32) not null,
  input_userid           NVARCHAR2(32) not null,
  contract_number        NVARCHAR2(11),
  purchase_explain       NVARCHAR2(1000) not null,
  purchase_type          VARCHAR2(20) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_MATERIAL_PURCHASE_HEAD.id
  is 'UUID';
comment on column OKAY.B_MATERIAL_PURCHASE_HEAD.purchase_no
  is '采购表编号';
comment on column OKAY.B_MATERIAL_PURCHASE_HEAD.state
  is '状态';
comment on column OKAY.B_MATERIAL_PURCHASE_HEAD.centralized_department
  is '归口部门部门Id';
comment on column OKAY.B_MATERIAL_PURCHASE_HEAD.input_date
  is '填报日期';
comment on column OKAY.B_MATERIAL_PURCHASE_HEAD.purchase_time_limit
  is '采购时限';
comment on column OKAY.B_MATERIAL_PURCHASE_HEAD.purchase_department
  is '申购部门部门Id';
comment on column OKAY.B_MATERIAL_PURCHASE_HEAD.input_userid
  is '用户id申购人';
comment on column OKAY.B_MATERIAL_PURCHASE_HEAD.contract_number
  is '联系电话';
comment on column OKAY.B_MATERIAL_PURCHASE_HEAD.purchase_explain
  is '采购说明';
comment on column OKAY.B_MATERIAL_PURCHASE_HEAD.purchase_type
  is '采购类型';
alter table OKAY.B_MATERIAL_PURCHASE_HEAD
  add constraint B_MATERIAL_PURCHASE_HEAD_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_ORDER_DETAIL
prompt =============================
prompt
create table OKAY.B_ORDER_DETAIL
(
  id                         NVARCHAR2(50) not null,
  order_frame                NVARCHAR2(50) not null,
  frame_detail_id            NVARCHAR2(50),
  contract_detail_id         NVARCHAR2(50),
  material_id                NVARCHAR2(50) not null,
  main_quantity              NUMBER(10,2),
  secondary_quantity         NUMBER(10,2),
  main_price                 NUMBER(10,2),
  secondary_price            NUMBER(10,2),
  delivery_date              DATE,
  remarks                    NVARCHAR2(500),
  amount                     NUMBER(10,2),
  already_main_quantity      NUMBER(10,2) default 0,
  already_secondary_quantity NUMBER(10,2) default 0,
  is_already                 NVARCHAR2(50),
  order_row_no               INTEGER,
  budget_plan_detail         NVARCHAR2(50),
  account                    NVARCHAR2(50),
  centralized_department     NVARCHAR2(50),
  stock_main_quantity        NUMBER(10,2) default 0,
  is_stock                   NVARCHAR2(50),
  stock_secondary_quantity   NUMBER(10,2) default 0,
  purchase_head_id           NVARCHAR2(50),
  purchase_detail_id         NVARCHAR2(50)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_ORDER_DETAIL.id
  is 'id';
comment on column OKAY.B_ORDER_DETAIL.order_frame
  is '订单主表ID';
comment on column OKAY.B_ORDER_DETAIL.frame_detail_id
  is '框架明细ID';
comment on column OKAY.B_ORDER_DETAIL.contract_detail_id
  is '合同明细ID';
comment on column OKAY.B_ORDER_DETAIL.material_id
  is '物料ID';
comment on column OKAY.B_ORDER_DETAIL.main_quantity
  is '散件订单数量';
comment on column OKAY.B_ORDER_DETAIL.secondary_quantity
  is '整件订单数量';
comment on column OKAY.B_ORDER_DETAIL.main_price
  is '散件订单单价';
comment on column OKAY.B_ORDER_DETAIL.secondary_price
  is '整件订单单价';
comment on column OKAY.B_ORDER_DETAIL.delivery_date
  is '交货日期';
comment on column OKAY.B_ORDER_DETAIL.remarks
  is '备注';
comment on column OKAY.B_ORDER_DETAIL.amount
  is '合计';
comment on column OKAY.B_ORDER_DETAIL.already_main_quantity
  is '可用散件数量';
comment on column OKAY.B_ORDER_DETAIL.already_secondary_quantity
  is '可用整件数量';
comment on column OKAY.B_ORDER_DETAIL.is_already
  is '是否可用';
comment on column OKAY.B_ORDER_DETAIL.order_row_no
  is '明细序号';
comment on column OKAY.B_ORDER_DETAIL.budget_plan_detail
  is '计划预算明细ID';
comment on column OKAY.B_ORDER_DETAIL.account
  is '预算科目ID';
comment on column OKAY.B_ORDER_DETAIL.centralized_department
  is '归口部门ID';
comment on column OKAY.B_ORDER_DETAIL.stock_main_quantity
  is '可用库存数量';
comment on column OKAY.B_ORDER_DETAIL.is_stock
  is '库存数否可用';
comment on column OKAY.B_ORDER_DETAIL.stock_secondary_quantity
  is '可用散件库存数量';
comment on column OKAY.B_ORDER_DETAIL.purchase_head_id
  is '审批主表id';
comment on column OKAY.B_ORDER_DETAIL.purchase_detail_id
  is '审批明细表id';
alter table OKAY.B_ORDER_DETAIL
  add constraint B_ORDER_DETAIL_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_ORDER_HEAD
prompt ===========================
prompt
create table OKAY.B_ORDER_HEAD
(
  id                    NVARCHAR2(50) not null,
  order_no              NVARCHAR2(50) not null,
  urgent_type           NVARCHAR2(50) not null,
  purchase_user_id      NVARCHAR2(50) not null,
  state                 NVARCHAR2(50) not null,
  supplier_id           NVARCHAR2(50) not null,
  frame_id              NVARCHAR2(50),
  contract_id           NVARCHAR2(50),
  sign_date             DATE,
  buyer_tel             NVARCHAR2(50),
  buyer_fax             NVARCHAR2(50),
  buyer_zip_code        NVARCHAR2(50),
  buyer_address         NVARCHAR2(500),
  delivery_contact      NVARCHAR2(50),
  delivery_call         NVARCHAR2(20),
  delivery_address      NVARCHAR2(500),
  order_amount          NUMBER(10,2),
  transportation_clause NVARCHAR2(2000),
  buyer_explain         NVARCHAR2(1000),
  seller_tel            NVARCHAR2(50),
  seller_fax            NVARCHAR2(50),
  seller_contact        NVARCHAR2(50),
  seller_address        NVARCHAR2(500),
  purchase_no           VARCHAR2(4000),
  materialspurchaseid   VARCHAR2(4000),
  order_state           NVARCHAR2(50),
  bank_account_number   NVARCHAR2(50)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_ORDER_HEAD.id
  is 'id';
comment on column OKAY.B_ORDER_HEAD.order_no
  is '订单编号';
comment on column OKAY.B_ORDER_HEAD.urgent_type
  is '是否紧急';
comment on column OKAY.B_ORDER_HEAD.purchase_user_id
  is '采办员ID';
comment on column OKAY.B_ORDER_HEAD.state
  is '状态';
comment on column OKAY.B_ORDER_HEAD.supplier_id
  is '供应商ID';
comment on column OKAY.B_ORDER_HEAD.frame_id
  is '框架ID';
comment on column OKAY.B_ORDER_HEAD.contract_id
  is '合同ID';
comment on column OKAY.B_ORDER_HEAD.sign_date
  is '制单时间';
comment on column OKAY.B_ORDER_HEAD.buyer_tel
  is '买方电话';
comment on column OKAY.B_ORDER_HEAD.buyer_fax
  is '买方传真';
comment on column OKAY.B_ORDER_HEAD.buyer_zip_code
  is '买方邮编';
comment on column OKAY.B_ORDER_HEAD.buyer_address
  is '买方地址';
comment on column OKAY.B_ORDER_HEAD.delivery_contact
  is '交货联系人';
comment on column OKAY.B_ORDER_HEAD.delivery_call
  is '交货电话';
comment on column OKAY.B_ORDER_HEAD.delivery_address
  is '交货地址';
comment on column OKAY.B_ORDER_HEAD.order_amount
  is '订单价格';
comment on column OKAY.B_ORDER_HEAD.transportation_clause
  is '运输条款';
comment on column OKAY.B_ORDER_HEAD.buyer_explain
  is '买家说明';
comment on column OKAY.B_ORDER_HEAD.seller_tel
  is '卖家电话';
comment on column OKAY.B_ORDER_HEAD.seller_fax
  is '卖家传真';
comment on column OKAY.B_ORDER_HEAD.seller_contact
  is '卖家联系人';
comment on column OKAY.B_ORDER_HEAD.seller_address
  is '卖家地址';
comment on column OKAY.B_ORDER_HEAD.purchase_no
  is '物资审批表编号';
comment on column OKAY.B_ORDER_HEAD.materialspurchaseid
  is '物资审批表ID';
comment on column OKAY.B_ORDER_HEAD.order_state
  is '完结状态';
comment on column OKAY.B_ORDER_HEAD.bank_account_number
  is '卖方供应商银行账号';

prompt
prompt Creating table B_OUTSTOCK_DETAIL
prompt ================================
prompt
create table OKAY.B_OUTSTOCK_DETAIL
(
  id                 NVARCHAR2(32) not null,
  outstock_row_no    NUMBER not null,
  outstock_head      NVARCHAR2(32) not null,
  order_detail       NVARCHAR2(32) not null,
  material           NVARCHAR2(32) not null,
  packing            NUMBER(10,2) not null,
  main_price         NUMBER(10,2),
  main_quantity      NUMBER(10,2) not null,
  secondary_price    NUMBER(10,2),
  secondary_quantity NUMBER(10,2),
  remark             NVARCHAR2(1000)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_OUTSTOCK_DETAIL
  add constraint B_OUTSTOCK_DETAIL_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_OUTSTOCK_HEAD
prompt ==============================
prompt
create table OKAY.B_OUTSTOCK_HEAD
(
  id          NVARCHAR2(32) not null,
  outstock_no NVARCHAR2(32) not null,
  warehouse   NVARCHAR2(32),
  out_date    DATE not null,
  user_id     NVARCHAR2(32) not null,
  order_frame NVARCHAR2(32) not null,
  department  NVARCHAR2(32) not null,
  state       NVARCHAR2(20) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create unique index OKAY.TABLE1_PK2 on OKAY.B_OUTSTOCK_HEAD (ID)
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_OUTSTOCK_HEAD
  add constraint TABLE5_PK primary key (ID);

prompt
prompt Creating table B_PAYMENT
prompt ========================
prompt
create table OKAY.B_PAYMENT
(
  id                  NVARCHAR2(32),
  payment_no          NVARCHAR2(50),
  filling_date        DATE,
  supplier            NVARCHAR2(32),
  state               NVARCHAR2(50),
  amount              NUMBER(12,2),
  invoice_ids         CLOB,
  invoice_nos         CLOB,
  storage_ids         CLOB,
  storage_nos         CLOB,
  explain             NVARCHAR2(1000),
  frame_nos           CLOB,
  contract_nos        CLOB,
  amount_paid         NUMBER(12,2),
  bank_account_number NVARCHAR2(100)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_PAYMENT.id
  is 'id';
comment on column OKAY.B_PAYMENT.payment_no
  is '付款单号';
comment on column OKAY.B_PAYMENT.filling_date
  is '填报日期';
comment on column OKAY.B_PAYMENT.supplier
  is '供应商';
comment on column OKAY.B_PAYMENT.state
  is '状态';
comment on column OKAY.B_PAYMENT.amount
  is '金额';
comment on column OKAY.B_PAYMENT.invoice_ids
  is '开票id';
comment on column OKAY.B_PAYMENT.invoice_nos
  is '开票单号';
comment on column OKAY.B_PAYMENT.storage_ids
  is '入库id';
comment on column OKAY.B_PAYMENT.storage_nos
  is '入库单号';
comment on column OKAY.B_PAYMENT.explain
  is '付款说明';
comment on column OKAY.B_PAYMENT.frame_nos
  is '协议编号s';
comment on column OKAY.B_PAYMENT.contract_nos
  is '合同编号s';
comment on column OKAY.B_PAYMENT.amount_paid
  is '已付金额';
comment on column OKAY.B_PAYMENT.bank_account_number
  is '开户银行账号';

prompt
prompt Creating table B_PURCHASEPLAN_DETAIL
prompt ====================================
prompt
create table OKAY.B_PURCHASEPLAN_DETAIL
(
  id                    VARCHAR2(32) not null,
  materiel_id           VARCHAR2(32) not null,
  purpose               VARCHAR2(200),
  budget_account        VARCHAR2(32) not null,
  demand_date           INTEGER not null,
  purchase_head_id      VARCHAR2(32) not null,
  budget_amount         NUMBER(10,2) not null,
  demand_quantity       NUMBER(10,2) not null,
  purchasedetail_row_no NUMBER not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_PURCHASEPLAN_DETAIL.id
  is 'UUID';
comment on column OKAY.B_PURCHASEPLAN_DETAIL.materiel_id
  is '物料id';
comment on column OKAY.B_PURCHASEPLAN_DETAIL.purpose
  is '用途';
comment on column OKAY.B_PURCHASEPLAN_DETAIL.budget_account
  is '数据字典';
comment on column OKAY.B_PURCHASEPLAN_DETAIL.demand_date
  is '只记月份，展示时关联主表年份';
comment on column OKAY.B_PURCHASEPLAN_DETAIL.purchase_head_id
  is '主表id';

prompt
prompt Creating table B_PURCHASEPLAN_HEAD
prompt ==================================
prompt
create table OKAY.B_PURCHASEPLAN_HEAD
(
  id           VARCHAR2(32) not null,
  plan_no      VARCHAR2(10) not null,
  department   VARCHAR2(32) not null,
  input_userid VARCHAR2(32) not null,
  input_date   DATE not null,
  year         VARCHAR2(4) not null,
  all_amount   NUMBER(10,2) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_PURCHASEPLAN_HEAD.id
  is 'UUID';
comment on column OKAY.B_PURCHASEPLAN_HEAD.plan_no
  is '采购计划号';
comment on column OKAY.B_PURCHASEPLAN_HEAD.department
  is '部门id';
comment on column OKAY.B_PURCHASEPLAN_HEAD.input_userid
  is '人员id';
comment on column OKAY.B_PURCHASEPLAN_HEAD.input_date
  is '制单日期';
comment on column OKAY.B_PURCHASEPLAN_HEAD.year
  is '年份';
comment on column OKAY.B_PURCHASEPLAN_HEAD.all_amount
  is '总金额';

prompt
prompt Creating table B_PURCHASE_CONTRACT_ADDRESS
prompt ==========================================
prompt
create table OKAY.B_PURCHASE_CONTRACT_ADDRESS
(
  id                     NVARCHAR2(32) not null,
  purchase_contract_head NVARCHAR2(32) not null,
  delivery_address       NVARCHAR2(500) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_PURCHASE_CONTRACT_ADDRESS.id
  is 'id';
comment on column OKAY.B_PURCHASE_CONTRACT_ADDRESS.purchase_contract_head
  is '采购合同主表id';
comment on column OKAY.B_PURCHASE_CONTRACT_ADDRESS.delivery_address
  is '交货地址';
alter table OKAY.B_PURCHASE_CONTRACT_ADDRESS
  add constraint B_PURCHASE_CONTRACT_ADDRESS_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_PURCHASE_CONTRACT_DETAIL
prompt =========================================
prompt
create table OKAY.B_PURCHASE_CONTRACT_DETAIL
(
  id                     NVARCHAR2(32) not null,
  purchase_contract_head NVARCHAR2(32) not null,
  tender_contract_detail NVARCHAR2(32),
  material               NVARCHAR2(32) not null,
  main_price             NUMBER(10,2) not null,
  secondary_price        NUMBER(10,2),
  quantity               NUMBER(10,2) not null,
  total_price            NUMBER(10,2) not null,
  purchase_head_id       NVARCHAR2(32) not null,
  purchase_detail_id     NVARCHAR2(32) not null,
  already_quantity       NUMBER(10,2),
  is_already             NVARCHAR2(10) not null,
  budget_plan_detail     NVARCHAR2(32) not null,
  centralized_department NVARCHAR2(32) not null,
  account                NVARCHAR2(32) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.id
  is 'Id';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.purchase_contract_head
  is '采购合同主表';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.tender_contract_detail
  is '招标合同明细id';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.material
  is '物料id';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.main_price
  is '主用单位单价';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.secondary_price
  is '常用单位单价';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.quantity
  is '数量';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.total_price
  is '总价';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.purchase_head_id
  is '审批主表id';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.purchase_detail_id
  is '审批明细表id';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.already_quantity
  is '已生成订单数量';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.is_already
  is 'Y可用，N不可用';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.budget_plan_detail
  is '计划预算明细id';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.centralized_department
  is '归口部门id';
comment on column OKAY.B_PURCHASE_CONTRACT_DETAIL.account
  is '预算科目id';
alter table OKAY.B_PURCHASE_CONTRACT_DETAIL
  add constraint B_PURCHASE_CONTRACT_DETAIL_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_PURCHASE_CONTRACT_HEAD
prompt =======================================
prompt
create table OKAY.B_PURCHASE_CONTRACT_HEAD
(
  id                       NVARCHAR2(32) not null,
  contract_no              NVARCHAR2(200) not null,
  varieties                NVARCHAR2(200),
  tender_contract          NVARCHAR2(32),
  sign_date                DATE not null,
  effect_date              DATE not null,
  expire_date              DATE not null,
  extended_year            INTEGER not null,
  supplier                 NVARCHAR2(32) not null,
  purchase_no              NVARCHAR2(2000) not null,
  materialspurchaseid      NVARCHAR2(2000) not null,
  state                    NVARCHAR2(20) not null,
  a_responsible_department NVARCHAR2(32) not null,
  b_responsible_department NVARCHAR2(200),
  party_a_name             NVARCHAR2(200) not null,
  party_a_chargeperson     NVARCHAR2(200) not null,
  remark                   NVARCHAR2(500),
  extended_expire_date     DATE not null,
  bank_account_number      NVARCHAR2(100) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_PURCHASE_CONTRACT_HEAD
  add constraint B_PURCHASE_CONTRACT_HEAD_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_STOCK
prompt ======================
prompt
create table OKAY.B_STOCK
(
  id            NVARCHAR2(32) not null,
  warehouse     NVARCHAR2(32),
  user_id       NVARCHAR2(32) not null,
  frame_id      NVARCHAR2(32),
  contract_id   NVARCHAR2(32),
  material      NVARCHAR2(32) not null,
  order_frame   NVARCHAR2(32) not null,
  order_detail  NVARCHAR2(32) not null,
  stroagedetail NVARCHAR2(32) not null,
  stroagehead   NVARCHAR2(32) not null,
  stocknum      NUMBER(10,2) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_STOCK
  add constraint B_STOCK_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_STORAGE_DETAIL
prompt ===============================
prompt
create table OKAY.B_STORAGE_DETAIL
(
  id                 NVARCHAR2(32) not null,
  no                 NUMBER not null,
  storge_head        NVARCHAR2(32) not null,
  order_detail       NVARCHAR2(32) not null,
  material           NVARCHAR2(32) not null,
  packing            NUMBER(10,2) not null,
  main_price         NUMBER(10,2) not null,
  main_quantity      NUMBER(10,2) not null,
  secondary_price    NUMBER(10,2),
  remark             NVARCHAR2(1000),
  secondary_quantity NUMBER(10,2)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_STORAGE_DETAIL
  add constraint B_STORAGE_DETAIL_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_STORAGE_HEAD
prompt =============================
prompt
create table OKAY.B_STORAGE_HEAD
(
  id               NVARCHAR2(32) not null,
  storage_no       NVARCHAR2(32) not null,
  warehouse        NVARCHAR2(32),
  entry_date       DATE not null,
  user_id          NVARCHAR2(32) not null,
  state            NVARCHAR2(20) not null,
  order_frame      NVARCHAR2(32) not null,
  is_choice        NVARCHAR2(20),
  main_totalamount NUMBER(10,2) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_STORAGE_HEAD.main_totalamount
  is '总金额';
alter table OKAY.B_STORAGE_HEAD
  add constraint B_STORAGE_HEAD_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_SUPPLIER_CAPACITY
prompt ==================================
prompt
create table OKAY.B_SUPPLIER_CAPACITY
(
  id          VARCHAR2(35) not null,
  supplier_id VARCHAR2(35) not null,
  materiel_id VARCHAR2(35) not null,
  price       NUMBER not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_SUPPLIER_CAPACITY
  add constraint B_SUPPLIER_CAPACITY_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_SUPPLIER_SCORE
prompt ===============================
prompt
create table OKAY.B_SUPPLIER_SCORE
(
  id          VARCHAR2(35) not null,
  supplier_id VARCHAR2(35) not null,
  year        VARCHAR2(10) not null,
  score       VARCHAR2(10)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_SUPPLIER_SCORE
  add constraint B_SUPPLIER_SCORE_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_TENDER_CONTRACT_DETAIL
prompt =======================================
prompt
create table OKAY.B_TENDER_CONTRACT_DETAIL
(
  id                     NVARCHAR2(32) not null,
  tender_contract        NVARCHAR2(32) not null,
  material               NVARCHAR2(32) not null,
  main_price             NUMBER(10,2),
  secondary_price        NUMBER(10,2),
  quantity               NUMBER(10,2),
  purchase_detail_id     NVARCHAR2(32),
  purchase_head_id       NVARCHAR2(32),
  tcd_row_num            NVARCHAR2(32),
  budget_plan_detail     NVARCHAR2(32),
  centralized_department NVARCHAR2(32),
  account                NVARCHAR2(32)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_TENDER_CONTRACT_HEAD
prompt =====================================
prompt
create table OKAY.B_TENDER_CONTRACT_HEAD
(
  id                  NVARCHAR2(32) not null,
  tender_no           NVARCHAR2(20) not null,
  release_date        DATE not null,
  open_date           DATE not null,
  state               NVARCHAR2(200) not null,
  open_place          NVARCHAR2(500) not null,
  big_supplier        NVARCHAR2(32),
  remark              NVARCHAR2(255),
  materialspurchaseid NVARCHAR2(500),
  purchase_no         NVARCHAR2(500)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_TENDER_CONTRACT_HEAD.id
  is 'uuid';
comment on column OKAY.B_TENDER_CONTRACT_HEAD.tender_no
  is '框架协议招标和合同招标共用流水';
comment on column OKAY.B_TENDER_CONTRACT_HEAD.big_supplier
  is '供应商id';
comment on column OKAY.B_TENDER_CONTRACT_HEAD.materialspurchaseid
  is '物资采购审批表id';

prompt
prompt Creating table B_TENDER_CONTRACT_OFFER_DETAIL
prompt =============================================
prompt
create table OKAY.B_TENDER_CONTRACT_OFFER_DETAIL
(
  id                  NVARCHAR2(32) not null,
  tender_detail       NVARCHAR2(32) not null,
  contract_offer_head NVARCHAR2(32) not null,
  material            NVARCHAR2(32) not null,
  main_price          NUMBER(10,2) not null,
  secondary_price     NUMBER(10,2)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_TENDER_CONTRACT_OFFER_HEAD
prompt ===========================================
prompt
create table OKAY.B_TENDER_CONTRACT_OFFER_HEAD
(
  id                       NVARCHAR2(32) not null,
  tender_contract          NVARCHAR2(32) not null,
  supplier                 NVARCHAR2(32) not null,
  tender_contract_supplier NVARCHAR2(32) not null,
  file_id                  NVARCHAR2(32) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_TENDER_CONTRACT_SUPPLIER
prompt =========================================
prompt
create table OKAY.B_TENDER_CONTRACT_SUPPLIER
(
  id              NVARCHAR2(32) not null,
  tender_contract NVARCHAR2(32) not null,
  supplier        NVARCHAR2(200) not null,
  email           NVARCHAR2(200) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.B_TENDER_CONTRACT_SUPPLIER.supplier
  is '主表id';

prompt
prompt Creating table B_TENDER_FRAME_DETAIL
prompt ====================================
prompt
create table OKAY.B_TENDER_FRAME_DETAIL
(
  id                       NVARCHAR2(32) not null,
  tender_frame             NVARCHAR2(32) not null,
  material                 NVARCHAR2(32) not null,
  main_price               NUMBER(10,2),
  secondary_price          NUMBER(10,2),
  tenderframedetail_row_no NUMBER not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_TENDER_FRAME_DETAIL
  add constraint B_TENDER_FRAME_DETAIL_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_TENDER_FRAME_HEAD
prompt ==================================
prompt
create table OKAY.B_TENDER_FRAME_HEAD
(
  id           NVARCHAR2(32) not null,
  tender_no    NVARCHAR2(20) not null,
  release_date DATE not null,
  open_date    DATE not null,
  state        NVARCHAR2(20) not null,
  open_place   NVARCHAR2(200) not null,
  big_supplier NVARCHAR2(32),
  remark       NVARCHAR2(200)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_TENDER_FRAME_HEAD
  add constraint B_TENDER_FRAME_HEAD_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_TENDER_FRAME_OFFER_DETAIL
prompt ==========================================
prompt
create table OKAY.B_TENDER_FRAME_OFFER_DETAIL
(
  id               NVARCHAR2(32) not null,
  tender_detail    NVARCHAR2(32) not null,
  frame_offer_head NVARCHAR2(32) not null,
  material         NVARCHAR2(32) not null,
  main_price       NUMBER(10,2) not null,
  secondary_price  NUMBER(10,2)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_TENDER_FRAME_OFFER_DETAIL
  add constraint B_TENDER_FRAME_OFFER_DETAIL_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_TENDER_FRAME_OFFER_HEAD
prompt ========================================
prompt
create table OKAY.B_TENDER_FRAME_OFFER_HEAD
(
  id                    NVARCHAR2(32) not null,
  tender_frame          NVARCHAR2(32) not null,
  supplier              NVARCHAR2(32) not null,
  tender_frame_supplier NVARCHAR2(32) not null,
  file_id               NVARCHAR2(32) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_TENDER_FRAME_OFFER_HEAD
  add constraint B_TENDER_FRAME_OFFER_HEAD_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_TENDER_FRAME_SUPPLIER
prompt ======================================
prompt
create table OKAY.B_TENDER_FRAME_SUPPLIER
(
  id           NVARCHAR2(32) not null,
  tender_frame NVARCHAR2(32) not null,
  supplier     NVARCHAR2(32) not null,
  email        NVARCHAR2(32) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table OKAY.B_TENDER_FRAME_SUPPLIER
  add constraint B_TENDER_FRAME_SUPPLIER_PK primary key (ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table INTERMEDIATE_SUPPLIER
prompt ====================================
prompt
create table OKAY.INTERMEDIATE_SUPPLIER
(
  supplier_type            VARCHAR2(20) not null,
  state                    VARCHAR2(20),
  brief_introduction       VARCHAR2(1000),
  temp_id                  VARCHAR2(32) not null,
  supplier_name            VARCHAR2(200) not null,
  legal_person             VARCHAR2(200),
  province                 VARCHAR2(20) not null,
  address                  VARCHAR2(200) not null,
  fax                      VARCHAR2(11),
  email                    VARCHAR2(200) not null,
  linkman                  VARCHAR2(200) not null,
  post                     VARCHAR2(200) not null,
  tel                      VARCHAR2(11) not null,
  financial_contact        VARCHAR2(200),
  financial_tel            VARCHAR2(200),
  financial_email          VARCHAR2(200),
  opening_bank             VARCHAR2(1000) not null,
  social_credit_code       CHAR(18) not null,
  quality_system           VARCHAR2(200),
  hygiene_license          VARCHAR2(200),
  food_circulation_license VARCHAR2(200),
  remark                   VARCHAR2(1000),
  id                       VARCHAR2(40) not null,
  year                     VARCHAR2(20),
  score                    VARCHAR2(20),
  supplier_no              VARCHAR2(200),
  bank_account_number      VARCHAR2(100) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column OKAY.INTERMEDIATE_SUPPLIER.supplier_type
  is '供应商类型';
comment on column OKAY.INTERMEDIATE_SUPPLIER.state
  is '供应商状态';
comment on column OKAY.INTERMEDIATE_SUPPLIER.brief_introduction
  is '厂家简介';
comment on column OKAY.INTERMEDIATE_SUPPLIER.temp_id
  is 'id';
comment on column OKAY.INTERMEDIATE_SUPPLIER.supplier_name
  is '供应商名称';
comment on column OKAY.INTERMEDIATE_SUPPLIER.legal_person
  is '法人代表';
comment on column OKAY.INTERMEDIATE_SUPPLIER.province
  is '省份';
comment on column OKAY.INTERMEDIATE_SUPPLIER.address
  is '地址';
comment on column OKAY.INTERMEDIATE_SUPPLIER.fax
  is '传真';
comment on column OKAY.INTERMEDIATE_SUPPLIER.email
  is '邮箱';
comment on column OKAY.INTERMEDIATE_SUPPLIER.linkman
  is '联系人';
comment on column OKAY.INTERMEDIATE_SUPPLIER.post
  is '职务';
comment on column OKAY.INTERMEDIATE_SUPPLIER.tel
  is '电话';
comment on column OKAY.INTERMEDIATE_SUPPLIER.financial_contact
  is '财务联系人';
comment on column OKAY.INTERMEDIATE_SUPPLIER.financial_tel
  is '财务联系电话';
comment on column OKAY.INTERMEDIATE_SUPPLIER.financial_email
  is '财务邮箱';
comment on column OKAY.INTERMEDIATE_SUPPLIER.opening_bank
  is '开户行';
comment on column OKAY.INTERMEDIATE_SUPPLIER.social_credit_code
  is '社会信用代码';
comment on column OKAY.INTERMEDIATE_SUPPLIER.quality_system
  is '质量体系';
comment on column OKAY.INTERMEDIATE_SUPPLIER.hygiene_license
  is '卫生许可证';
comment on column OKAY.INTERMEDIATE_SUPPLIER.food_circulation_license
  is '食品流通许可证';
comment on column OKAY.INTERMEDIATE_SUPPLIER.remark
  is '备注';
comment on column OKAY.INTERMEDIATE_SUPPLIER.id
  is '原始id';
comment on column OKAY.INTERMEDIATE_SUPPLIER.year
  is '提交时的年份';
comment on column OKAY.INTERMEDIATE_SUPPLIER.score
  is '提交时的当年评审等级';
comment on column OKAY.INTERMEDIATE_SUPPLIER.supplier_no
  is '供应商编码';
comment on column OKAY.INTERMEDIATE_SUPPLIER.bank_account_number
  is '开户行账号';
alter table OKAY.INTERMEDIATE_SUPPLIER
  add constraint INTERMEDIATE_SUPPLIER_PK primary key (TEMP_ID)
  using index 
  tablespace TEST11G
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_AUTHORITY
prompt ============================
prompt
create table OKAY.SYS_AUTHORITY
(
  auth_id   NVARCHAR2(100) not null,
  auth_code NVARCHAR2(100) not null,
  auth_name NVARCHAR2(100) not null,
  parentid  NVARCHAR2(100) not null,
  row_order NVARCHAR2(50)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_COMPANY
prompt ==========================
prompt
create table OKAY.SYS_COMPANY
(
  company_id       NVARCHAR2(100) not null,
  company_code     NVARCHAR2(100) not null,
  company_name     NVARCHAR2(100) not null,
  company_type     NVARCHAR2(100) not null,
  parentid         NVARCHAR2(100) not null,
  levels           NUMBER not null,
  remark           NVARCHAR2(500),
  isdel            NUMBER,
  company_district NVARCHAR2(500),
  company_address  NVARCHAR2(500),
  company_contact  NVARCHAR2(50),
  company_tel      NVARCHAR2(20)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_DICTIONARY
prompt =============================
prompt
create table OKAY.SYS_DICTIONARY
(
  dic_id           NVARCHAR2(100) not null,
  parentid         NVARCHAR2(100) not null,
  dic_code         NVARCHAR2(100),
  dic_name         NVARCHAR2(500) not null,
  levels           NUMBER not null,
  dic_order        NUMBER not null,
  dic_type         NUMBER not null,
  isdel            NUMBER default ((0)),
  dic_name_group   NVARCHAR2(200),
  dic_exim_code    NVARCHAR2(100),
  dic_english_name NVARCHAR2(500)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_FILE_INFO
prompt ============================
prompt
create table OKAY.SYS_FILE_INFO
(
  file_id          NVARCHAR2(64),
  file_module_name NVARCHAR2(200),
  file_module_code NVARCHAR2(64),
  file_type_name   NVARCHAR2(200),
  file_type_code   NVARCHAR2(64),
  des              NVARCHAR2(200),
  fk_id            NVARCHAR2(200),
  file_path        NVARCHAR2(500),
  input_date       TIMESTAMP(6),
  input_userid     NVARCHAR2(64),
  input_username   NVARCHAR2(64),
  input_deptid     NVARCHAR2(64),
  input_deptname   NVARCHAR2(64),
  ifdel            NUMBER default ((0)),
  u_id             RAW(40),
  import_no        NVARCHAR2(64),
  file_begintime   TIMESTAMP(6),
  file_endtime     TIMESTAMP(6),
  file_old         NVARCHAR2(64),
  real_name        NVARCHAR2(200),
  company_id       NVARCHAR2(64)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_FLOWSET_DETAIL
prompt =================================
prompt
create table OKAY.SYS_FLOWSET_DETAIL
(
  record_id    NVARCHAR2(64) not null,
  fk_record_id NVARCHAR2(64) not null,
  order_no     NUMBER,
  flow_name    NVARCHAR2(64),
  role_id      NVARCHAR2(64),
  role_name    NVARCHAR2(100),
  flow_sign    NUMBER,
  memo         NVARCHAR2(200),
  ifdel        NUMBER default ((0))
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_FLOWSET_HEAD
prompt ===============================
prompt
create table OKAY.SYS_FLOWSET_HEAD
(
  record_id     NVARCHAR2(64) not null,
  record_code   NVARCHAR2(64),
  work_type     NVARCHAR2(64),
  table_name    NVARCHAR2(64),
  state_col     NVARCHAR2(64),
  check_val     NVARCHAR2(64),
  uncheck_val   NVARCHAR2(64),
  order_col     NVARCHAR2(64),
  levels        NUMBER,
  memo          NVARCHAR2(200),
  ifdel         NUMBER default ((0)),
  other_val     NVARCHAR2(500),
  unother_val   NVARCHAR2(500),
  service_name  NVARCHAR2(200),
  pass_method   NVARCHAR2(200),
  reject_method NVARCHAR2(200),
  connections   NVARCHAR2(400)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_LOG
prompt ======================
prompt
create table OKAY.SYS_LOG
(
  logid      VARCHAR2(1000) not null,
  logname    VARCHAR2(4000),
  logcontext VARCHAR2(4000),
  loguser    VARCHAR2(4000),
  logip      VARCHAR2(4000),
  logdate    TIMESTAMP(6),
  logtype    VARCHAR2(4000),
  companyid  VARCHAR2(40)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_ROLE
prompt =======================
prompt
create table OKAY.SYS_ROLE
(
  role_id   NVARCHAR2(100) not null,
  role_name NVARCHAR2(100) not null,
  remarks   NVARCHAR2(1000),
  isdel     CHAR(1) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_ROLE_AUTHORITY
prompt =================================
prompt
create table OKAY.SYS_ROLE_AUTHORITY
(
  role_id   NVARCHAR2(100) not null,
  auth_id   NVARCHAR2(100) not null,
  auth_code NVARCHAR2(100)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_TEMP_FBT
prompt ===========================
prompt
create global temporary table OKAY.SYS_TEMP_FBT
(
  schema      VARCHAR2(32),
  object_name VARCHAR2(32),
  object#     NUMBER,
  rid         UROWID(4000),
  action      CHAR(1)
)
on commit preserve rows;

prompt
prompt Creating table SYS_USER
prompt =======================
prompt
create table OKAY.SYS_USER
(
  user_id     NVARCHAR2(100) not null,
  userinfo_id NVARCHAR2(100) not null,
  username    NVARCHAR2(100) not null,
  password    NVARCHAR2(100),
  sysadmin    NUMBER default ((0)),
  appadmin    NUMBER default ((0)),
  isuse       NUMBER default ((1)),
  isdel       NUMBER default ((0))
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_USERINFO
prompt ===========================
prompt
create table OKAY.SYS_USERINFO
(
  userinfo_id     NVARCHAR2(100) not null,
  user_id         NVARCHAR2(100) not null,
  realname        NVARCHAR2(100),
  workno          NVARCHAR2(100),
  specialty       NVARCHAR2(100),
  position        NVARCHAR2(100),
  sex             NUMBER,
  email           NVARCHAR2(100),
  workemail       NVARCHAR2(100),
  phone           NVARCHAR2(100),
  workphone       NVARCHAR2(100),
  tel             NVARCHAR2(100),
  address         NVARCHAR2(500),
  sign_password   NVARCHAR2(100),
  company_id      NVARCHAR2(100),
  createtime      TIMESTAMP(6),
  lastlogintime   TIMESTAMP(6),
  lastloginip     NVARCHAR2(100),
  haiyangusercode NVARCHAR2(100),
  gufenusercode   NVARCHAR2(100)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_USER_AUTHORITY
prompt =================================
prompt
create table OKAY.SYS_USER_AUTHORITY
(
  user_id   NVARCHAR2(100) not null,
  auth_id   NVARCHAR2(100) not null,
  auth_code NVARCHAR2(100) not null,
  auth_type NVARCHAR2(100),
  fk_role   NVARCHAR2(100)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_USER_ROLE
prompt ============================
prompt
create table OKAY.SYS_USER_ROLE
(
  user_id NVARCHAR2(100) not null,
  role_id NVARCHAR2(100) not null
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_WORK_PROCESS_RECORD
prompt ======================================
prompt
create table OKAY.SYS_WORK_PROCESS_RECORD
(
  record_id        NVARCHAR2(64) not null,
  fk_record_id     NVARCHAR2(64),
  work_no          NVARCHAR2(200),
  process_id       NVARCHAR2(64),
  process_name     NVARCHAR2(100),
  order_no         NUMBER,
  role_id          NVARCHAR2(64),
  user_id          NVARCHAR2(500),
  input_date       TIMESTAMP(6),
  check_time       TIMESTAMP(6),
  check_userid     NVARCHAR2(64),
  check_username   NVARCHAR2(64),
  check_deptid     NVARCHAR2(64),
  check_deptname   NVARCHAR2(64),
  check_suggestion NVARCHAR2(100),
  check_result     NVARCHAR2(64),
  flow_sign        NUMBER,
  u_id             RAW(100),
  project_no       NVARCHAR2(64),
  project_name     NVARCHAR2(64)
)
tablespace TEST11G
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );


spool off
