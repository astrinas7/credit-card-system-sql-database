
Create table Aarea
(
idarea CHAR(50),
namearea CHAR(50),
pop CHAR(50),
meansal float,
PRIMARY KEY  (idarea)
);

Create table SShop
(
idshop CHAR(50),
idarea CHAR(50) not null,
sname CHAR(50),
stype INTEGER
PRIMARY KEY (idshop)
FOREIGN KEY (idarea) REFERENCES Aarea
);

Create table ccredcard
(
idcard CHAR(50),
fday  DATE,
exdate  DATE,
lmmon INT,
edan INT,
rest INT,
PRIMARY KEY (idcard)
);

Create table ddeal 
(
iddeal CHAR(50),
idcard CHAR(50) not null,
idshop2 CHAR(50) not null,
idbank CHAR(50),
numcharge INT,
daydeal DATE,
timdeal TIME,
PRIMARY KEY (iddeal), 
FOREIGN KEY (idcard) REFERENCES ccredcard,
FOREIGN KEY (idshop2) REFERENCES SShop
);

Create table CCustomer
(
idcust CHAR(50),
idarea CHAR(50),
Firstname CHAR(50),
Lastname CHAR(50),
Phone INTEGER,
Adres VARCHAR(50),
AFM INTEGER,
 PRIMARY KEY  (idcust),
 FOREIGN KEY (idarea) REFERENCES Aarea);

  Create table ppay
 (
 upnum INT,
 dpay DATE,
 numpay INT,
 idcust CHAR(50) not null,
 PRIMARY KEY (upnum,idcust),
 FOREIGN KEY (idcust) REFERENCES CCustomer
 ON DELETE CASCADE);

 Create table aaccount
 (
 idaccount CHAR(50),
 idcust CHAR(50),
 idcard CHAR(50),
 rest INT,
 PRIMARY KEY (idaccount),
 FOREIGN KEY (idcust) REFERENCES CCustomer,
 FOREIGN KEY (idcard) REFERENCES ccredcard

 );

 Create table oopseos
 (
 idaccount CHAR(50),
 posiper INT,
 FOREIGN KEY (idaccount) REFERENCES aaccount
 );

 Create table ssav
 (
 idaccount CHAR(50),
 inrate INT,
 FOREIGN KEY (idaccount) REFERENCES aaccount
 );





 INSERT INTO dbo.Aarea (idarea,namearea,pop,meansal) VALUES ('1','xaidari','10000','1000');
 INSERT INTO dbo.Aarea (idarea,namearea,pop,meansal) VALUES ('2','irakeio','12000','1500');
 INSERT INTO dbo.Aarea (idarea,namearea,pop,meansal) VALUES ('3','filadelfeia','8000','1700');
 INSERT INTO dbo.Aarea (idarea,namearea,pop,meansal) VALUES ('4','kupseli','15000','800');
 INSERT INTO dbo.Aarea (idarea,namearea,pop,meansal) VALUES ('5','exarxeia','9000','1400');
 INSERT INTO dbo.Aarea (idarea,namearea,pop,meansal) VALUES ('291','thisio','7000','1100');

 INSERT INTO dbo.Aarea (idarea,namearea,pop,meansal) VALUES ('34','neoskosmos','20000','1200');
 INSERT INTO dbo.Aarea (idarea,namearea,pop,meansal) VALUES ('52','tauros','4000','800');
 INSERT INTO dbo.Aarea (idarea,namearea,pop,meansal) VALUES ('18','barkiza','6000','2000');
 INSERT INTO dbo.Aarea (idarea,namearea,pop,meansal) VALUES ('45','kastelorizo','498','500');

 SELECT * FROM dbo.Aarea;

 INSERT INTO dbo.SShop (idshop,idarea,sname,stype) VALUES ('1','1','kotsos','12');
 INSERT INTO dbo.SShop (idshop,idarea,sname,stype) VALUES ('5','2','plaisis','7');
 INSERT INTO dbo.SShop (idshop,idarea,sname,stype) VALUES ('3','3','pablis','5');
 INSERT INTO dbo.SShop (idshop,idarea,sname,stype) VALUES ('4','4','wond','14');
 INSERT INTO dbo.SShop (idshop,idarea,sname,stype) VALUES ('8','5','tropicana','17');

 INSERT INTO dbo.SShop (idshop,idarea,sname,stype) VALUES ('2019','2','peritip','14');
 INSERT INTO dbo.SShop (idshop,idarea,sname,stype) VALUES ('3121','45','savvas','6');
 INSERT INTO dbo.SShop (idshop,idarea,sname,stype) VALUES ('7182','52','goldenquins','17');
 

  SELECT * FROM dbo.SShop;

  INSERT INTO dbo.ccredcard (idcard,fday,exdate,lmmon,edan,rest) VALUES ('7','1/7/2015','2/4/2019','1000','2','200');
  INSERT INTO dbo.ccredcard (idcard,fday,exdate,lmmon,edan,rest) VALUES ('6','1/8/2016','12/3/2017','1000','3','100');
  INSERT INTO dbo.ccredcard (idcard,fday,exdate,lmmon,edan,rest) VALUES ('5','1/5/2014','4/9/2019','1000','2','150');
  INSERT INTO dbo.ccredcard (idcard,fday,exdate,lmmon,edan,rest) VALUES ('13','1/11/2014','12/8/2018','1000','2','200');
  INSERT INTO dbo.ccredcard (idcard,fday,exdate,lmmon,edan,rest) VALUES ('10','1/6/2015','10/14/2018','1000','4','120');
  INSERT INTO dbo.ccredcard (idcard,fday,exdate,lmmon,edan,rest) VALUES ('12','8/4/2015','1/9/2019','1000','3','150');
  INSERT INTO dbo.ccredcard (idcard,fday,exdate,lmmon,edan,rest) VALUES ('4','6/8/2016','1/13/2019','1000','4','250');
  INSERT INTO dbo.ccredcard (idcard,fday,exdate,lmmon,edan,rest) VALUES ('19','3/25/2015','1/5/2019','1000','2','180');

  INSERT INTO dbo.ccredcard (idcard,fday,exdate,lmmon,edan,rest) VALUES ('9','6/15/2015','1/16/2020','1000','3','250');
  INSERT INTO dbo.ccredcard (idcard,fday,exdate,lmmon,edan,rest) VALUES ('15','4/25/2015','7/5/2019','1000','5','200');
  INSERT INTO dbo.ccredcard (idcard,fday,exdate,lmmon,edan,rest) VALUES ('17','3/11/2016','9/8/2018','1000','4','230');

  SELECT * FROM dbo.ccredcard;

  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('11','7','3121','5','75','6/7/17','12:21');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('12','6','7182','4','89','1/8/16','12:42');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('17','5','3121','11','2000','6/8/17','11:33');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('15','5','2019','11','1000','6/4/17','13:17');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('13','5','3','5','4000','6/1/17','19:48');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('21','10','2019','14','92','5/14/17','15:30');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('10','7','7182','17','75','5/17/17','17:14');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('16','6','3121','12','37','5/18/17','10:22');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('18','10','7182','16','100','6/27/17','19:28');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('3','6','2019','11','55','6/19/17','16:20');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('8','5','7182','16','80','2/8/17','13:14');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('1','10','3121','14','90','4/14/17','15:48');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('23','19','4','17','75','2/17/17','09:22');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('5','6','7182','12','85','10/18/17','11:58');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('26','12','8','16','105','1/27/17','20:21');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('9','4','7182','20','67','5/14/17','17:52');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('4','5','2019','8','46','6/15/17','19:37');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('7','6','1','12','42','6/14/17','11:13');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('6','7','2019','13','57','6/22/17','10:51');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('2','7','5','20','45','6/5/17','17:43');

  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('24','7','1','13','57','6/23/17','12:01');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('19','7','7182','16','77','6/11/17','17:26');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('28','7','4','19','49','6/30/17','15:09');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('14','5','2019','8','93','6/09/17','18:28');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('25','5','8','12','78','6/18/17','14:12');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('20','6','1','13','30','6/02/17','10:32');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('27','6','5','27','25','6/24/17','14:18');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('22','6','2019','20','40','6/04/17','18:51');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('29','6','8','16','27','6/29/17','12:27');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('30','13','3','16','63','9/21/17','17:21');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('32','9','4','12','89','12/28/19','10:43');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('33','15','1','8','72','6/20/19','20:10');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('31','17','3','25','39','8/18/18','15:28');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('34','4','7182','20','67','6/20/17','12:37');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('35','4','8','15','27','6/11/17','16:26');

  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('38','5','3121','27','300','6/2/16','13:12');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('37','6','2019','20','79','6/17/16','20:18');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('36','7','3','15','220','6/1/16','10:42');
  INSERT INTO dbo.ddeal (iddeal,idcard,idshop2,idbank,numcharge,daydeal,timdeal) VALUES ('39','4','1','32','81','6/26/16','15:26');

  SELECT * FROM dbo.ddeal;

  INSERT INTO dbo.CCustomer(idcust,idarea,Firstname,Lastname,Phone,Adres,AFM) VALUES ('1','1','sotiris','koipos','270191919','patision444','1232');
  INSERT INTO dbo.CCustomer(idcust,idarea,Firstname,Lastname,Phone,Adres,AFM) VALUES ('2','2','maria','kapa','270291929','patision333','1235');
  INSERT INTO dbo.CCustomer(idcust,idarea,Firstname,Lastname,Phone,Adres,AFM) VALUES ('3','3','panagiotis','peri','210251929','kodriktonos543','1435');
  INSERT INTO dbo.CCustomer(idcust,idarea,Firstname,Lastname,Phone,Adres,AFM) VALUES ('4','4','dionysia','klepsa','234591929','delta44','1236');
  INSERT INTO dbo.CCustomer(idcust,idarea,Firstname,Lastname,Phone,Adres,AFM) VALUES ('5','5','katerina','figia','255291929','sugrou435','1735');
  INSERT INTO dbo.CCustomer(idcust,idarea,Firstname,Lastname,Phone,Adres,AFM) VALUES ('6','291','kostas','marinos','255291702','aiolou40','9457');
  INSERT INTO dbo.CCustomer(idcust,idarea,Firstname,Lastname,Phone,Adres,AFM) VALUES ('7','18','giorgos','nikolaou','23583785','athinas19','5534'); 
  INSERT INTO dbo.CCustomer(idcust,idarea,Firstname,Lastname,Phone,Adres,AFM) VALUES ('8','291','babis','pap','21369531','pandrosou25','8792');

  INSERT INTO dbo.CCustomer(idcust,idarea,Firstname,Lastname,Phone,Adres,AFM) VALUES ('9','34','mixalis','dioudis','27583786','athinas52','5934'); 
  INSERT INTO dbo.CCustomer(idcust,idarea,Firstname,Lastname,Phone,Adres,AFM) VALUES ('10','45','despoina','kouva','21379531','solonos25','8715');
  INSERT INTO dbo.CCustomer(idcust,idarea,Firstname,Lastname,Phone,Adres,AFM) VALUES ('11','52','artemis','voka','21469531','dekelias7','7792');

  SELECT * FROM dbo.CCustomer;
  
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('1','7/10/17','350','1');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('2','2/8/17','50','2');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('3','6/25/17','6500','3');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('4','10/1/17','30','4');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('5','10/29/17','300','5');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('6','7/5/17','200','6');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('7','2/26/17','60','7');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('8','6/27/17','140','8');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('9','1/9/20','450','9');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('10','6/22/19','450','10');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('11','8/29/18','500','11');

  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('12','7/11/17','300','1');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('13','2/9/17','40','2');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('14','6/26/17','4000','3');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('15','10/2/17','20','4');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('16','10/30/17','200','5');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('17','7/6/17','150','6');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('18','2/27/17','30','7');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('19','6/28/17','90','8');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('20','1/11/20','400','9');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('21','6/29/19','320','10');
  INSERT INTO dbo.ppay(upnum,dpay,numpay,idcust) VALUES ('22','9/3/18','600','11');

  SELECT * FROM dbo.ppay;

  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('1','1','7','11000');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('8','5 ','6','8000');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('6','3','5','7000');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('3','4','13','22000');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('2','5','6','15000');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('4','6','10','150000');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('7','4','13','10000');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('11','1','7','100000');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('15','3','5','1000');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('9','7','19','5500');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('10','2','12','5000');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('12','8','4','6000');

  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('20','9','9','5500');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('21','10','15','6500');
  INSERT INTO dbo.aaccount(idaccount,idcust,idcard,rest) VALUES ('22','11','17','7500');

  SELECT * FROM dbo.aaccount;

  INSERT INTO dbo.oopseos(idaccount,posiper) VALUES ('1','300');
  INSERT INTO dbo.oopseos(idaccount,posiper) VALUES ('8','450');
  INSERT INTO dbo.oopseos(idaccount,posiper) VALUES ('6','520');
  INSERT INTO dbo.oopseos(idaccount,posiper) VALUES ('3','270');
  INSERT INTO dbo.oopseos(idaccount,posiper) VALUES ('2','600');

  SELECT * FROM dbo.oopseos

  INSERT INTO dbo.ssav(idaccount,inrate) VALUES ('1','5');
  INSERT INTO dbo.ssav(idaccount,inrate) VALUES ('8','2');
  INSERT INTO dbo.ssav(idaccount,inrate) VALUES ('6','4');
  INSERT INTO dbo.ssav(idaccount,inrate) VALUES ('3','7');
  INSERT INTO dbo.ssav(idaccount,inrate) VALUES ('2','3');

  SELECT * FROM dbo.ssav


  /* erwtima 1 */
