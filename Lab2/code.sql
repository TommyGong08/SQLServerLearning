if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AfterService') and o.name = 'FK_AFTERSER_RELATIONS_CUSTOMER')
alter table AfterService
   drop constraint FK_AFTERSER_RELATIONS_CUSTOMER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AfterService') and o.name = 'FK_AFTERSER_RELATIONS_COSTOMER')
alter table AfterService
   drop constraint FK_AFTERSER_RELATIONS_COSTOMER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AfterService') and o.name = 'FK_AFTERSER_RELATIONS_LIVE_REP')
alter table AfterService
   drop constraint FK_AFTERSER_RELATIONS_LIVE_REP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Contract') and o.name = 'FK_CONTRACT_RELATIONS_AFTERSER')
alter table Contract
   drop constraint FK_CONTRACT_RELATIONS_AFTERSER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Contract') and o.name = 'FK_CONTRACT_RELATIONS_CUSTOMER')
alter table Contract
   drop constraint FK_CONTRACT_RELATIONS_CUSTOMER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Contract') and o.name = 'FK_CONTRACT_RELATIONS_EMP')
alter table Contract
   drop constraint FK_CONTRACT_RELATIONS_EMP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Contract_Product') and o.name = 'FK_CONTRACT_RELATIONS_CONTRACT')
alter table Contract_Product
   drop constraint FK_CONTRACT_RELATIONS_CONTRACT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Contract_Product') and o.name = 'FK_CONTRACT_RELATIONS_PRODUCT')
alter table Contract_Product
   drop constraint FK_CONTRACT_RELATIONS_PRODUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Costomer_Servicer') and o.name = 'FK_COSTOMER_RELATIONS_AFTERSER')
alter table Costomer_Servicer
   drop constraint FK_COSTOMER_RELATIONS_AFTERSER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Customer') and o.name = 'FK_CUSTOMER_RELATIONS_AFTERSER')
alter table Customer
   drop constraint FK_CUSTOMER_RELATIONS_AFTERSER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Emp') and o.name = 'FK_EMP_RELATIONS_DEPT')
alter table Emp
   drop constraint FK_EMP_RELATIONS_DEPT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Engineer') and o.name = 'FK_ENGINEER_RELATIONS_LIVE_REP')
alter table Engineer
   drop constraint FK_ENGINEER_RELATIONS_LIVE_REP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Engineer') and o.name = 'FK_ENGINEER_RELATIONS_PRODUCT_')
alter table Engineer
   drop constraint FK_ENGINEER_RELATIONS_PRODUCT_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Engineer') and o.name = 'FK_ENGINEER_RELATIONS_TELEPHON')
alter table Engineer
   drop constraint FK_ENGINEER_RELATIONS_TELEPHON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Payment') and o.name = 'FK_PAYMENT_RELATIONS_CONTRACT')
alter table Payment
   drop constraint FK_PAYMENT_RELATIONS_CONTRACT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Payment_Paid') and o.name = 'FK_PAYMENT__RELATIONS_PAID')
alter table Payment_Paid
   drop constraint FK_PAYMENT__RELATIONS_PAID
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Payment_Paid') and o.name = 'FK_PAYMENT__RELATIONS_PAYMENT')
alter table Payment_Paid
   drop constraint FK_PAYMENT__RELATIONS_PAYMENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Phone_Call') and o.name = 'FK_PHONE_CA_RELATIONS_AFTERSER')
alter table Phone_Call
   drop constraint FK_PHONE_CA_RELATIONS_AFTERSER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Product') and o.name = 'FK_PRODUCT_RELATIONS_VENDER')
alter table Product
   drop constraint FK_PRODUCT_RELATIONS_VENDER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Product_Repair') and o.name = 'FK_PRODUCT__RELATIONS_AFTERSER')
alter table Product_Repair
   drop constraint FK_PRODUCT__RELATIONS_AFTERSER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Telephone_Consultation') and o.name = 'FK_TELEPHON_RELATIONS_AFTERSER')
