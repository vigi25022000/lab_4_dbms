/* Creating a database and using it to create tables*/

create database e_commerce;

use e_commerce;

Create table supplier (
 SUPP_ID INT,
 SUPP_NAME VARCHAR(50) NOT NULL,
 SUPP_CITY VARCHAR(50) NOT NULL,
 SUPP_PHONE VARCHAR(50) NOT NULL,
 primary key(SUPP_ID)
);
 

 Create table customer (
  CUS_ID INT,
  CUS_NAME VARCHAR(20) NOT NULL,
  CUS_PHONE VARCHAR(10) NOT NULL,
  CUS_CITY VARCHAR(30) NOT NULL,
  CUS_GENDER CHAR(1),
  primary key(CUS_ID)
 );
 
 
 Create table category (
  CAT_ID INT,
  CAT_NAME VARCHAR(20) NOT NULL,
  primary key(CAT_ID)
 );
 

 Create table product (
  PRO_ID INT,
  PRO_NAME VARCHAR(20) DEFAULT 'Dummy',
  PRO_DESC VARCHAR(60) NOT NULL,
  CAT_ID INT,
  primary key(PRO_ID),
  foreign key(CAT_ID) REFERENCES category(CAT_ID)
 );
 

 Create table supplier_pricing (
  PRICING_ID INT,
  PRO_ID INT,
  SUPP_ID INT,
  SUPP_PRICE INT DEFAULT 0,
  primary key(PRICING_ID),
  foreign key(PRO_ID) REFERENCES product(PRO_ID),
  foreign key(SUPP_ID) REFERENCES supplier(SUPP_ID)
 );
 

 Create table `order` (
  ORD_ID INT,
  ORD_AMOUNT INT NOT NULL,
  ORD_DATE DATE NOT NULL,
  CUS_ID INT,
  PRICING_ID INT,
  primary key(ORD_ID),
  foreign key(CUS_ID) REFERENCES customer(CUS_ID),
  foreign key(PRICING_ID) REFERENCES supplier_pricing(PRICING_ID)
 );
 

 Create table rating (
  RAT_ID INT,
  ORD_ID INT,
  RAT_RATSTARS INT NOT NULL,
  primary key(RAT_ID),
  foreign key(ORD_ID) REFERENCES `order`(ORD_ID)
 );