SELECT idcust,AFM,Firstname,Adres,Phone 
FROM dbo.CCustomer;
 

/* erwtima 2 */
SELECT cr.idcard,d.iddeal
FROM dbo.ddeal as d, dbo.ccredcard as cr
WHERE cr.idcard=d.idcard AND daydeal > '5/12/17' AND daydeal<='5/18/17' ;


/* erwtima 3 */
 SELECT C.idcust,C.Firstname,a.idaccount
 FROM dbo.CCustomer as C, dbo.aaccount as a
 WHERE C.idcust = a.idcust 
 order by C.idcust


 /* erwtima 4 */
 SELECT DISTINCT C.Firstname,C.Phone
 FROM dbo.CCustomer as C , dbo.ddeal as d , dbo.Aarea as A, dbo.ccredcard as cr,dbo.aaccount as ac
 WHERE A.idarea=C.idarea AND d.idcard=cr.idcard AND cr.idcard=ac.idcard AND C.idcust=ac.idcust AND
  A.idarea=291 AND d.daydeal >'6/1/17' AND d.daydeal<='6/30/17' 


/* erwtima 5*/
SELECT idcard
FROM dbo.ccredcard
WHERE exdate>'12/16/2018' AND exdate<='1/16/2019'


/* erwtima 6*/
update dbo.ccredcard 
SET edan=edan-1 