alter table Telephone_Consultation
   drop constraint FK_TELEPHON_RELATIONS_AFTERSER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AfterService')
            and   name  = 'Relationship_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index AfterService.Relationship_16_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AfterService')
            and   name  = 'Relationship_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index AfterService.Relationship_14_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AfterService')
            and   type = 'U')
   drop table AfterService
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Contract')
            and   name  = 'Relationship_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index Contract.Relationship_4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Contract')
            and   name  = 'Relationship_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index Contract.Relationship_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Contract')
            and   type = 'U')
   drop table Contract
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Contract_Product')
            and   name  = 'Relationship_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index Contract_Product.Relationship_6_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Contract_Product')
            and   name  = 'Relationship_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index Contract_Product.Relationship_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Contract_Product')
            and   type = 'U')
   drop table Contract_Product
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Costomer_Servicer')
            and   name  = 'Relationship_17_FK'
            and   indid > 0
            and   indid < 255)
   drop index Costomer_Servicer.Relationship_17_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Costomer_Servicer')
            and   type = 'U')
   drop table Costomer_Servicer
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Customer')
            and   name  = 'Relationship_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index Customer.Relationship_13_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Customer')
            and   type = 'U')
   drop table Customer
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Dept')
            and   type = 'U')
   drop table Dept
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Emp')
            and   name  = 'Relationship_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index Emp.Relationship_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Emp')
            and   type = 'U')
   drop table Emp
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Engineer')
            and   name  = 'Relationship_23_FK'
            and   indid > 0
            and   indid < 255)
   drop index Engineer.Relationship_23_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Engineer')
            and   name  = 'Relationship_22_FK'
            and   indid > 0
            and   indid < 255)
   drop index Engineer.Relationship_22_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Engineer')
            and   name  = 'Relationship_21_FK'
            and   indid > 0
            and   indid < 255)
   drop index Engineer.Relationship_21_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Engineer')
            and   type = 'U')
   drop table Engineer
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Live_Repairment')
            and   type = 'U')
   drop table Live_Repairment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Paid')
            and   type = 'U')
   drop table Paid
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Payment')
            and   name  = 'Relationship_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index Payment.Relationship_7_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Payment')
            and   type = 'U')
   drop table Payment
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Payment_Paid')
            and   name  = 'Relationship_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index Payment_Paid.Relationship_9_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Payment_Paid')
            and   name  = 'Relationship_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index Payment_Paid.Relationship_8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Payment_Paid')
            and   type = 'U')
   drop table Payment_Paid
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Phone_Call')
            and   type = 'U')
   drop table Phone_Call
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Product')
            and   name  = 'Relationship_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Product.Relationship_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Product')
            and   type = 'U')
   drop table Product
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Product_Repair')
            and   type = 'U')
   drop table Product_Repair
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Telephone_Consultation')
            and   type = 'U')
   drop table Telephone_Consultation
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Vender')
            and   type = 'U')
   drop table Vender
go

/*==============================================================*/
/* Table: AfterService                                          */
/*==============================================================*/
create table AfterService (
   Service_ID           int                  not null,
   Cus_Customer_ID      int                  not null,
   Cos_Customer_Servicer_ID int                  not null,
   Contract_ID          int                  not null,
   ServiceStartTime     char(256)            not null,
   ServiceEndTime       char(256)            not null,
   ServiceType          char(256)            not null,
   Customer_Servicer_ID int                  not null,
   Customer_ID          int                  not null,
   Service_date         datetime             null,
   constraint PK_AFTERSERVICE primary key nonclustered (Service_ID)
)
go

