select * from city;
select * from local;
select * from qnaboard;
select * from qna;
select * from member;
select * from schedule;
select * from checklist;
select * from notice;
select * from tourboard;
select * from tourreply;
select * FROM qnaboard order by rdate desc LIMIT 1, 5;
select count(*) from (select * from tourreply where tno = 1) tourboard; 
select * from (select @rownum:=@rownum+1 as rn,no,title,contents,views,writer,rdate from qnaboard where title like '%ㄴㅇ%' order by rdate desc LIMIT 0, 5) board;


 SELECT a.no,a.title,a.contents,a.views,a.writer,a.rdate,(SELECT COUNT(*) FROM tourreply WHERE tno = a.no) AS count FROM tourboard a ORDER BY a.rdate DESC LIMIT
      0, 5;
      select * FROM tourboard order by rdate desc LIMIT 0, 5;
insert into city(cname) values('서울');
insert into city(cname) values('부산');
insert into city(cname) values('제주');
insert into city(cname) values('강원');
insert into city(cname) values('대전');
insert into city(cname) values('인천');
insert into city(cname) values('전북');
insert into city(cname) values('광주');
insert into city(cname) values('대구');
insert into city(cname) values('경기');
insert into city(cname) values('충북');
insert into city(cname) values('경북');
insert into city(cname) values('충남');
insert into city(cname) values('경남');
insert into city(cname) values('전남');



insert into local(lname,city_cno,x,y) values('노원구',1,'61','129');
insert into local(lname,city_cno,x,y) values('도봉구',1,'61','129');
insert into local(lname,city_cno,x,y) values('강북구',1,'60','128');
insert into local(lname,city_cno,x,y) values('성북구',1,'60','127');
insert into local(lname,city_cno,x,y) values('은평구',1,'59','128');
insert into local(lname,city_cno,x,y) values('서대문구',1,'59','127');
insert into local(lname,city_cno,x,y) values('종로구',1,'60','127');
insert into local(lname,city_cno,x,y) values('동대문구',1,'61','127');
insert into local(lname,city_cno,x,y) values('중랑구',1,'62','127');
insert into local(lname,city_cno,x,y) values('중구',1,'60','127');
insert into local(lname,city_cno,x,y) values('성동구',1,'61','126');
insert into local(lname,city_cno,x,y) values('광진구',1,'62','126');
insert into local(lname,city_cno,x,y) values('마포구',1,'59','127');
insert into local(lname,city_cno,x,y) values('용산구',1,'60','126');
insert into local(lname,city_cno,x,y) values('강동구',1,'63','126');
insert into local(lname,city_cno,x,y) values('송파구',1,'62','125');
insert into local(lname,city_cno,x,y) values('강남구',1,'61','125');
insert into local(lname,city_cno,x,y) values('서초구',1,'61','125');
insert into local(lname,city_cno,x,y) values('동작구',1,'59','125');
insert into local(lname,city_cno,x,y) values('관악구',1,'59','124');
insert into local(lname,city_cno,x,y) values('금천구',1,'58','124');
insert into local(lname,city_cno,x,y) values('구로구',1,'58','125');
insert into local(lname,city_cno,x,y) values('영등포구',1,'59','126');
insert into local(lname,city_cno,x,y) values('강서구',1,'57','127');
insert into local(lname,city_cno,x,y) values('양천구',1,'58','126');


insert into local(lname,city_cno,x,y) values('가덕도',2,'94','73');
insert into local(lname,city_cno,x,y) values('강서구',2,'94','74');
insert into local(lname,city_cno,x,y) values('기장군',2,'100','78');
insert into local(lname,city_cno,x,y) values('해운대구',2,'99','76');
insert into local(lname,city_cno,x,y) values('금정구',2,'98','77');
insert into local(lname,city_cno,x,y) values('북구',2,'97','77');
insert into local(lname,city_cno,x,y) values('사상구',2,'96','75');
insert into local(lname,city_cno,x,y) values('을숙도',2,'96','74');
insert into local(lname,city_cno,x,y) values('영도구',2,'98','73');
insert into local(lname,city_cno,x,y) values('사하구',2,'96','74');
insert into local(lname,city_cno,x,y) values('부산진구',2,'97','75');
insert into local(lname,city_cno,x,y) values('남구',2,'98','75');
insert into local(lname,city_cno,x,y) values('수영구',2,'99','75');
insert into local(lname,city_cno,x,y) values('동래구',2,'98','76');
insert into local(lname,city_cno,x,y) values('연제구',2,'98','76');
insert into local(lname,city_cno,x,y) values('동구',2,'97','75');
insert into local(lname,city_cno,x,y) values('중구',2,'97','76');
insert into local(lname,city_cno,x,y) values('서구',2,'97','76');

