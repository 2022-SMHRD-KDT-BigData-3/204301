create table userdata(
	nickname varchar2(100) primary key,
	age varchar2(10) not null,
	city varchar2(10),
	prevletter varchar2(50),
	nextletter varchar2(50),
	constraint age_ck check(age in ('10대','20대','30대','40대','50대','60대이상')) 
);

select * from tabs;
select * from userdata;
select * from QUIZINFO;
select * from placeinfo;
select * from result;
drop table placeinfo;

create table placeinfo(
	placeid varchar2(100) primary key,
	quiz varchar2(100),
	explanation varchar2(1000),
	latitude number(10,6),
	longitude number(10,6),
	path varchar2(100),
	constraint quiz_fk foreign key(quiz) references quizinfo(quiz)
);


create table quizinfo(
	quiz varchar2(100) primary key,
	quiz_ex varchar2(1000) not null,
	quiz_type varchar2(10),
	answer varchar2(100)
);

create table result(
	nickname varchar2(100),
	placeid varchar2(100),
	quiz varchar2(100),
	quiz_set varchar2(10),
	playtime number(6) default 0,
	score number(5)default 0,
	constraint nick_fk foreign key(nickname) references userdata(nickname),
	constraint placeid_fk foreign key(placeid) references placeinfo(placeid),
	constraint result_quiz_fk foreign key(quiz) references quizinfo(quiz),
	constraint quiz_set_ck check(quiz_set in('true','false'))
);