/*==============================================================*/
/* Index: Relationship_14_FK                                    */
/*==============================================================*/
create index Relationship_14_FK on AfterService (
Cus_Customer_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_16_FK                                    */
/*==============================================================*/
create index Relationship_16_FK on AfterService (
Cos_Customer_Servicer_ID ASC
)
go

/*==============================================================*/
/* Table: Contract                                              */
/*==============================================================*/
create table Contract (
   Contract_ID          int                  not null,
   Customer_ID          int                  null,
   Sale_ID              int                  not null,
   Code                 char(64)             not null,
   Name                 varchar(256)         not null,
   Contract_date        char(10)             null,
   constraint PK_CONTRACT primary key nonclustered (Contract_ID)
)
go

/*==============================================================*/
/* Index: Relationship_3_FK                                     */
/*==============================================================*/
create index Relationship_3_FK on Contract (
Customer_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_4_FK                                     */
/*==============================================================*/
create index Relationship_4_FK on Contract (
Sale_ID ASC
)
go

/*==============================================================*/
/* Table: Contract_Product                                      */
/*==============================================================*/
create table Contract_Product (
   Contract_ID          int                  not null,
   Product_ID           int                  not null,
   Amount               int                  not null,
   Price                numeric              not null,
   Discount             numeric              not null
)
go

/*==============================================================*/
/* Index: Relationship_5_FK                                     */
/*==============================================================*/
create index Relationship_5_FK on Contract_Product (
Contract_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_6_FK                                     */
/*==============================================================*/
create index Relationship_6_FK on Contract_Product (
Product_ID ASC
)
go

/*==============================================================*/
/* Table: Costomer_Servicer                                     */
/*==============================================================*/
create table Costomer_Servicer (
   Customer_Servicer_ID int                  not null,
   Service_ID           int                  not null,
   Name                 char(256)            null,
   Dept                 char(256)            null,
   constraint PK_COSTOMER_SERVICER primary key nonclustered (Customer_Servicer_ID)
)
go

/*==============================================================*/
/* Index: Relationship_17_FK                                    */
/*==============================================================*/
create index Relationship_17_FK on Costomer_Servicer (
Service_ID ASC
)
go

/*==============================================================*/
/* Table: Customer                                              */
/*==============================================================*/
create table Customer (
   Customer_ID          int                  not null,
   Service_ID           int                  not null,
   Name                 varchar(128)         not null,
   Tel                  char(256)            null,
   constraint PK_CUSTOMER primary key nonclustered (Customer_ID)
)
go

/*==============================================================*/
/* Index: Relationship_13_FK                                    */
/*==============================================================*/
create index Relationship_13_FK on Customer (
Service_ID ASC
)
go

/*==============================================================*/
/* Table: Dept                                                  */
/*==============================================================*/
create table Dept (
   Dept_ID              int                  not null,
   Name                 varchar(128)         not null,
   Phone                char(11)             null,
   constraint PK_DEPT primary key nonclustered (Dept_ID)
)
go

/*==============================================================*/
/* Table: Emp                                                   */
/*==============================================================*/
create table Emp (
   Emp_ID               int                  not null,
   Dept_ID              int                  not null,
   Name                 varchar(64)          not null,
   constraint PK_EMP primary key nonclustered (Emp_ID)
)
go

/*==============================================================*/
/* Index: Relationship_1_FK                                     */
/*==============================================================*/
create index Relationship_1_FK on Emp (
Dept_ID ASC
)
go

/*==============================================================*/
/* Table: Engineer                                              */
/*==============================================================*/
create table Engineer (
   Engineer_ID          int                  not null,
   Service_ID           int                  not null,
   Dept_ID              int                  null,
   Name                 char(256)            null,
   constraint PK_ENGINEER primary key nonclustered (Engineer_ID)
)
go

/*==============================================================*/
/* Index: Relationship_21_FK                                    */
/*==============================================================*/
/*
create index Relationship_21_FK on Engineer (

)
go
*/
/*==============================================================*/
/* Index: Relationship_22_FK                                    */
/*==============================================================*/
/*
create index Relationship_22_FK on Engineer (

)
go
*/

/*==============================================================*/
/* Index: Relationship_23_FK                                    */
/*==============================================================*/
create index Relationship_23_FK on Engineer (
Service_ID ASC
)
go

/*==============================================================*/
/* Table: Live_Repairment                                       */
/*==============================================================*/
create table Live_Repairment (
   Service_ID           int                  not null,
   Engineer_ID          int                  not null,
   Payment_ID           int                  null,
   Content              varchar(1)           not null,
   constraint PK_LIVE_REPAIRMENT primary key nonclustered (Service_ID)
)
go

/*==============================================================*/
/* Table: Paid                                                  */
/*==============================================================*/
create table Paid (
   Paid_ID              int                  not null,
   Amount               numeric              not null,
   Paid_date            datetime             not null,
   constraint PK_PAID primary key nonclustered (Paid_ID)
)
go

/*==============================================================*/
/* Table: Payment                                               */
/*==============================================================*/
create table Payment (
   Payment_ID           int                  not null,
   Contract_ID          int                  not null,
   Amount               numeric              not null,
   Payment_Date         datetime             not null,
   constraint PK_PAYMENT primary key nonclustered (Payment_ID)
)
go

/*==============================================================*/
/* Index: Relationship_7_FK                                     */
/*==============================================================*/
create index Relationship_7_FK on Payment (
Contract_ID ASC
)
go

/*==============================================================*/
/* Table: Payment_Paid                                          */
/*==============================================================*/
create table Payment_Paid (
   Paid_ID              int                  null,
   Payment_ID           int                  null
)
go

/*==============================================================*/
/* Index: Relationship_8_FK                                     */
/*==============================================================*/
create index Relationship_8_FK on Payment_Paid (
Paid_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_9_FK                                     */
/*==============================================================*/
create index Relationship_9_FK on Payment_Paid (
Payment_ID ASC
)
go

/*==============================================================*/
/* Table: Phone_Call                                            */
/*==============================================================*/
create table Phone_Call (
   Service_ID           int                  not null,
   Tel                  char(256)            null,
   Time                 datetime             null,
   constraint PK_PHONE_CALL primary key nonclustered (Service_ID)
)
go

/*==============================================================*/
/* Table: Product                                               */
/*==============================================================*/
create table Product (
   Product_ID           int                  not null,
   Vender_ID            int                  not null,
   Name                 varchar(128)         not null,
   Price                numeric              not null,
   constraint PK_PRODUCT primary key nonclustered (Product_ID)
)
go

/*==============================================================*/
/* Index: Relationship_2_FK                                     */
/*==============================================================*/
create index Relationship_2_FK on Product (
Vender_ID ASC
)
go

/*==============================================================*/
/* Table: Product_Repair                                        */
/*==============================================================*/
create table Product_Repair (
   Service_ID           int                  not null,
   Engineer_ID          int                  not null,
   Payment_ID           int                  null,
   constraint PK_PRODUCT_REPAIR primary key nonclustered (Service_ID)
)
go

/*==============================================================*/
/* Table: Telephone_Consultation                                */
/*==============================================================*/
create table Telephone_Consultation (
   Service_ID           int                  not null,
   Content              varchar(1)           not null,
   Time                 datetime             not null,
   constraint PK_TELEPHONE_CONSULTATION primary key nonclustered (Service_ID)
)
go

/*==============================================================*/
/* Table: Vender                                                */
/*==============================================================*/
create table Vender (
   Vender_ID            int                  not null,
   Name                 varchar(128)         not null,
   constraint PK_VENDER primary key nonclustered (Vender_ID)
)
go

alter table AfterService
   add constraint FK_AFTERSER_RELATIONS_CUSTOMER foreign key (Cus_Customer_ID)
      references Customer (Customer_ID)
go

alter table AfterService
   add constraint FK_AFTERSER_RELATIONS_COSTOMER foreign key (Cos_Customer_Servicer_ID)
      references Costomer_Servicer (Customer_Servicer_ID)
go

alter table AfterService
   add constraint FK_AFTERSER_RELATIONS_LIVE_REP foreign key (Service_ID)
      references Live_Repairment (Service_ID)
go

alter table Contract
   add constraint FK_CONTRACT_RELATIONS_AFTERSER foreign key (Contract_ID)
      references AfterService (Service_ID)
go

alter table Contract
   add constraint FK_CONTRACT_RELATIONS_CUSTOMER foreign key (Customer_ID)
      references Customer (Customer_ID)
go

alter table Contract
   add constraint FK_CONTRACT_RELATIONS_EMP foreign key (Sale_ID)
      references Emp (Emp_ID)
go

alter table Contract_Product
   add constraint FK_CONTRACT_RELATIONS_CONTRACT foreign key (Contract_ID)
      references Contract (Contract_ID)
go

alter table Contract_Product
   add constraint FK_CONTRACT_RELATIONS_PRODUCT foreign key (Product_ID)
      references Product (Product_ID)
go

alter table Costomer_Servicer
   add constraint FK_COSTOMER_RELATIONS_AFTERSER foreign key (Service_ID)
      references AfterService (Service_ID)
go

alter table Customer
   add constraint FK_CUSTOMER_RELATIONS_AFTERSER foreign key (Service_ID)
      references AfterService (Service_ID)
go

alter table Emp
   add constraint FK_EMP_RELATIONS_DEPT foreign key (Dept_ID)
      references Dept (Dept_ID)
go

alter table Engineer
   add constraint FK_ENGINEER_RELATIONS_LIVE_REP foreign key (Service_ID)
      references Live_Repairment (Service_ID)
go

alter table Engineer
   add constraint FK_ENGINEER_RELATIONS_PRODUCT_ foreign key (Service_ID)
      references Product_Repair (Service_ID)
go

alter table Engineer
   add constraint FK_ENGINEER_RELATIONS_TELEPHON foreign key (Service_ID)
      references Telephone_Consultation (Service_ID)
go

alter table Payment
   add constraint FK_PAYMENT_RELATIONS_CONTRACT foreign key (Contract_ID)
      references Contract (Contract_ID)
go

alter table Payment_Paid
   add constraint FK_PAYMENT__RELATIONS_PAID foreign key (Paid_ID)
      references Paid (Paid_ID)
go

alter table Payment_Paid
   add constraint FK_PAYMENT__RELATIONS_PAYMENT foreign key (Payment_ID)
      references Payment (Payment_ID)
go

alter table Phone_Call
   add constraint FK_PHONE_CA_RELATIONS_AFTERSER foreign key (Service_ID)
      references AfterService (Service_ID)
go

alter table Product
   add constraint FK_PRODUCT_RELATIONS_VENDER foreign key (Vender_ID)
      references Vender (Vender_ID)
go

alter table Product_Repair
   add constraint FK_PRODUCT__RELATIONS_AFTERSER foreign key (Service_ID)
      references AfterService (Service_ID)
go

alter table Telephone_Consultation
   add constraint FK_TELEPHON_RELATIONS_AFTERSER foreign key (Service_ID)
      references AfterService (Service_ID)
go
	