insert into local(lname,city_cno,x,y) values('구좌읍',3,'58','38');
insert into local(lname,city_cno,x,y) values('조천읍',3,'55','38');
insert into local(lname,city_cno,x,y) values('제주시',3,'53','38');
insert into local(lname,city_cno,x,y) values('애월읍',3,'50','36');
insert into local(lname,city_cno,x,y) values('한림읍',3,'48','35');
insert into local(lname,city_cno,x,y) values('한경면',3,'47','34');
insert into local(lname,city_cno,x,y) values('대청읍',3,'48','33');
insert into local(lname,city_cno,x,y) values('안덕면',3,'49','33');
insert into local(lname,city_cno,x,y) values('중문',3,'51','33');
insert into local(lname,city_cno,x,y) values('서귀포',3,'53','33');
insert into local(lname,city_cno,x,y) values('남원읍',3,'55','34');
insert into local(lname,city_cno,x,y) values('표선면',3,'57','35');
insert into local(lname,city_cno,x,y) values('성산읍',3,'59','36');
insert into local(lname,city_cno,x,y) values('우도',3,'61','38');

insert into local(lname,city_cno,x,y) values('고성군',4,'84','145');
insert into local(lname,city_cno,x,y) values('속초시',4,'87','141');
insert into local(lname,city_cno,x,y) values('양양군',4,'88','137');
insert into local(lname,city_cno,x,y) values('강릉시',4,'93','132');
insert into local(lname,city_cno,x,y) values('동해시',4,'96','127');
insert into local(lname,city_cno,x,y) values('삼척시',4,'97','125');
insert into local(lname,city_cno,x,y) values('인재군',4,'81','138');
insert into local(lname,city_cno,x,y) values('양구군',4,'77','141');
insert into local(lname,city_cno,x,y) values('홍천군',4,'78','131');
insert into local(lname,city_cno,x,y) values('철원군',4,'67','142');
insert into local(lname,city_cno,x,y) values('화천군',4,'72','139');
insert into local(lname,city_cno,x,y) values('춘천군',4,'73','134');
insert into local(lname,city_cno,x,y) values('평창군',4,'86','127');
insert into local(lname,city_cno,x,y) values('횡성군',4,'79','126');
insert into local(lname,city_cno,x,y) values('정선군',4,'90','123');
insert into local(lname,city_cno,x,y) values('영월군',4,'86','119');
insert into local(lname,city_cno,x,y) values('원주시',4,'76','122');
insert into local(lname,city_cno,x,y) values('태백시',4,'95','119');

insert into local(lname,city_cno,x,y) values('유성구',5,'66','101');
insert into local(lname,city_cno,x,y) values('대덕구',5,'68','102');
insert into local(lname,city_cno,x,y) values('서구',5,'67','99');
insert into local(lname,city_cno,x,y) values('중구',5,'68','99');
insert into local(lname,city_cno,x,y) values('동구',5,'69','100');

insert into local(lname,city_cno,x,y) values('중구',6,'51','124');
insert into local(lname,city_cno,x,y) values('대청도',6,'21','132');
insert into local(lname,city_cno,x,y) values('백령도',6,'20','135');
insert into local(lname,city_cno,x,y) values('소청도',6,'22','131');
insert into local(lname,city_cno,x,y) values('덕적군도',6,'44','116');
insert into local(lname,city_cno,x,y) values('덕적도',6,'45','119');
insert into local(lname,city_cno,x,y) values('자월도',6,'48','120');
insert into local(lname,city_cno,x,y) values('영흥도',6,'51','120');
insert into local(lname,city_cno,x,y) values('교동도',6,'48','132');
insert into local(lname,city_cno,x,y) values('강화도',6,'51','130');
insert into local(lname,city_cno,x,y) values('석모도',6,'49','129');
insert into local(lname,city_cno,x,y) values('장봉도',6,'49','126');
insert into local(lname,city_cno,x,y) values('용유도',6,'50','124');
insert into local(lname,city_cno,x,y) values('영종도',6,'52','125');
insert into local(lname,city_cno,x,y) values('무의도',6,'50','123');
insert into local(lname,city_cno,x,y) values('신도',6,'51','126');
insert into local(lname,city_cno,x,y) values('서구',6,'55','127');
insert into local(lname,city_cno,x,y) values('계양구',6,'56','126');
insert into local(lname,city_cno,x,y) values('부평구',6,'55','125');
insert into local(lname,city_cno,x,y) values('남동구',6,'56','124');
insert into local(lname,city_cno,x,y) values('연수구',6,'55','123');
insert into local(lname,city_cno,x,y) values('남구',6,'54','124');
insert into local(lname,city_cno,x,y) values('동구',6,'54','125');