/* erwtima 7*/
SELECT C.Firstname,C.AFM
FROM dbo.CCustomer as C,dbo.aaccount as ac
WHERE C.idcust=ac.idcust
GROUP BY Firstname,AFM
having sum(ac.rest)>10000


/* erwtima 8 */
SELECT month(daydeal) as mntdeal,sum(numcharge) as smnch
FROM dbo.ddeal
WHERE year(daydeal)='2017'
GROUP BY month(daydeal)


/* erwtima 9 */
SELECT C.Firstname, month(d.daydeal) as mntdeal,sum(d.numcharge) as smnch
FROM dbo.CCustomer as C,dbo.ddeal as d, dbo.ccredcard as cr,dbo.aaccount as ac
WHERE d.idcard=cr.idcard AND cr.idcard=ac.idcard AND C.idcust=ac.idcust AND year(d.daydeal)='2017'
GROUP BY C.Firstname,month(d.daydeal)


/* erwtima 10 */
SELECT DISTINCT C.idcust
FROM dbo.CCustomer as C,dbo.ddeal as d, dbo.ccredcard as cr,dbo.aaccount as ac
WHERE d.idcard=cr.idcard AND cr.idcard=ac.idcard AND C.idcust=ac.idcust AND
d.numcharge> all (SELECT d1.numcharge
                     FROM dbo.ddeal as d1
					 WHERE d1.iddeal<>d.iddeal AND d.idcard=cr.idcard AND cr.idcard=ac.idcard AND C.idcust=ac.idcust)


