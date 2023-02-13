create database User_data;

use User_data;

drop table Submissions;
drop table Questions;
drop table JediConsultants;
drop table Themes;

create table Submissions(
Submission_ID int not null, 
Question  int not null, 
JediConsultantID int not null,
Submission_Text varchar(2000) not null,
Submission_Date date not null,
FOREIGN KEY (Question) REFERENCES Questions(Question_ID),
FOREIGN KEY (JediConsultantID) REFERENCES JediConsultants(JediConsultantID));

create table Questions(
Question_ID int not null, 
Theme varchar(100) not null, 
Question_text varchar(500) not null,
primary key(Question_ID));


create table JediConsultants(
JediConsultantID int not null, 
Name varchar(100) not null, 
Email varchar(200) not null,
primary key(JediConsultantID));

create table Themes(
Theme_ID int not null, 
ThemeName varchar(100) not null, 
primary key(Theme_ID)
);


#Inserting values in tables


insert into Themes(Theme_ID,ThemeName)
values 
(1,'Theme1'), 
(2,'Theme2'),
(3,'Theme3'),
(4,'Theme4');

insert into JediConsultants(JediConsultantID,Name,Email)
values 
(1,'Consultant1','Consultant1@gmail.com'), 
(2,'Consultant2','Consultant2@gmail.com'),
(3,'Consultant3','Consultant3@gmail.com'),
(4,'Consultant4','Consultant4@gmail.com');


insert into Questions(Question_ID,Theme,Question_text)
values 
(1,'Theme1','Question_text1'), 
(2,'Theme2','Question_text2'),
(3,'Theme3','Question_text3'),
(4,'Theme4','Question_text4');

insert into Submissions(Submission_ID,Question,JediConsultantID,Submission_Text,Submission_Date)
values 
(1,1,1,'Submission_Text1','2023-02-01'), 
(2,2,2,'Submission_Text2','2023-02-02'),
(3,3,3,'Submission_Text3','2023-02-03'),
(4,4,4,'Submission_Text4','2023-02-04');

select * from Questions;

