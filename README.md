# springdata
Spring MVC + Spring Data with JPA and Hibernate
# configure MySQL database
CREATE DATABASE springdata;  
ALTER DATABASE springdata CHARACTER SET utf8 COLLATE utf8_unicode_ci;  
USE springdata;  
CREATE USER 'dbuser'@'%' IDENTIFIED BY 'dbpass';  
GRANT ALL ON springdata.* TO 'dbuser';  
