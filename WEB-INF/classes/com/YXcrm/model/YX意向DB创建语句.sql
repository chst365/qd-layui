--------------------------------------
--2、意向学员表t_yxstudent

CREATE TABLE t_yxstudent (
  uuid varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  sex varchar(50) DEFAULT NULL,
  phone varchar(50) DEFAULT NULL,
  grade varchar(50) DEFAULT NULL,
  school varchar(50) DEFAULT NULL,
  weixin varchar(50) DEFAULT NULL,
  
  studentID int NOT NULL,
  
  parentRela varchar(50) DEFAULT NULL,
  parentName varchar(50) DEFAULT NULL,
  parentPhone varchar(50) DEFAULT NULL,
  parentWeixin varchar(50) DEFAULT NULL,
  
    
  parentRela2 varchar(50) DEFAULT NULL,
  parentName2 varchar(50) DEFAULT NULL,
  parentPhone2 varchar(50) DEFAULT NULL,
  parentWeixin2 varchar(50) DEFAULT NULL,
  
  empUuid varchar(50) NOT NULL,
  rank varchar(50) NOT NULL,
  source varchar(50) NOT NULL,
  courseYX varchar(250) NOT NULL,
  
  openAndclose varchar(10) DEFAULT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
-- 跟踪记录  t_record

CREATE TABLE t_record (
  uuid varchar(50) NOT NULL,
  yxstuUuid varchar(50) NOT NULL,
  recordDate varchar(50) DEFAULT NULL,
  remarkText varchar(250) DEFAULT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
--3、员工表t_employee

CREATE TABLE t_employee (
  uuid varchar(50) NOT NULL,
  name varchar(30) NOT NULL,
  empNum varchar(30) DEFAULT NULL,
  phone varchar(30) DEFAULT NULL,
  depart varchar(30) DEFAULT NULL,
  job varchar(30) DEFAULT NULL,
  permissionTempl varchar(30) DEFAULT NULL,
  remark varchar(255) DEFAULT NULL,
  claTeacher varchar(30) NOT NULL,
  
  sex varchar(30) DEFAULT NULL,
  org varchar(30) DEFAULT NULL,
  workDate varchar(30) DEFAULT NULL,
  fullhalf varchar(30) DEFAULT NULL,
  jobRemark varchar(30) DEFAULT NULL,
  openAndclose varchar(10) DEFAULT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
-- 手机号码表t_dphone

CREATE TABLE t_dphone (
  uuid varchar(50) NOT NULL,
  phoneNO varchar(50) NOT NULL,
  ditchUuid varchar(50) NOT NULL,
  empDitUuid varchar(50) NOT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
-- 微信号码表t_dweixin

CREATE TABLE t_dweixin (
  uuid varchar(50) NOT NULL,
  weixinNO varchar(50) NOT NULL,
  ditchUuid varchar(50) NOT NULL,
  empDitUuid varchar(50) NOT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
-- 学生日志表t_logstu

CREATE TABLE t_logstu (
  uuid varchar(50) NOT NULL,
  userUuid varchar(50) NOT NULL,
  userName varchar(50) NOT NULL,
  tableName varchar(50) NOT NULL,
  tableNameChina varchar(50) DEFAULT NULL,
  dataUuid varchar(50) DEFAULT NULL,
  dataName varchar(50) DEFAULT NULL,
  userAction varchar(50) DEFAULT NULL,
  updateTime datetime NOT NULL,
  
  PRIMARY KEY (uuid)
);


--------------------------------------
-- 日志关系表t_loggx

CREATE TABLE t_loggx (
  uuid varchar(50) NOT NULL,
  userUuid varchar(50) NOT NULL,
  userName varchar(50) NOT NULL,
  tableName varchar(50) NOT NULL,
  tableNameChina varchar(50) DEFAULT NULL,
  dataUuid varchar(50) DEFAULT NULL,
  dataName varchar(50) DEFAULT NULL,
  userAction varchar(50) DEFAULT NULL,
  updateTime datetime NOT NULL,
  
  dataGxUuid varchar(50) DEFAULT NULL,
  dataGxChina varchar(250) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------


--------------------------------------


--------------------------------------


--------------------------------------
-- 部门表t_department

CREATE TABLE t_department (
  uuid varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  remark varchar(250) DEFAULT NULL,
  openAndclose varchar(10) DEFAULT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);

--------------------------------------
--9、角色表t_role

CREATE TABLE t_role (
  uuid varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  remark varchar(50)Not Null,
  PRIMARY KEY (uuid)
);

--------------------------------------
--9、资源表t_resource

CREATE TABLE t_resource (
  uuid varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  
  createDate datetime DEFAULT NULL,
  modifyDate datetime DEFAULT NULL,
  createPeople varchar(50) DEFAULT NULL,
  modifyPeople varchar(50) DEFAULT NULL,
  
  PRIMARY KEY (uuid)
);


--------------------------------------


--------------------------------------


--16、用户角色表t_userPK

CREATE TABLE t_userPK_role (
  uuid varchar(50) NOT NULL,
  userPkid varchar(50) NOT NULL,
  Roleid varchar(50) NOT NULL,
  PRIMARY KEY (uuid)
);

=======

--15、角色资源表t_role_resource

CREATE TABLE t_role_resource (
  uuid varchar(50) NOT NULL,
  roleid varchar(50) NOT NULL,
  resourceid varchar(50) NOT NULL,
  
  PRIMARY KEY (uuid)
);