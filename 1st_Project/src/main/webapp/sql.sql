select * from tabs;
select * from userdata;
select * from QUIZINFO;
select * from placeinfo;
select * from result;
drop table quizinfo cascade constraint;
select count(*) from userdata;

delete from USERDATA where age = '20대';

delete from USERDATA where age = '10대';

create table userdata(
   nickname varchar2(100) primary key,
   age varchar2(10) not null,
   city varchar2(20),
   prevletter varchar2(50),
   nextletter varchar2(50),
   constraint age_ck check(age in ('10대','20대','30대','40대','50대','60대이상')) 
);


--create table placeinfo(
--	placeid varchar2(100) primary key,
--	quiz varchar2(100),
--	explanation varchar2(1000),
--	latitude number(10,6),
--	longitude number(10,6),
--	path varchar2(100),
--	constraint quiz_fk foreign key(quiz) references quizinfo(quiz)
--);

create table placeinfo( --사적지정보 DB 
	placeid varchar2(100) primary key,
	explanation varchar2(1000),
	latitude number(10,6), --위도
	longitude number(10,6), --경도
	path varchar2(100) -- 사진경로 
);

insert into placeinfo values ('옛 광주적십자병원','이 병원은 5·18민주화운동 당시에는 광주적십자병원으로, 부상당한 시민과 시민군을 헌신적으로 치료하고 돌본 곳이다.', 35.144719, 126.914881, 'null');
insert into placeinfo values ('전남대학교 정문','이곳은 한국 민주주의 역사에 찬연히 빛나는 5·18민주화운동이 시작된 곳이다.', 35.176149, 126.905916, 'null');
insert into placeinfo values ('광주역 광장' ,'이곳은 5·18민주화운동 당시 광주시민과 계엄군 사이에 치열한 공방전이 벌어졌던 곳이다.', 35.147440, 126.919325, 'null');
insert into placeinfo values ('광주 구 시외버스 공용터미널 일대' ,'여기는 5·18민주화운동 당시 시외버스 공용터미널이 있던 곳으로, 전남 일원을 잇는 교통 중심지였다. 5월 19일 오후 이곳에서 계엄군의 과잉진압을 규탄하는 대규모 시위가 있었다.', 35.161494, 126.879819, 'null');
insert into placeinfo values ('금남로(구 카톨릭센터)' ,'이곳 금남로는 광주시민들이 계엄군에 맞서 5·18민주화운동 기간 중 연일 격렬하게 저항했던 항쟁의 거리다.', 35.149594, 126.916784, 'null');
insert into placeinfo values ('구 전남도청' ,'이곳 전남도청은 5·18민주화운동 본부가 있던 곳이며, 최후의 항전을 벌이다 수많은 시민군이 이곳에서 산화했다.', 35.161494, 126.879819, 'null');
insert into placeinfo values ('518 민주 광장' ,'이곳 5·18민주광장은 한국 민주주의의 상징적 장소다. 5·18민주화운동 당시 광주시민들이 여기 분수대를 연단으로 하여 각종 집회를 열어 항쟁 의지를 불태웠다.', 35.147642, 126.919326, 'null');
insert into placeinfo values ('상무관' ,'이곳 상무관은 5·18민주화운동 당시 희생자들의 주검을 임시 안치했던 곳이다.', 35.148215, 126.919829, 'null');
insert into placeinfo values ('조선대학교' ,'조선대학교 학생들은 전남대학교 학생들과 함께 5·18민주화운동 이전부터 이 지역 민주화운동에 앞장섰으며, 항쟁 기간에는 시민군 지도부에서 중요한 역할을 담당했다.', 35.1409667,126.9300208, 'null');
insert into placeinfo values ('배고픈 다리 일대' ,'여기 있던 배고픈다리(현 홍림교) 일대는 5·18민주화운동이 치열하던 5월 21일, 시민군이 시내 중심가에서 계엄군을 물리친 후 모범적으로 지역방위를 했던 곳이다.', 35.132047, 126.936359, 'null');
insert into placeinfo values ('주남마을 인근 양민학살지' ,'이곳은 5·18민주화운동 당시인 5월 21일 광주 시내에서 조선대학교 뒷산을 넘어 퇴각, 이곳 주남마을에 주둔하던 계엄군은 광주―화순간 도로를 오가는 차량들에게 무차별 총격을 자행하였다.',35.101714, 126.940349, 'null');
insert into placeinfo values ('광목간 양민 학살지' ,'이곳은 5·18민주화운동 당시인 1980년 5월 24일, 계엄군간의 오인 사격 여파로 무고한 양민이 무참히 희생당한 곳이다. 5월 24일 오후 2시경 광주시내에 조선대학교 뒷산을 넘어 퇴각한 계엄군과, 이곳에 잠복해 있던 다른 계엄군 사이에 오인 사격전이 벌어져 계엄군 다수가 죽거나 부상당했다.',35.111374, 126.894994, 'null');
insert into placeinfo values ('농성광장 격전지' ,'이곳은 5·18민주화운동 당시, 5월 22일 광주시내에서 쫓겨온 계엄군이 통제선을 설치하고 농성광장의 시민군 방어선과 대치하면서 인근 주택가에 무차별 총격을 가해 무고한 시민이 희생당한 곳이다.', 35.152993, 126.885549, 'null');

delete from placeinfo;

insert into quizinfo values('no.1', '', 'puzzle', 'null', '1');

--create table quizinfo(
--	quiz varchar2(100) primary key,
--	quiz_ex varchar2(1000) not null,
--	quiz_type varchar2(10),
--	answer varchar2(100)
--);

create table quizinfo(
	quiz varchar2(100) primary key,
	quiz_ex varchar2(1000) not null,
	quiz_type varchar2(10),
	answer varchar2(100),
	placeid varchar2(100),
	constraint placeid_fk foreign key(placeid) references placeinfo(placeid)
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