insert into local(lname,city_cno,x,y) values('군산시',7,'56','92');
insert into local(lname,city_cno,x,y) values('익산시',7,'60','93');
insert into local(lname,city_cno,x,y) values('완주군',7,'64','91');
insert into local(lname,city_cno,x,y) values('진안군',7,'68','89');
insert into local(lname,city_cno,x,y) values('무주군',7,'73','92');
insert into local(lname,city_cno,x,y) values('장수군',7,'70','85');
insert into local(lname,city_cno,x,y) values('남원시',7,'68','80');
insert into local(lname,city_cno,x,y) values('임실군',7,'65','84');
insert into local(lname,city_cno,x,y) values('순창군',7,'62','80');
insert into local(lname,city_cno,x,y) values('정읍시',7,'58','83');
insert into local(lname,city_cno,x,y) values('고창군',7,'55','80');
insert into local(lname,city_cno,x,y) values('부안군',7,'56','87');
insert into local(lname,city_cno,x,y) values('김제시',7,'59','88');
insert into local(lname,city_cno,x,y) values('전주시',7,'63','89');

insert into local(lname,city_cno,x,y) values('광산구',8,'56','74');
insert into local(lname,city_cno,x,y) values('북구',8,'60','75');
insert into local(lname,city_cno,x,y) values('서구',8,'58','74');
insert into local(lname,city_cno,x,y) values('동구',8,'60','73');
insert into local(lname,city_cno,x,y) values('남구',8,'58','73');

insert into local(lname,city_cno,x,y) values('달성군',9,'87','88');
insert into local(lname,city_cno,x,y) values('북구',9,'88','92');
insert into local(lname,city_cno,x,y) values('서구',9,'88','91');
insert into local(lname,city_cno,x,y) values('중구',9,'89','90');
insert into local(lname,city_cno,x,y) values('남구',9,'89','90');
insert into local(lname,city_cno,x,y) values('달서구',9,'88','90');
insert into local(lname,city_cno,x,y) values('수성구',9,'90','90');
insert into local(lname,city_cno,x,y) values('동구',9,'90','92');

insert into local(lname,city_cno,x,y) values('파주시',10,'56','133');
insert into local(lname,city_cno,x,y) values('연천군',10,'61','139');
insert into local(lname,city_cno,x,y) values('포천시',10,'63','134');
insert into local(lname,city_cno,x,y) values('가평군',10,'68','132');
insert into local(lname,city_cno,x,y) values('동두천시',10,'61','134');
insert into local(lname,city_cno,x,y) values('양주시',10,'60','132');
insert into local(lname,city_cno,x,y) values('의정부시',10,'61','130');
insert into local(lname,city_cno,x,y) values('남양주시',10,'63','129');
insert into local(lname,city_cno,x,y) values('고양시',10,'57','129');
insert into local(lname,city_cno,x,y) values('김포시',10,'54','129');
insert into local(lname,city_cno,x,y) values('양평군',10,'70','126');
insert into local(lname,city_cno,x,y) values('여주시',10,'71','121');
insert into local(lname,city_cno,x,y) values('하남시',10,'64','126');
insert into local(lname,city_cno,x,y) values('광주시',10,'65','123');
insert into local(lname,city_cno,x,y) values('이천시',10,'69','119');
insert into local(lname,city_cno,x,y) values('성남시',10,'62','123');
insert into local(lname,city_cno,x,y) values('과천시',10,'60','124');
insert into local(lname,city_cno,x,y) values('의왕시',10,'60','122');
insert into local(lname,city_cno,x,y) values('부천시',10,'57','125');
insert into local(lname,city_cno,x,y) values('광명시',10,'58','124');
insert into local(lname,city_cno,x,y) values('안양시',10,'59','123');
insert into local(lname,city_cno,x,y) values('시흥시',10,'56','123');
insert into local(lname,city_cno,x,y) values('군포시',10,'59','122');
insert into local(lname,city_cno,x,y) values('안산시',10,'57','121');
insert into local(lname,city_cno,x,y) values('수원시',10,'60','120');
insert into local(lname,city_cno,x,y) values('용인시',10,'64','119');
insert into local(lname,city_cno,x,y) values('안성시',10,'65','115');
insert into local(lname,city_cno,x,y) values('오산시',10,'62','118');
insert into local(lname,city_cno,x,y) values('평택시',10,'62','114');
insert into local(lname,city_cno,x,y) values('화성시',10,'57','119');
insert into local(lname,city_cno,x,y) values('대부도',10,'53','120');


