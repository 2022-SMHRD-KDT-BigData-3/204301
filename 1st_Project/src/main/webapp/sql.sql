select * from tabs;
select * from userdata;
<<<<<<< HEAD
select * from placeinfo;
=======

>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-3/2431.git
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
   review varchar2(100),
   constraint age_ck check(age in ('10대','20대','30대','40대','50대','60대이상'))
);
drop table userdata cascade constraint;

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


insert into placeinfo values ('구 광주적십자병원','null','이 병원은 5·18민주화운동 당시에는 광주적십자병원으로, 부상당한 시민과 시민군을 헌신적으로 치료하고 돌본 곳이다.', 35.144647, 126.914644, './518images/구적십자병원.jpg');
insert into placeinfo values ('전남대학교 정문','Q1','이곳은 한국 민주주의 역사에 찬연히 빛나는 5·18민주화운동이 시작된 곳이다.', 35.172785, 126.905227, './518images/전남대학교.jpg');
insert into placeinfo values ('광주역 광장' ,'null','이곳은 5·18민주화운동 당시 광주시민과 계엄군 사이에 치열한 공방전이 벌어졌던 곳이다.', 35.165009, 126.908978, './518images/광주역광장.jpg');
insert into placeinfo values ('구 시외버스 공용터미널 일대' ,'null','여기는 5·18민주화운동 당시 시외버스 공용터미널이 있던 곳으로, 전남 일원을 잇는 교통 중심지였다. 5월 19일 오후 이곳에서 계엄군의 과잉진압을 규탄하는 대규모 시위가 있었다.', 35.155125, 126.913111, './518images/구시외버스공용터미널일대.jpg');
insert into placeinfo values ('금남로(구 카톨릭센터)' ,'null','이곳 금남로는 광주시민들이 계엄군에 맞서 5·18민주화운동 기간 중 연일 격렬하게 저항했던 항쟁의 거리다.', 35.149522, 126.916765, './518images/금남로(구가톨릭센터).jpg');
insert into placeinfo values ('구 전남도청' ,'null','이곳 전남도청은 5·18민주화운동 본부가 있던 곳이며, 최후의 항전을 벌이다 수많은 시민군이 이곳에서 산화했다.', 35.146827, 126.920255, './518images/구전남도청.jpg');
insert into placeinfo values ('518 민주 광장' ,'null','이곳 5·18민주광장은 한국 민주주의의 상징적 장소다. 5·18민주화운동 당시 광주시민들이 여기 분수대를 연단으로 하여 각종 집회를 열어 항쟁 의지를 불태웠다.', 35.147430, 126.919358, './518images/518민주광장.jpg');
insert into placeinfo values ('상무관' ,'null','이곳 상무관은 5·18민주화운동 당시 희생자들의 주검을 임시 안치했던 곳이다.', 35.147992, 126.920058, './518images/상무관.jpg');
insert into placeinfo values ('조선대학교' ,'null','조선대학교 학생들은 전남대학교 학생들과 함께 5·18민주화운동 이전부터 이 지역 민주화운동에 앞장섰으며, 항쟁 기간에는 시민군 지도부에서 중요한 역할을 담당했다.', 35.143256,126.926532, './518images/조선대학교.jpg');
insert into placeinfo values ('배고픈 다리 일대' ,'null','여기 있던 배고픈다리(현 홍림교) 일대는 5·18민주화운동이 치열하던 5월 21일, 시민군이 시내 중심가에서 계엄군을 물리친 후 모범적으로 지역방위를 했던 곳이다.', 35.132047, 126.936359, './518images/배고픈다리일대.jpg');
insert into placeinfo values ('주남마을 인근 양민학살지' ,'null','이곳은 5·18민주화운동 당시인 5월 21일 광주 시내에서 조선대학교 뒷산을 넘어 퇴각, 이곳 주남마을에 주둔하던 계엄군은 광주―화순간 도로를 오가는 차량들에게 무차별 총격을 자행하였다.',35.101714, 126.940349, './518images/주남마을인근양민학살지.jpg');
insert into placeinfo values ('광목간 양민 학살지' ,'null','이곳은 5·18민주화운동 당시인 1980년 5월 24일, 계엄군간의 오인 사격 여파로 무고한 양민이 무참히 희생당한 곳이다.',35.111374, 126.894994, './518images/광목간양민학살지.jpg');
insert into placeinfo values ('농성광장 격전지' ,'null','이곳은 5·18민주화운동 당시, 5월 22일 광주시내에서 쫓겨온 계엄군이 통제선을 설치하고 농성광장의 시민군 방어선과 대치하면서 인근 주택가에 무차별 총격을 가해 무고한 시민이 희생당한 곳이다.', 35.152993, 126.885549, './518images/농성광장격전지.jpg');
insert into placeinfo values ('광주YMCA' ,'null','이곳은 5·18민주화운동 당시 항쟁지도부가 자주 옥내집회를 열었던 곳이다.', 35.147903, 126.918348, './518images/YMCA.jpg');
insert into placeinfo values ('광주YWCA 옛 터' ,'null','이곳은 5월 27일 새벽 전남도청을 공략하던 계엄군의 주요 공격 목표가 되어, 이곳 최후의 항전에서도 많은 시민군이 희생되었다.', 35.148680, 126.918997, './518images/광주YMCA옛터.jpg');
insert into placeinfo values ('광주MBC 옛터' ,'null','여기에는 5·18민주화운동 당시 광주문화방송국(MBC)이 있었다.', 35.150514, 126.920111, './518images/광주MBC옛터.jpg');
insert into placeinfo values ('녹두서점 옛터' ,'null','이곳은 5·18민주화운동 산실 가운데 한곳인 녹두서점이 있던 자리다.', 35.150159, 126.921590, './518images/녹두서점옛터.jpg');
insert into placeinfo values ('전남대학교 병원' ,'null','이 병원은 5·18민주화운동 당시 부상당한 시민과 시민군을 헌신적으로 치료하여 의료인의 참모습을 보인, 광주항쟁의 야전병원이었다.', 35.141799, 126.921880, './518images/전남대학교병원.jpg');
insert into placeinfo values ('광주기독병원' ,'null','이 병원은 5·18민주화운동 당시 부상당한 시민들을 헌신적으로 치료한, 민주의료 현장이다.', 35.136725, 126.912243, './518images/광주기독병원.jpg');
insert into placeinfo values ('상무대 옛터' ,'null','이곳은 상무대(육군 전투병과 교육사령부)가 있었던 자리로 5·18민주화운동 당시 여기에 계엄사령부 전남․북계엄분소가 설치되어 있었다.', 35.148556, 126.840194, './518images/상무대옛터.jpg');
insert into placeinfo values ('무등경기장 정문' ,'null','이곳은 5·18민주화운동 당시인 5월 21일, 계엄군의 과잉진압에 격분한 운전기사들이 모여 항쟁 참가를 선언하고 차량시위를 시작한 곳이다.', 35.168478, 126.890794, './518images/무등경기장정문.jpg');
insert into placeinfo values ('양동시장' ,'null','이곳 광주양동시장은 대인시장과 함께 5·18민주화운동 당시 상인들이 시민군들에게 주먹밥과 생필품을 제공하는 등, 모든 시민이 하나가 되는 대동정신을 앞장서 발휘했던 곳이다.', 35.154089, 126.902306, './518images/양동시장.jpg');
insert into placeinfo values ('광주공원광장-시민군 편성지' ,'null','이곳은 5·18민주화운동이 치열하던 5월 21일 전남도청 앞에서 자행된 계엄군의 집단 발포로 많은 사상자가 나자, 자위수단으로 인근 시ㆍ군지역에서 총과 탄약을 가져와 시민군을 편성하고 사격술 훈련을 실시했던 곳이다.', 35.147033, 126.909975, './518images/광주공원광장-시민군편성지.jpg');
insert into placeinfo values ('5·18 최초발포지' ,'null','이곳은 5·18민주화운동 때 계엄군이 비무장 시민을 향해 최초로 발포를 했던 곳이다.', 35.156955, 126.920733, './518images/518최초발포지.jpg');
insert into placeinfo values ('광주교도소' ,'null','이곳은 5·18민주화운동 당시 계엄군이 주둔해 있으면서 담양, 순천방면으로 이동하던 차량과 시민들에게 총격을 가해 많은 양민이 희생당한 곳이다.', 35.187643, 126.930621, './518images/광주교도소.jpg');
insert into placeinfo values ('국군광주병원' ,'null','이곳은 5·18민주화운동 당시 계엄사에 연행돼 심문 과정에서 고문과 폭행으로 부상을 당한 시민들이 끌려와 강제 치료를 받았던 곳이다.', 35.150556, 126.873602, './518images/국군광주병원.jpg');
insert into placeinfo values ('5·18 구묘지' ,'null','이곳은 5·18민주화운동 당시 산화한 영령들이 묻혔던 곳으로 망월동 묘지라 불려왔다.', 35.234638, 126.933573, './518images/518구묘지.jpg');
insert into placeinfo values ('남동성당' ,'null','당여기 남동성당은 1980년 5월 22일 당시의 주임신부를 비롯하여 광주의 민주인사들이 모여 시민들의 희생을 막기 위한 수습대책을 논의한 장소이다.', 35.144373, 126.920934, './518images/남동성당.jpg');
insert into placeinfo values ('505보안부대 옛터' ,'null','이곳은 전남지역 군 정보부대였던 505보안부대가 자리 잡고 있었던 곳이다.', 35.149805, 126.866383, './518images/505보안부대옛터.jpg');
insert into placeinfo values ('들불야학 옛터' ,'null','이곳은 ‘광천동성당’의 교리실이었으며, 1978년 들불야학이 설립되어 학교에 가지 못한 노동자들이 저녁에 공부하였던 곳이다.', 35.166244, 126.881020, './518images/들불야학옛터.jpg');
insert into placeinfo values ('전일빌딩' ,'null','5․18당시 계엄군의 헬기발포 총탄흔적 발견 등의 역사적인 장소이다.', 35.148278, 126.918845, './518images/전일빌딩.jpg');
insert into placeinfo values ('고 홍남순 변호사 가옥' ,'null','5․18당시 민주주의를 쟁취하기 위해 토론과 회의를 진행했던 장소이며 구속자 석방 논의, 관련문건 작성 등을 했던 역사적인 공간이다.', 35.150957, 126.919617, './518images/고홍남순변호사가옥.jpg');