/* erwtima 11 */
GO
CREATE VIEW N1 (idcard,sh2019) AS
SELECT idcard,count(iddeal)
FROM dbo.ddeal
WHERE idshop2='2019' 
GROUP BY idcard;
GO
CREATE VIEW N2 (idcard,sh3121) AS
SELECT idcard,count(iddeal)
FROM dbo.ddeal
WHERE idshop2='3121'  
GROUP BY idcard;
GO
CREATE VIEW N3 (idcard,sh7182) AS
SELECT idcard,count(iddeal) 
FROM dbo.ddeal
WHERE idshop2='7182'  
GROUP BY idcard;
GO
SELECT  DISTINCT C.Firstname
FROM N1 , N2 , N3 ,dbo.CCustomer as C,dbo.ccredcard as cr,dbo.aaccount as ac
WHERE   N1.idcard=N2.idcard and N2.idcard=N3.idcard and N3.idcard=cr.idcard and cr.idcard=ac.idcard and C.idcust=ac.idcust ;


/* erwtima 12 */
GO
CREATE VIEW L1 (idcard,b5) AS
SELECT idcard,count(iddeal)
FROM dbo.ddeal
WHERE year(daydeal)='2017' AND month(daydeal)='6'  
GROUP BY idcard
having  count(iddeal)>5;
GO
CREATE VIEW L2 (idcard,messhop) AS
SELECT idcard,avg(numcharge)
FROM dbo.ddeal
WHERE year(daydeal)='2017' AND month(daydeal)='6'
GROUP BY idcard
having avg(numcharge)>50;
GO
SELECT  DISTINCT C.Firstname
FROM L1 , L2 ,dbo.CCustomer as C,dbo.ccredcard as cr,dbo.aaccount as ac
WHERE   L1.idcard=L2.idcard and L2.idcard=cr.idcard and cr.idcard=ac.idcard and C.idcust=ac.idcust ;