insert into local(lname,city_cno,x,y) values('서울특별시',10,'60','126');
insert into local(lname,city_cno,x,y) values('인천광역시',10,'55','124');

insert into local(lname,city_cno,x,y) values('단양군',11,'84','114');
insert into local(lname,city_cno,x,y) values('제천시',11,'80','116');
insert into local(lname,city_cno,x,y) values('충주시',11,'76','115');
insert into local(lname,city_cno,x,y) values('음성군',11,'71','114');
insert into local(lname,city_cno,x,y) values('진천군',11,'68','112');
insert into local(lname,city_cno,x,y) values('증평군',11,'71','110');
insert into local(lname,city_cno,x,y) values('괴산군',11,'75','110');
insert into local(lname,city_cno,x,y) values('청주시',11,'68','107');
insert into local(lname,city_cno,x,y) values('보은군',11,'74','103');
insert into local(lname,city_cno,x,y) values('옥천군',11,'72','100');
insert into local(lname,city_cno,x,y) values('영동군',11,'75','97');

insert into local(lname,city_cno,x,y) values('봉화군',12,'93','114');
insert into local(lname,city_cno,x,y) values('울진군',12,'101','113');
insert into local(lname,city_cno,x,y) values('영주시',12,'88','112');
insert into local(lname,city_cno,x,y) values('영양군',12,'98','109');
insert into local(lname,city_cno,x,y) values('영덕군',12,'102','104');
insert into local(lname,city_cno,x,y) values('청송군',12,'97','101');
insert into local(lname,city_cno,x,y) values('안동시',12,'91','107');
insert into local(lname,city_cno,x,y) values('예천군',12,'85','107');
insert into local(lname,city_cno,x,y) values('문경군',12,'80','108');
insert into local(lname,city_cno,x,y) values('상주군',12,'79','103');
insert into local(lname,city_cno,x,y) values('구미군',12,'84','98');
insert into local(lname,city_cno,x,y) values('의성군',12,'89','101');
insert into local(lname,city_cno,x,y) values('포항시',12,'102','96');
insert into local(lname,city_cno,x,y) values('경주시',12,'101','90');
insert into local(lname,city_cno,x,y) values('영천시',12,'95','94');
insert into local(lname,city_cno,x,y) values('군위군',12,'89','97');
insert into local(lname,city_cno,x,y) values('칠곡군',12,'86','94');
insert into local(lname,city_cno,x,y) values('경산시',12,'93','90');
insert into local(lname,city_cno,x,y) values('청도군',12,'92','86');
insert into local(lname,city_cno,x,y) values('김천시',12,'80','94');
insert into local(lname,city_cno,x,y) values('성주군',12,'82','91');
insert into local(lname,city_cno,x,y) values('고령군',12,'84','87');

insert into local(lname,city_cno,x,y) values('대구광역시',12,'88','90');

-- ------------충북