select * from placeinfo;
update placeinfo set quiz = 'Q1' where placeid='전남대학교 정문';

create table placeex (
	ex varchar2(1000)
);
select * from placeex;


update placeinfo set path = './518images/구가톨릭센터.jpg' where placeid = '금남로(구 카톨릭센터)';
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

create table quizinfo (
    quiz varchar2(10) primary key, 
    placeid varchar2(100),
    quiz_type varchar2(10),
    quiz_ex varchar2(4000), -- 문제 설명
    answer varchar2(100), -- 사적지별 정답 
    quiz_path varchar2(100), -- 게임별 jsp 경로 
    constraint placeid_fk foreign key(placeid) references placeinfo(placeid)
);

select * from quizinfo;
insert into quizinfo values ('Q1','전남대학교 정문','wordle','1980년 5월 17일 자정 불법적인 비상계엄 전국 확대에 따라 전남대에 진주한 계엄군은 도서관 등에서 밤을 새워 학문에 몰두하고 있던 학생들을 무조건 구타하고 불법 구금하면서 항쟁의 불씨는 뿌려졌다. 이어 18일 오전 10시경, 교문앞에 모여든 학생들이 학교출입을 막는 계엄군에게 항의하면서 최초의 충돌이 있었으며, 학생들은 광주역과 금남로로 진출해 항의 시위를 벌렸다.
계엄군은 항쟁기간 중 시내에서 끌고 온 시민들을 여기 종합운동장과 이학부 건물에 수용, 집단 구타하는 과정에서 사망자가 발생하였고 주검은 학교 안에 매장되었다가 그 후 발굴되었다. 당시 정문 앞에는 용봉천이 흐르고 그 위에 다리가 놓여 있었으나 지금은 복개되었다. 학생과 시민들을 불법 감금했던 이학부 건물도 철거되었으며 교문도 모양이 바뀌었다.','ㅎㅏㄱㅅㅐㅇ,ㅊㅜㅇㄷㅗㄹ','../wordle/wordle.jsp');
insert into quizinfo values ('Q2','광주역 광장','wordle','시위가 더욱 가열된 5월 20일 밤 광주역에 주둔해 있던 계엄군은 무자비한 유혈 진압에 항의하며 나아가는 비무장 시민들을 향해 발포,다수의 사상자를 내었으며, 21일 아침 이곳에서 주검 2구가 발견되었다.
이들 주검이 전남도청 앞 광장으로 옮겨지자 소식을 들은 시민 수십만명이 민주화운동에 적극 동참함으로써 항쟁은 절정으로 치닫았다.
 광주역 일대는 차량과 사람의 왕래가 많은 공간이며, 시위대의 중요한 이동로였다. 이는 전남대학교 학생들이 5월 14∼16일 도심으로 행진하고 귀교할 때 광주역 광장을 경유했다는 점에서도 알 수 있다. 5월 18일 전남대학교 정문에서 사건이 발생한 이후 에도 학생들은 광주역 광장을 경유해 금남로로 가서 시민들에게 비극을 전했다.
 광주역은 외부와 연결된 주요 관문이라는 점에서 전략적 요충지였다. 광주역은 계엄군의 만행이 다른 지역으로 전파될 수 있는 출구였고, 반대로 계엄군이 광주로 들어오는 입구들 가운데 하나였다. 계엄군이 광주로 이동했던 경로는 세 가지였다. 첫째 항공기를 이용해 광주 공항으로 들어오는 것, 둘째 기차를 이용해 광주역과 송정역으로 들어오는 것, 셋째 차량을 이용해 호남 고속도로로 들어오는 것이었다. 그러므로 계엄군에게 광주역은 반드시 점령해야 하는 장소였다.','ㅇㅗㅏㅇㄹㅐ,ㅇㅣㄷㅗㅇㄹㅗ,ㅇㅛㅊㅜㅇㅈㅣ,ㅊㅜㄹㄱㅜ','../wordle/wordle.jsp');
insert into quizinfo values ('Q3','구 시외버스 공용터미널 일대','wordle','계엄군은 대합실과 지하도에까지 난입, 총검을 휘둘러 이곳은 일시에 피비린내나는 아수라장으로 변했다. 이 소식은 시외버스를 통해 시외로 나간 사람들에 의해 곳곳으로 전파돼 항쟁이 전남 전역으로 확산되는 계기가 되었다.
 시외버스공용터미널은 광주역과 마찬가지로 사람과 차량의 왕래가 많은 곳이었다. 시외버스공용터미널은 각지에서 사람들이 모여들거나 흩어지는 주요 거점이었다. 그리고 시외버스공용터미널 일대의 도로망은 광주역, 금남로 등과 연결되어 시위대의 중요한 이동로였고, 시외버스공용터미널 광장은 집회를 열기에 좋았다. 시외버스공용터미널에서 금남로 4가는 지척이었기에 종종 이곳에서 시위 대열이 형성되곤 했다.','ㅈㅓㄴㅍㅏ,ㅈㅣㅂㅎㅗㅣ','../wordle/wordle.jsp');
insert into quizinfo values ('Q4','518 민주 광장','wordle','1980년 5월 14일부터 16일까지 5ㆍ18민주광장 분수대에서는 ‘민족ㆍ민주화성회’가 개최되었다. 성회를 주도한 것은 학생들이었으나, 시민들과 함께 한 행사였다. 5월 16일에는 분수대를 둘러싸고 횃불을 올려 영원히 잊을 수 없는 역사의 한 장면을 만들었다. 성회에서의 약속은 5·18민중항쟁이 전개되는 중요한 자양분이 되었다.
5·18민주화운동 당시 광주시민들이 여기 분수대를 연단으로 하여 각종 집회를 열어 항쟁 의지를 불태웠다. 5월 18일 이전 3일 동안 학생과 시민들은 이곳에 모여 대규모 민족·민주화대성회를 열고 시국선언문을 발표, 군사통치 종식과 민주화를 촉구하였다
이 집회에는 광주시내 고등학생들도 대거 참여하였다. 5월 21일 계엄군 철수 이후 끊임없이 민주화 투쟁 결의를 다지는 각종 궐기대회가 열렸던 이곳은 바로 5·18민주화운동 정신을 낳은 산실이다.
항쟁 후에도 전국에서 벌어진 민주화 투쟁과정에서 산화한 민주 열사들의 영혼이 이곳에 들러 시민들 분향을 받으며 전국민의 투쟁 의지를 일깨웠다.','ㅂㅜㄴㅅㅜㄷㅐ,ㅎㅗㅐㅅㅂㅜㄹ','../wordle/wordle.jsp');
insert into quizinfo values ('Q5','상무관','wordle','5·18민중항쟁에서 상무관이 의미를 갖게 된 것은 희생자들의 시신을 안치하는 장소로 사용되면서부터였다. 계엄군이 철수한 뒤 산개되어 있던 시신들이 5ㆍ18민주광장으로 집결되었다. 이것은 시신들을 효율적으로 관리하기 위함이었고, 가족들이 희생자의 시신을 빨리 찾을 수 있도록 돕기 위함이었다. 가족들은 시신을 찾아 도심 곳곳을 헤매고 다니느라 고생이 이만저만이 아니었고, 훼손된 시신들을 무수한 사람들이 들여다보는 등 문제가 심각했다.
 시신들은 22일부터 상무관에 안치되었는데, 23일 아침을 기준으로 약 30구 정도였다. 상무관에 안치하지 못한 시신들은 도청과 병원 등에 있었다. 시신들은 관이 부족하여 무명천으로 덮여 있기도 했는데, 부패 방지를 위해 방부제가 살포 되었다. 그리고 추모의 의미와 시신의 부패로 생겨난 냄새를 희석하고자 곳곳에 향이 피워졌다. 상무관은 가족들의 통곡과 오열로 넘쳤고, 탈진한 가족들도 있어 안타까움을 더했다. 상무관앞에는 분향소가 설치되었으며, 도청 민원실에서는 시신들을 촬영한 사진을 보고 혈육을 찾았다.
 집단 발포와 무자비한 진압에 희생된 주검이 이곳에 안치되자 시민들은 다시 한번 계엄군의 행위에 분노의 눈물을 삼켰다. 5·18민주화운동 기간 동안 광주시민들은 줄지어 분향하며 희생자들의 넋을 위로하면서 민주화 의지를 더욱 불태웠다.','ㄴㅜㄴㅁㅜㄹ','../wordle/wordle.jsp');
insert into quizinfo values ('Q6','구 광주적십자병원','wordle','당시 긴박했던 상황에서도 의료진은 부상자들의 생명을 돌보고 살리기 위해 헌신적이고 희생적인 활동을 폈다.
피가 부족하다는 것이 알려지자 시민뿐만이 아니라 인근 유흥업소 종업원들까지 헌혈에 참여, 뜨거운 시민정신을 발휘했다.
항쟁 후에도 계속 부상자들을 따뜻하게 치료해주는 등 적십자 정신을 빛낸 곳이다.','ㅎㅓㄴㅎㅕㄹ,ㅎㅡㅣㅅㅐㅇ','../wordle/wordle.jsp');
insert into quizinfo values ('Q7','조선대학교','wordle','5월 17일 자정 불법적인 비상계엄 확대조치에 따라서 이 대학에도 계엄군이 즉시 진주했으며, 5월 18일부터 21일까지 시내 곳곳에서 연행되어 온 수많은 시민과 학생들이 체육관, 야전막사 등에 수용되어 계엄군으로부터 잔혹한 폭행을 당한 현장이기도 하다.','ㅂㅜㄹㅂㅓㅂ,ㅍㅗㄱㅎㅐㅇ','../wordle/wordle.jsp');
insert into quizinfo values ('Q8','배고픈 다리 일대','wordle','조선대학교 뒷산으로 퇴각한 계엄군이 다시 시내로 진출할 것에 대비, 그날 해질 무렵부터 이 지역 예비군 등 젊은이들이 주축이 되어 시민군을 편성하고, 이 다리를 중심으로 방어망을 구축하여 물샐틈 없는 경계를 폈다. 22일 자정 무렵에는 인근 숙실 마을에서 내려오던 계엄군과 30여분간 총격전을 벌려 그들을 물리치기도 했다.
주민들은 밥을 지어 오고 담배와 음료수를 가져다주는 등 시민군과 한 덩어리가 되어 이곳을 지켰다.','ㅂㅏㅇㅇㅓㅁㅏㅇ,ㄷㅏㅁㅂㅐ,ㅇㅡㅁㄹㅛㅅㅜ,ㅊㅗㅇㄱㅕㄱㅈㅓㄴ','../wordle/wordle.jsp');
insert into quizinfo values ('Q9','주남마을 인근 양민학살지','wordle','5월 23일경에는 승객 18명을 실은 미니버스에 무차별 사격을 가해 승객 가운데 단 1명만이 살아남았다. 이때 계엄군은 부상을 당한 2명을 주남마을 뒷산으로 끌고가 살해하였으며, 그 후 이곳에 묻혀있던 시신은 5·18직후 주민의 신고로 발굴되었다.','ㅁㅣㄴㅣㅂㅓㅅㅡ','../wordle/wordle.jsp');
insert into quizinfo values ('Q10','광목간 양민 학살지','wordle','계엄군은 총소리에 놀라 몸을 피하던 이웃 원제. 진월부락 주민들에게, 심지어 저수지에서 목욕하던 어린이들에게 무차별 총격을 가해 많은 사상자가 발생했다.
또한, 계엄군은 오인사격 화풀이로 광목간 도로변 주택을 수색하여 무고한 주민들을 살상하였으며, 항쟁기간 중 이곳을 지나던 민간차량들에게 무차별 사격을 가해 이곳에서도 사상자가 발생했다.','ㅇㅓㄹㅣㄴㅇㅣ, ㅇㅗㅇㅣㄴㅅㅏㄱㅕㄱ','../wordle/wordle.jsp');
insert into quizinfo values ('Q11','농성광장 격전지','wordle','시민군과 계엄군이 이곳에서 대치하고 있을 때 시민수습대책위원들이 이곳 사선을 넘나들며 상무대에 있던 계엄사를 방문해 중재와 협상을 시도했고, 5월 26일 아침에는 계엄군이 시내로 다시 진입하려 하자 시민수습위원들이 이곳 농성광장에 맨몸으로 누워 저항하는, 죽음의 행진을 했던 현장이다.','ㅈㅜㅇㅈㅐ,ㅎㅕㅂㅅㅏㅇ,ㅈㅜㄱㅇㅡㅁㅇㅡㅣㅎㅐㅇㅈㅣㄴ','../wordle/wordle.jsp');
insert into quizinfo values ('Q12','무등경기장 정문','wordle','운전기사들은 중앙고속터미널 앞, 광주역 앞 등에서 소규모로 자신의 경험과 생각을 공유하다가 자신들이 운용하는 차량을 이용하여 항거하기로 의견을 모았다. 이들은 많은 차량이 일시에 모여들면 계엄군이 어찌하지 못할 것이며, 계엄군의 저지선을 돌파할 수 있을 것으로 보았다. 운전기사들이 무등경기장 앞을 집결지로 선택한 것은 계엄군의 시선을 피하기 좋았고, 다량의 차량이 집결하기 좋다고 판단했기 때문이었다.
 20일 오후 5시 무렵 무등경기장 정문 앞에는 200여 대의 차량이 모여들었다. 이것은 매우 보기 드문 광경이었고, 운전기사들은 한껏 고무되었다. 이들은 차량의 헤드라이트를 켜고, 본 대열은 임동을 관류하는 서림로를 따라 광남사거리로, 일부 차량은 광주역 방면으로 우회하여 광남사거리로 이동했다. 다시 하나가 된 차량 행렬은 금남로 5가까지 진출했다. 시민들은 대규모 차량 행렬과 운전기사들에게 뜨겁게 호응했으며, 계엄군의 저지선을 붕괴시킬 수 있다고 의지를 불태웠다.','ㅇㅜㄴㅈㅓㄴㄱㅣㅅㅏ, ㅈㅓㄴㅈㅗㄷㅡㅇ','../wordle/wordle.jsp');
insert into quizinfo values ('Q13','광주공원광장-시민군 편성지','wordle','5·18민중항쟁에서 광주공원 광장은 시민들의 집결지와 계엄군에 대한 항거를 준비하던 장소로 활용되었다. 5월 18일 오후 광주공원에 모인 시위대는 대열을 이루어 전남도청 방면으로 진출했는데, 태평극장 앞에서 경찰과 대치하다가 시외버스공용터미널로 향했다. 5월 19일 오후에도 광주공원 부근에서 계엄군과 시위대가 충돌했으며, 저녁에는 시위대가 수천 명에 이르렀다. 광주공원 광장에서 시위대가 형성되고, 충돌이 발생하자, 5월 20일 계엄군은 제11공수여단 제12지역대를 광주공원에 배치했다.
 5월 21일 오후부터는 광주공원 광장에 광주ㆍ전남지역에서 가져온 무기들이 속속 집결되었다. 수백 명의 청년들이 계엄군과 맞서겠다고 모여들었다. 처음에는 누구나 총을 받을 수 있었으나, 얼마 후부터는 예비역 장교나 하사관 등이 중심이 되어 일정한 선발 기준을 거쳐 무기가 지급되었고, 군대와 같은 편재로 조직되었다.','ㅅㅣㅁㅣㄴㄱㅜㄴ','../wordle/wordle.jsp');
insert into quizinfo values ('Q14','광주교도소','wordle','광주교도소 일대에서의 민간인 희생은 바로 제3공수여단이 주둔하던 시기에 주로 발생했다. 광주의 다른 외곽지대와 같이 인근 지역에 거주하던 주민들 혹은 다른 지역으로 이동하는 사람들은 광주교도소 앞을 지날 수밖에 없었고, 계엄군의 공격을 받았다.
 계엄군은 광주교도소보다 도심 안쪽에도 진지를 구축했는데, 이들도 오고 가는 차량과 시민을 공격했다. 계엄군은 광주교도소 일대에서 자행된 학살을 ‘교도소 습격’에 대한 반격이라고 호도했다. 이들 가운데 시민군이 포함되어 있었던 것은 맞지만, 교도소를 습격하기 위해 그곳에 왔다는 것은 입증할 수 없는 허구였다. 그들은 단지 다른 지역으로 진출하려던 시민군일 따름이었다. 제3공수여단이 주둔했던 며칠 동안에 희생자들이 집중적으로 발생했던 것은 현지 상황을 자의적으로 해석하여 맹목적인 군사작전을 전개했기 때문이었다. 제3공수여단의 이러한 행위들로 인해 광주교도소와 그 일대는 오랫동안 암매장지로 의심을 받았다. 실제로 5월 31일 광주교도소 울타리에서 8구의 시신이 발굴되었다. 광주교도소는 2015년 10월 북구 삼각동으로 이전했으며, 2017년에는 옛 광주교도소에서 암매장 시신을 발굴하는 작업이 이루어졌다.','ㅅㅣㅁㅣㄴ,ㅎㅏㄱㅅㅏㄹ,ㅇㅜㄹㅌㅏㄹㅣ','../wordle/wordle.jsp');
insert into quizinfo values ('Q15','국군광주병원','wordle','국군광주병원은 상무대로 연행되었던 사람들과 부상당한 군인의 치료가 이루어졌던 곳이다. 계엄군은 시민들을 연행ㆍ구금하면서 폭력과 고문을 가했는데, 자연스럽게 회복되지 않을 경우 국군광주병원으로 후송하여 엄중한 감시 하에 치료를 받게 했다.
 항쟁이 본격화되었던 기간에도 국군광주병원에서 민간인에 대한 치료가 이루어졌다. 광주에서 처음으로 사망자가 발생한 장소가 국군광주병원이었다는 점도 눈길을 끈다. 5월 18일 계엄군에게 구타를 당해 적십자병원으로 후송되었던 김경철이 국군광주병원으로 전원해서 치료를 받았지만, 19일 새벽 사망했던 것이다.
 국군광주병원에서의 민간인 치료는 5월 27일 이후에도 계속되었다. 5·18민중항쟁으로 연행된 대다수의 학생과 시민이 상무대 영창에 수용되었는데, 병세가 심각한 사람들에 대한 치료가 국군광주병원에서 이루어졌기 때문이다. 국군광주병원은 의료 공간이었으나, 계엄당국의 조사와 취조가 이루어지는 공간이기도 했다. 국군광주병원 인근에서도 다수의 희생자들이 발생했다. 5월 22일 오후 4시경부터 제20사단 제62연대 제2대대가 3대의 장갑차를 앞세우고 국군광주병원에서 돌고개까지를 확보하는 작전을 전개했다. 국군광주병원 주변에는 중앙정보부 전남지부와 505보안부대 등이 위치하고 있음에도 시민이 자유롭게 이동하자 이를 차단하는데 목적을 두었다. 제20사단은 일명 국군광주병원 확보작전을 수행하면서 인근 주민들에게 발포했다. 평소에 보기 힘든 광경을 호기심으로 쳐다보던 주민들이 공격을 받았다. 계엄군의 총탄은 주거지 곳곳으로 날아들었고, 부상자가 속출했다.','ㄱㅣㅁㄱㅕㅇㅊㅓㄹ','../wordle/wordle.jsp');
insert into quizinfo values ('Q16','5·18 구묘지','wordle',' 5월 27일 계엄군이 전남도청을 점령한 뒤, 희생자 시신을 어떻게 할 것인가가 현안이 되었다. 잠정적으로 파악된 시신은 상무관 61구, 도청 26구, 국군통합병원 16구, 교도소 앞 1구, 광주역 6구, 효덕동 4구, 광주고등학교 앞 2구 등 총 116구였다. 입관되지 않은 시신들의 상태는 처참하기 이를 데 없었다. 정부가 1985년에 공식 발표한 민간인 희생자 수가 164명이었음을 감안하면, 희생자 시신들 위치가 모두 파악되지 않았다고 할 수 있다. 이후 여기저기에서 시신이 발견되었고, 암매장된 시신도 확인되었다. 그래서 민간인 희생자의 규모에 대해 각종 소문이 있었고, 정부의 발표를 불신했으며, 이에 관한 의문은 현재에도 완전히 해소되지 않고 있다.
 계엄사령부는 5월 27일부터 6월 6일까지 검사와 군법무관 등으로 하여금 희생자의 시신을 검안하게 했다. 검안을 끝낸 시신들 가운데 가족이 찾아간 경우를 제외하고는 광주시립공원묘지 제3묘역에 일괄 매장했다. 시신들은 차량과 인원 등의 부족으로 전남 6913호 덤프 차량 등에 실려 이동하여 유가족과 시민의 분노를 샀다. 5월 29일 제3묘역에서 129구에 대한 장례가 있었으나, ‘폭도’의 시신으로 분류되었던 이들에 대한 장례가 제대로 이루어질리 없었다. 극도의 공포와 불안 속에서 이루어졌던 장례에 참가한 사람도 거의 없었다.','ㅎㅡㅣㅅㅐㅇㅈㅏ,ㅇㅏㅁㅁㅐㅈㅏㅇ,ㅈㅏㅇㄹㅖ','../wordle/wordle.jsp');
insert into quizinfo values ('Q17','들불야학 옛터','wordle',' 들불야학이 활동한 광천동 일대는 광주의 대표적인 공업단지였다. 윤상원은 광천동 시민아파트를 임대하여 사실상 이들과 함께 생활하며, 사회운동을 도모했다. 5·18민중항쟁이 발발하자 들불야학 강사와 학생은 조직적으로 항쟁에 참여했다. 이들은 수습대책위원회의 위원과 시민군 등으로 활동했으며, 당국에 통제된 언론과 방송을 대신했던 ｢투사회보｣를 비롯해 각종 유인물을 제작했다. 첫 유인물은 5월 19일 윤상원이 제안하고 강학과 학생이 방안을 협의하여 간행되었다. 이들은 “선언문”, “민주수호 전남도민 총 궐기문” 등의 유인물을 제작했다. ｢투사회보｣라는 제하의 유인물은 5월 21일부터 발간되었다. ｢투사회보｣는 24일까지 들불야학 팀이 발간을 주관하고, 이후는 보위를 위해 도청의 항쟁지도부에게 이관했다. 항쟁지도부는 광주YWCA에서 ｢투사회보｣를 이어서 발간했다. 그리하여 ｢투사회보｣8호가 제작되었고, 다음 호부터는 ｢민주시민회보｣로 개칭되었다. 비록 들불야학 전체로는 활동을 멈추었으나, (들불야학팀은) 25일 이후에도 자유의사로 항쟁에 참여하여 많은 이들이 끝까지 현장을 지켰다.','ㄷㅡㄹㅂㅜㄹ,ㅌㅜㅅㅏㅎㅗㅣㅂㅗ,ㅇㅠㅇㅣㄴㅁㅜㄹ,ㅅㅓㄴㅇㅓㄴㅁㅜㄴ','../wordle/wordle.jsp');
insert into quizinfo values ('Q18','전일빌딩','wordle','광주광역시는 2017년 2월 ｢5ㆍ18진실규명지원단｣을 발족하여 전일빌딩의 탄흔 발생 원인과 헬기 사격 등을 조사하도록 하고, 5월 15일 (다음과 같이 조사) 결과를 발표했다. ‘1980년 5월 27일 04:00∼05:30분경 제1항공여단 제61항공단 예 202, 203대대 소속 UH-1H 헬기 1대가 제11공수여단 제61대대 제2지역대 제4중대의 전일빌딩과 광주YWCA 진압작전을 지원ㆍ엄호하기 위해 호버링 상태에서 본 기종에 장착된 도어건 M60 기관총으로 전일빌딩 10층 등 건물 전면부에 수백 발의 공중 사격을 했다.
 광주광역시는 전일빌딩에 개축에 관한 일체의 계획 추진을 중지하고, 2017년 8월 11일 사적지 제28호로 지정ㆍ고시했다. 사적지로 지정됨에 따라 원형을 보존해야 하는 가장 우선시 되게 되었다. 전일빌딩은 감식 때 발견된 245발의 의미와 번지수 245번지임을 고려해 ‘전일빌딩245’로 2020년 5월 개칭하여 재개관하였다. 이후 25발의 총탄흔적이 추가로 발견되어 현재에는 270여발의 총탄흔적이 보존되어 있다.','ㅌㅏㄴㅎㅡㄴ,ㅎㅔㄹㄱㅣㅅㅏㄱㅕㄱ,ㄱㅗㅇㅈㅜㅇㅅㅏㄱㅕㄱ ','../wordle/wordle.jsp');


delete from quizinfo;
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



