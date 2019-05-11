
DROP DATABASE IF EXISTS studentinfo;
CREATE DATABASE studentinfo DEFAULT CHARACTER SET utf8;
USE studentinfo;

DROP TABLE IF EXISTS student ;
CREATE TABLE student (
  id INT PRIMARY KEY AUTO_INCREMENT
  , sName  VARCHAR(30) NOT NULL
  , birthday  DATETIME NOT NULL
  , gender  VARCHAR(20) NOT NULL
  , telephone  VARCHAR(50) NOT NULL  
  ,email  VARCHAR (50) NOT NULL
  , classId  INT NOT NULL
);

DROP TABLE IF EXISTS classes ;
CREATE TABLE classes (
  id INT PRIMARY KEY AUTO_INCREMENT
  , cName VARCHAR(20) NOT NULL
);

INSERT INTO student VALUES(1, 'jack', '2015-9-9', '男', '15889635555','1111111@qq.com',1);
INSERT INTO student VALUES(2, 'rose', '2002-7-5', '女', '15889630355','22222222@qq.com',2);
INSERT INTO student VALUES(3, '多多', '2018-8-6', '男', '12889630355','33333333@qq.com',3);
INSERT INTO student VALUES(4, 'apple', '2005-3-3', '女', '13899630336','44444444@qq.com',4);

INSERT INTO classes VALUES(1,  '一班');
INSERT INTO classes VALUES(2,  '二班');
INSERT INTO classes VALUES(3,  '三班');
INSERT INTO classes VALUES(4,  '四班');

/*
   select * from student;
   select * from classes;
*/