insert into local(lname,city_cno,x,y) values('천안시',13,'64','110');
insert into local(lname,city_cno,x,y) values('아산시',13,'60','110');
insert into local(lname,city_cno,x,y) values('당진시',13,'54','113');
insert into local(lname,city_cno,x,y) values('서산시',13,'51','110');
insert into local(lname,city_cno,x,y) values('태안군',13,'48','109');
insert into local(lname,city_cno,x,y) values('안면도',13,'49','105');
insert into local(lname,city_cno,x,y) values('예산군',13,'57','107');
insert into local(lname,city_cno,x,y) values('홍성군',13,'54','105');
insert into local(lname,city_cno,x,y) values('청양군',13,'58','102');
insert into local(lname,city_cno,x,y) values('공주시',13,'62','103');
insert into local(lname,city_cno,x,y) values('보령시',13,'54','100');
insert into local(lname,city_cno,x,y) values('부여군',13,'58','98');
insert into local(lname,city_cno,x,y) values('서천군',13,'55','94');
insert into local(lname,city_cno,x,y) values('계룡시',13,'65','99');
insert into local(lname,city_cno,x,y) values('논산시',13,'63','97');
insert into local(lname,city_cno,x,y) values('금산군',13,'69','95');

insert into local(lname,city_cno,x,y) values('대전광역시',13,'67','100');

-- --------------경남

insert into local(lname,city_cno,x,y) values('거창군',14,'77','86');
insert into local(lname,city_cno,x,y) values('함양군',14,'74','83');
insert into local(lname,city_cno,x,y) values('합천군',14,'81','84');
insert into local(lname,city_cno,x,y) values('산청군',14,'76','80');
insert into local(lname,city_cno,x,y) values('창녕군',14,'87','83');
insert into local(lname,city_cno,x,y) values('밀양시',14,'92','82');
insert into local(lname,city_cno,x,y) values('양산시',14,'97','80');
insert into local(lname,city_cno,x,y) values('김해시',14,'94','78');
insert into local(lname,city_cno,x,y) values('창원시',14,'89','75');
insert into local(lname,city_cno,x,y) values('의령군',14,'83','80');
insert into local(lname,city_cno,x,y) values('함안군',14,'86','78');
insert into local(lname,city_cno,x,y) values('진주시',14,'81','76');
insert into local(lname,city_cno,x,y) values('고성군',14,'84','71');
insert into local(lname,city_cno,x,y) values('하동군',14,'75','74');
insert into local(lname,city_cno,x,y) values('사천시',14,'80','72');
insert into local(lname,city_cno,x,y) values('남해군',14,'77','68');
insert into local(lname,city_cno,x,y) values('통영시',14,'87','68');
insert into local(lname,city_cno,x,y) values('거제시',14,'90','69');

insert into local(lname,city_cno,x,y) values('울산광역시',14,'102','84');
insert into local(lname,city_cno,x,y) values('부산광역시',14,'97','75');

-- -----------------전남

insert into local(lname,city_cno,x,y) values('구례군',15,'70','76');
insert into local(lname,city_cno,x,y) values('곡성군',15,'65','76');
insert into local(lname,city_cno,x,y) values('담양군',15,'61','78');
insert into local(lname,city_cno,x,y) values('장성군',15,'57','78');
insert into local(lname,city_cno,x,y) values('영광군',15,'52','77');
insert into local(lname,city_cno,x,y) values('함평군',15,'52','73');
insert into local(lname,city_cno,x,y) values('나주시',15,'56','71');
insert into local(lname,city_cno,x,y) values('화순군',15,'61','71');
insert into local(lname,city_cno,x,y) values('순천시',15,'68','71');
insert into local(lname,city_cno,x,y) values('광양시',15,'72','72');
insert into local(lname,city_cno,x,y) values('여수시',15,'73','66');
insert into local(lname,city_cno,x,y) values('보성군',15,'64','67');
insert into local(lname,city_cno,x,y) values('장흥군',15,'59','64');
insert into local(lname,city_cno,x,y) values('강진군',15,'57','62');
insert into local(lname,city_cno,x,y) values('영암군',15,'54','66');
insert into local(lname,city_cno,x,y) values('해남군',15,'54','62');
insert into local(lname,city_cno,x,y) values('진도군',15,'48','59');
insert into local(lname,city_cno,x,y) values('무안군',15,'51','71');
insert into local(lname,city_cno,x,y) values('목포시',15,'50','67');
insert into local(lname,city_cno,x,y) values('신안군',15,'45','67');
insert into local(lname,city_cno,x,y) values('고흥군',15,'66','63');
insert into local(lname,city_cno,x,y) values('완도군',15,'56','56');

insert into local(lname,city_cno,x,y) values('광주광역시',15,'58','74');