/* erwtima 13 */
GO
CREATE VIEW K1 (idcard,sm) AS
SELECT idcard,sum(numcharge)
FROM dbo.ddeal
WHERE year(daydeal)='2017' 
GROUP BY idcard;
GO
SELECT  DISTINCT C.idcust,sm/meansal as Pososta
FROM K1,dbo.CCustomer as C,dbo.Aarea as A,dbo.ccredcard as cr,dbo.aaccount as ac
WHERE   K1.idcard=cr.idcard and cr.idcard=ac.idcard and C.idcust=ac.idcust and  A.idarea=C.idarea;




/* erwtima 14 */
GO
CREATE VIEW T1 (Olikosum) AS
SELECT avg(numcharge)
FROM dbo.ddeal
WHERE year(daydeal)='2017' and month(daydeal)='6' 
GO
SELECT C.Firstname,C.Lastname
FROM T1,dbo.CCustomer as C, dbo.aaccount as ac,dbo.ccredcard as cr, dbo.ddeal as d
WHERE  cr.idcard=d.idcard AND cr.idcard=ac.idcard AND C.idcust=ac.idcust AND year(daydeal)='2017' and month(daydeal)='6'
GROUP BY  C.Firstname,C.Lastname,T1.Olikosum	
HAVING avg(numcharge)>3*T1.Olikosum
SELECT idcard,avg(numcharge)
FROM dbo.ddeal
WHERE year(daydeal)='2017' AND month(daydeal)='6' 
GROUP BY idcard;



/* erwtima 15 */
 
GO
CREATE VIEW J1 (idcard,Sum6_2017) AS
SELECT idcard,sum(numcharge)
FROM dbo.ddeal
WHERE year(daydeal)='2017' AND month(daydeal)='6' 
GROUP BY idcard;
GO
CREATE VIEW J2 (idcard,Sum6_2016) AS
SELECT idcard,sum(numcharge)
FROM dbo.ddeal
WHERE year(daydeal)='2016' AND month(daydeal)='6' 
GROUP BY idcard;
GO
SELECT  DISTINCT C.idcust
FROM J1 , J2 ,dbo.CCustomer as C,dbo.ccredcard as cr,dbo.aaccount as ac
WHERE   J1.idcard=J2.idcard AND J2.idcard=cr.idcard AND cr.idcard=ac.idcard AND C.idcust=ac.idcust AND J1.Sum6_2017>J2.Sum6_2016*1.5



/* erwtima 17 */
GO
CREATE VIEW F1 (idcard,Sumdeals_2017) AS
SELECT idcard,sum(numcharge)
FROM dbo.ddeal
WHERE year(daydeal)='2017' 
GROUP BY idcard;
GO
CREATE VIEW F2 (idcust,Sumpay_2017) AS
SELECT idcust,sum(numpay)
FROM dbo.ppay
WHERE year(dpay)='2017' 
GROUP BY idcust;  
GO
SELECT DISTINCT C.idcust, F1.Sumdeals_2017, F2.Sumpay_2017
FROM F1,F2,dbo.CCustomer as C, dbo.aaccount as ac, dbo.ccredcard as cr
WHERE F1.idcard=cr.idcard AND cr.idcard=ac.idcard AND ac.idcust=C.idcust AND C.idcust=F2.idcust 
GROUP BY C.idcust, F2.Sumpay_2017,F1.Sumdeals_2017
HAVING F2.Sumpay_2017>F1.Sumdeals_2017
SELECT idcust,numpay
FROM dbo.ppay
WHERE year(dpay)='2017' 