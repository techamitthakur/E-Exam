//VIEW DATA FROM TABLE

//FOR LOGIN

delete from demo where id= '"+ 102 +"' 

select * from demo;

//FOR JAVA RSULT

select * from result;

//FOR .NET RSULT

select * from result1;

//Droping Of Table

drop table demo;
drop table result;
drop table result1;

//CREATE TABLE FOR LOGIN
CREATE TABLE demo(id integer,USERNAME varchar2(20), USERPASS VARCHAR2(4000),email VARCHAR2(4000))

//CREATE TABLE FOR JAVA
create table result(a varchar2(4000),b varchar2(4000),c varchar2(4000),d varchar2(4000),e varchar2(4000),f varchar2(4000),g varchar2(4000),h varchar2(4000),i varchar2(4000),j varchar2(4000),k varchar2(4000),l varchar2(4000),m varchar2(4000),n varchar2(4000),o varchar2(4000),p varchar2(4000),q varchar2(4000),r varchar2(4000),s varchar2(4000),t varchar2(4000), id varchar2(20))

//CREATE TABLE FOR .NET
create table result1(a varchar2(4000),b varchar2(4000),c varchar2(4000),d varchar2(4000),e varchar2(4000),f varchar2(4000),g varchar2(4000),h varchar2(4000),i varchar2(4000),j varchar2(4000),k varchar2(4000),l varchar2(4000),m varchar2(4000),n varchar2(4000),o varchar2(4000),p varchar2(4000),q varchar2(4000),r varchar2(4000),s varchar2(4000),t varchar2(4000), id varchar2(20))


