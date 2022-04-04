select * from tabs;
select * from userdata;
select * from QUIZINFO;
select * from placeinfo;
select * from result;
drop table quizinfo cascade constraint;
drop table placeinfo;
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
	quiz varchar2(100),
	explanation varchar2(1000),
	latitude number(10,6), --위도
	longitude number(10,6), --경도
	path varchar2(100) -- 사진경로 
);

insert into placeinfo values ('구 광주적십자병원','null','이 병원은 5·18민주화운동 당시에는 광주적십자병원으로, 부상당한 시민과 시민군을 헌신적으로 치료하고 돌본 곳이다.', 35.144647, 126.914644, './518images/구 적십자병원.jpg');
insert into placeinfo values ('전남대학교 정문','null','이곳은 한국 민주주의 역사에 찬연히 빛나는 5·18민주화운동이 시작된 곳이다.', 35.172785, 126.905227, './518images/전남대학교.jpg');
insert into placeinfo values ('광주역 광장' ,'null','이곳은 5·18민주화운동 당시 광주시민과 계엄군 사이에 치열한 공방전이 벌어졌던 곳이다.', 35.165009, 126.908978, './518images/광주역 광장.jpg');
insert into placeinfo values ('구 시외버스 공용터미널 일대' ,'null','여기는 5·18민주화운동 당시 시외버스 공용터미널이 있던 곳으로, 전남 일원을 잇는 교통 중심지였다. 5월 19일 오후 이곳에서 계엄군의 과잉진압을 규탄하는 대규모 시위가 있었다.', 35.155125, 126.913111, './518images/구 시외버스공용터미널 일대.jpg');
insert into placeinfo values ('금남로(구 카톨릭센터)' ,'null','이곳 금남로는 광주시민들이 계엄군에 맞서 5·18민주화운동 기간 중 연일 격렬하게 저항했던 항쟁의 거리다.', 35.149522, 126.916765, './518images/금남로(구가톨릭센터).jpg');
insert into placeinfo values ('구 전남도청' ,'null','이곳 전남도청은 5·18민주화운동 본부가 있던 곳이며, 최후의 항전을 벌이다 수많은 시민군이 이곳에서 산화했다.', 35.146827, 126.920255, './518images/구 전남도청.jpg');
insert into placeinfo values ('518 민주 광장' ,'null','이곳 5·18민주광장은 한국 민주주의의 상징적 장소다. 5·18민주화운동 당시 광주시민들이 여기 분수대를 연단으로 하여 각종 집회를 열어 항쟁 의지를 불태웠다.', 35.147430, 126.919358, './518images/518 민주광장.jpg');
insert into placeinfo values ('상무관' ,'null','이곳 상무관은 5·18민주화운동 당시 희생자들의 주검을 임시 안치했던 곳이다.', 35.147992, 126.920058, './518images/상무관.jpg');
insert into placeinfo values ('조선대학교' ,'null','조선대학교 학생들은 전남대학교 학생들과 함께 5·18민주화운동 이전부터 이 지역 민주화운동에 앞장섰으며, 항쟁 기간에는 시민군 지도부에서 중요한 역할을 담당했다.', 35.143256,126.926532, './518images/조선대학교.jpg');
insert into placeinfo values ('배고픈 다리 일대' ,'null','여기 있던 배고픈다리(현 홍림교) 일대는 5·18민주화운동이 치열하던 5월 21일, 시민군이 시내 중심가에서 계엄군을 물리친 후 모범적으로 지역방위를 했던 곳이다.', 35.132047, 126.936359, './518images/배고픈다리 일대.jpg');
insert into placeinfo values ('주남마을 인근 양민학살지' ,'null','이곳은 5·18민주화운동 당시인 5월 21일 광주 시내에서 조선대학교 뒷산을 넘어 퇴각, 이곳 주남마을에 주둔하던 계엄군은 광주―화순간 도로를 오가는 차량들에게 무차별 총격을 자행하였다.',35.101714, 126.940349, './518images/주남마을 인근 양민 학살지.jpg');
insert into placeinfo values ('광목간 양민 학살지' ,'null','이곳은 5·18민주화운동 당시인 1980년 5월 24일, 계엄군간의 오인 사격 여파로 무고한 양민이 무참히 희생당한 곳이다.',35.111374, 126.894994, './518images/광목간 양민 학살지.jpg');
insert into placeinfo values ('농성광장 격전지' ,'null','이곳은 5·18민주화운동 당시, 5월 22일 광주시내에서 쫓겨온 계엄군이 통제선을 설치하고 농성광장의 시민군 방어선과 대치하면서 인근 주택가에 무차별 총격을 가해 무고한 시민이 희생당한 곳이다.', 35.152993, 126.885549, './518images/농성광장 격전지.jpg');
insert into placeinfo values ('광주YMCA' ,'null','이곳은 5·18민주화운동 당시 항쟁지도부가 자주 옥내집회를 열었던 곳이다.', 35.147903, 126.918348, './518images/YMCA.jpg');
insert into placeinfo values ('광주YWCA 옛 터' ,'null','이곳은 5월 27일 새벽 전남도청을 공략하던 계엄군의 주요 공격 목표가 되어, 이곳 최후의 항전에서도 많은 시민군이 희생되었다.', 35.148680, 126.918997, './518images/광주YMCA옛터.jpg');
insert into placeinfo values ('광주MBC 옛터' ,'null','여기에는 5·18민주화운동 당시 광주문화방송국(MBC)이 있었다.', 35.150514, 126.920111, './518images/광주MBC 옛터.jpg');
insert into placeinfo values ('녹두서점 옛터' ,'null','이곳은 5·18민주화운동 산실 가운데 한곳인 녹두서점이 있던 자리다.', 35.150159, 126.921590, './518images/녹두서점 옛터.jpg');
insert into placeinfo values ('전남대학교 병원' ,'null','이 병원은 5·18민주화운동 당시 부상당한 시민과 시민군을 헌신적으로 치료하여 의료인의 참모습을 보인, 광주항쟁의 야전병원이었다.', 35.141799, 126.921880, './518images/전남대학교 병원.jpg');
insert into placeinfo values ('광주기독병원' ,'null','이 병원은 5·18민주화운동 당시 부상당한 시민들을 헌신적으로 치료한, 민주의료 현장이다.', 35.136725, 126.912243, './518images/광주기독병원.jpg');
insert into placeinfo values ('상무대 옛터' ,'null','이곳은 상무대(육군 전투병과 교육사령부)가 있었던 자리로 5·18민주화운동 당시 여기에 계엄사령부 전남․북계엄분소가 설치되어 있었다.', 35.148556, 126.840194, './518images/상무대 옛터.jpg');
insert into placeinfo values ('무등경기장 정문' ,'null','이곳은 5·18민주화운동 당시인 5월 21일, 계엄군의 과잉진압에 격분한 운전기사들이 모여 항쟁 참가를 선언하고 차량시위를 시작한 곳이다.', 35.168478, 126.890794, './518images/무등경기장 정문.jpg');
insert into placeinfo values ('양동시장' ,'null','이곳 광주양동시장은 대인시장과 함께 5·18민주화운동 당시 상인들이 시민군들에게 주먹밥과 생필품을 제공하는 등, 모든 시민이 하나가 되는 대동정신을 앞장서 발휘했던 곳이다.', 35.154089, 126.902306, './518images/양동시장.jpg');
insert into placeinfo values ('광주공원광장-시민군 편성지' ,'null','이곳은 5·18민주화운동이 치열하던 5월 21일 전남도청 앞에서 자행된 계엄군의 집단 발포로 많은 사상자가 나자, 자위수단으로 인근 시ㆍ군지역에서 총과 탄약을 가져와 시민군을 편성하고 사격술 훈련을 실시했던 곳이다.', 35.147033, 126.909975, './518images/광주공원광장-시민군 편성지.jpg');
insert into placeinfo values ('5·18 최초발포지' ,'null','이곳은 5·18민주화운동 때 계엄군이 비무장 시민을 향해 최초로 발포를 했던 곳이다.', 35.156955, 126.920733, './518images/518최초발포지.jpg');
insert into placeinfo values ('광주교도소' ,'null','이곳은 5·18민주화운동 당시 계엄군이 주둔해 있으면서 담양, 순천방면으로 이동하던 차량과 시민들에게 총격을 가해 많은 양민이 희생당한 곳이다.', 35.187643, 126.930621, './518images/광주교도소.jpg');
insert into placeinfo values ('국군광주병원' ,'null','이곳은 5·18민주화운동 당시 계엄사에 연행돼 심문 과정에서 고문과 폭행으로 부상을 당한 시민들이 끌려와 강제 치료를 받았던 곳이다.', 35.150556, 126.873602, './518images/국군광주병원.jpg');
insert into placeinfo values ('5·18 구묘지' ,'null','이곳은 5·18민주화운동 당시 산화한 영령들이 묻혔던 곳으로 망월동 묘지라 불려왔다.', 35.234638, 126.933573, './518images/518 구묘지.jpg');
insert into placeinfo values ('남동성당' ,'null','당여기 남동성당은 1980년 5월 22일 당시의 주임신부를 비롯하여 광주의 민주인사들이 모여 시민들의 희생을 막기 위한 수습대책을 논의한 장소이다.', 35.144373, 126.920934, './518images/남동성당.jpg');
insert into placeinfo values ('505보안부대 옛터' ,'null','이곳은 전남지역 군 정보부대였던 505보안부대가 자리 잡고 있었던 곳이다.', 35.149805, 126.866383, './518images/505보안부대 옛터.jpg');
insert into placeinfo values ('들불야학 옛터' ,'null','이곳은 ‘광천동성당’의 교리실이었으며, 1978년 들불야학이 설립되어 학교에 가지 못한 노동자들이 저녁에 공부하였던 곳이다.', 35.166244, 126.881020, './518images/들불야학 옛터.jpg');
insert into placeinfo values ('전일빌딩' ,'null','5․18당시 계엄군의 헬기발포 총탄흔적 발견 등의 역사적인 장소이다.', 35.148278, 126.918845, './518images/전일빌딩.jpg');
insert into placeinfo values ('고 홍남순 변호사 가옥' ,'null','5․18당시 민주주의를 쟁취하기 위해 토론과 회의를 진행했던 장소이며 구속자 석방 논의, 관련문건 작성 등을 했던 역사적인 공간이다.', 35.150957, 126.919617, './518images/고 홍남순 변호사 가옥.jpg');

