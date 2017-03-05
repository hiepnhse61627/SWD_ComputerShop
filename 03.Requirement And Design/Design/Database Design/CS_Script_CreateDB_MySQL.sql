Create database computershop default character set utf8;

use computershop;

drop table if exists CS_USER;
drop table if exists CS_CATEGORY;
drop table if exists CS_PRODUCER;
drop table if exists CS_PRODUCT;
drop table if exists CS_SALEOFF;
drop table if exists CS_ORDER;
drop table if exists CS_ORDER_DETAIL;
drop table if exists CS_SHIPPING_INFO;
drop table if exists CS_CART;

create table CS_USER (
      id int not null auto_increment
	, cd varchar(50) not null unique
    , username varchar(50) not null unique
	, password varchar(255)
	, firstname varchar(100)
	, lastname varchar(100)
	, email varchar(255)
	, address varchar(255)
	, phone varchar(20)
	, creditCardNo varchar(20)
	, isVip boolean
	, isAdmin boolean
	, createdOn datetime
	, createdBy varchar(50)
	, modifiedOn datetime
	, modifiedBy varchar(50)
    , primary key (id)
);

create table CS_CATEGORY (
	  id int not null auto_increment
	, cd varchar(100) not null unique
	, name varchar(255)
	, description varchar(255)
	, createdOn datetime
	, createdBy varchar(50)
	, modifiedOn datetime
	, modifiedBy varchar(50)
	, primary key (id)
);

create table CS_PRODUCER (
	  id int not null auto_increment
	, cd varchar(100) not null unique
	, name varchar(255)
	, description varchar(255)
    , email varchar(255)
	, address varchar(255)
	, phone varchar(20)
	, createdOn datetime
	, createdBy varchar(50)
	, modifiedOn datetime
	, modifiedBy varchar(50)
	, primary key (id)
);

create table CS_PRODUCT (
	  id int not null auto_increment
	, cd varchar(100) not null unique
	, categoryCd varchar(100)
	, producerCd varchar(100)
	, name varchar(255)
	, description varchar(255)
	, price float 
	, isSaleOff boolean
	, saleOffCd varchar(100)
	, createdOn datetime
	, createdBy varchar(50)
	, modifiedOn datetime
	, modifiedBy varchar(50)
	, primary key (id)
);

create table CS_SALEOFF (
	  id int not null auto_increment
	, cd varchar(100) not null unique
	, salePercent float
	, description varchar(255)
	, dateFrom datetime
	, dateTo datetime
	, createdOn datetime
	, createdBy varchar(50)
	, modifiedOn datetime
	, modifiedBy varchar(50)
	, primary key (id)
);

create table CS_ORDER (
	  id int not null auto_increment
	, cd varchar(100) not null unique
	, customerCd varchar(50)  /* reference with user's cd*/
	, customerName varchar(200)
	, status varchar(50)
	, createdOn datetime
	, createdBy varchar(50)
	, modifiedOn datetime
	, modifiedBy varchar(50)
	, primary key (id)
);

create table CS_ORDER_DETAIL (
	  id int not null auto_increment
	, orderCd varchar(100) /* reference with order's cd*/
	, productCd varchar(100)
	, productName varchar(255)
	, quantity int
	, unitPrice float
	, totalPrice float
	, createdOn datetime
	, createdBy varchar(50)
	, modifiedOn datetime
	, modifiedBy varchar(50)
	, primary key (id)
);

create table CS_SHIPPING_INFO (
	  id int not null auto_increment
	, orderCd varchar(100) /* reference with order's cd*/
	, shippingType varchar(100)
	, shippingFee float
	, shippingAddress varchar(255)
	, shippingTime datetime
	, createdOn datetime
	, createdBy varchar(50)
	, modifiedOn datetime
	, modifiedBy varchar(50)
	, primary key (id)
);

create table CS_CART (
	  id int not null auto_increment
	, cd varchar(100) not null unique
	, customerCd varchar(50)  /* reference with user's cd*/
	, totalPrice float
	, createdOn datetime
	, createdBy varchar(50)
	, modifiedOn datetime
	, modifiedBy varchar(50)
	, primary key (id)
)