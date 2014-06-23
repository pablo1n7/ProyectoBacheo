/*DROP TABLE users;*/
CREATE TABLE users (
  user_id serial NOT NULL ,
  user_username varchar(50) NOT NULL,
  user_email varchar(255) NOT NULL default '',
  user_pass varchar(60) NOT NULL default '',
  user_date date NOT NULL,
  user_modified date NOT NULL,
  user_last_login date default NULL,
  user_role varchar(20) NOT NULL default 'fan',
  user_first_name varchar(200) NOT NULL,
  user_surname varchar(200) NOT NULL,
  user_telephone varchar(20) NOT NULL,
  user_address_line1 varchar(100) NOT NULL,
  user_address_line2 varchar(100) default NULL,
  user_towncity varchar(40) NOT NULL,
  user_county varchar(200) NOT NULL,
  user_country varchar(200) NOT NULL,
  user_postzip_code varchar(10) NOT NULL,
  user_billing_address_different int NOT NULL,
  user_billing_address_line1 varchar(100) NOT NULL,
  user_billing_address_line2 varchar(100) default NULL,
  user_billing_towncity varchar(40) NOT NULL,
  user_billing_county varchar(200) NOT NULL,
  user_billing_country varchar(200) NOT NULL,
  user_billing_postzip_code varchar(10) NOT NULL,
  activated int NOT NULL default 1,
  PRIMARY KEY  (user_id)
) 