update placeinfo set path = './518images/518 민주광장.jpg';
update placeinfo set path = './518images/구 시외버스공용터미널 일대.jpg';

delete from USERDATA;
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
	answer varchar2(100)
);

insert into quizinfo values ('','','','null','구 광주적자병원');
insert into quizinfo values ('','','','null','전남대학교 정문');
insert into quizinfo values ('','','','null','광주역 광장');
insert into quizinfo values ('','','','null','구 시외버스 공용터미널 일대');
insert into quizinfo values ('','','','null','금남로(구 카톨릭센터)');
insert into quizinfo values ('','','','null','구 전남도청');
insert into quizinfo values ('','','','null','518 민주 광장');
insert into quizinfo values ('','','','null','상무관');
insert into quizinfo values ('','','','null','조선대학교');
insert into quizinfo values ('','','','null','배고픈 다리 일대');
insert into quizinfo values ('','','','null','주남마을 인근 양민학살지');
insert into quizinfo values ('','','','null','광목간 양민 학살지');
insert into quizinfo values ('','','','null','농성광장 격전지');
insert into quizinfo values ('','','','null','광주YMCA');
insert into quizinfo values ('','','','null','광주YWCA 옛 터');
insert into quizinfo values ('','','','null','광주MBC 옛터');
insert into quizinfo values ('','','','null','녹두서점 옛터');
insert into quizinfo values ('','','','null','전남대학교 병원');
insert into quizinfo values ('','','','null','광주기독병원');
insert into quizinfo values ('','','','null','상무대 옛터');
insert into quizinfo values ('','','','null','무등경기장 정문');
insert into quizinfo values ('','','','null','양동시장');
insert into quizinfo values ('','','','null','광주공원광장-시민군 편성지');
insert into quizinfo values ('','','','null','5·18 최초발포지');
insert into quizinfo values ('','','','null','광주교도소');
insert into quizinfo values ('','','','null','국군광주병원');
insert into quizinfo values ('','','','null','5·18 구묘지');
insert into quizinfo values ('','','','null','남동성당');
insert into quizinfo values ('','','','null','505보안부대 옛터');
insert into quizinfo values ('','','','null','들불야학 옛터');
insert into quizinfo values ('','','','null','전일빌딩');
insert into quizinfo values ('','','','','고 홍남순 변호사 가옥');


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

