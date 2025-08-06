__________________________________________________________________________________________________________________________________________________________________________________________________________
_________________________________________________________________________________DATA INSERTION_________________________________________________________________________________________________________

1.
create table Tour(
TID number(10) constraint TID_pk primary key,
TNAME varchar2(100),
TDESCRIPTION varchar2(100),
TCOST number(10),
TDURATION number(10)
)

insert into Tour values(1,'Tour Paradies','A Relaxing Beach Vacation',1500,3)
insert into Tour values(2,'Mountain Expedition','Adventure through mountains',2000,5)
insert into Tour values(3,'City Lights','Explore vibrant city life',1000,1)
insert into Tour values(4,'Desert Safari','Experience vast desert',13000,6)
insert into Tour values(5,'Cultural Heritage''Immerse in rich cultures',1100,5)
insert into Tour values(6,'Wildlife Adventure','Encounter exotic wildlife',14000,7)
insert into Tour values(7,'Island Hopper','Visit multiple islands',16000,8)
insert into Tour values(8,'Historical Journey','Tour ancient sites',1350,6)
insert into Tour values(9,'Gastronomy Class','Learn cooking techniques',12000,10)
insert into Tour values(10,'Raintforest Trek','Explore dense rainforest',2000,10)
insert into Tour values(11,'Adventure Sports','Engage in extreme sports',17000,15)
insert into Tour values(12,'Photography Workshop','Learn photography techniques',25000,5)
insert into Tour values(13,'Wellness And Yoga','Practices yoga and meditation',15000,5)
insert into Tour values(14,'Festival Celebration','Experiences vibrant festivals',14000,6)
insert into Tour values(15,'Art And Desing','Explore art gallaries and studios',13500,10)
insert into Tour values(16,'Nature Escapes','Explore scenic nature and landscapes',3000,4)
insert into Tour values(17,'Underwater Adventure','Dive into the ocean',3400,8)
insert into Tour values(18,'Cultural Exchange','Live with local families',12000,6)
insert into Tour values(19,'Festival Frenzy','Experiences world-famous festivals',15000,6)
insert into Tour values(20,'City Food Tour','Enjoy local foods',1000,4)

select * from Tour
commit


2.
create table Hotel(
HID number(10) constraint HID_pk primary key,
HNAME varchar2(20),
HLOCATION varchar2(20),
HCONTACT_NO number(20),
HRATING number(10)
)

insert into Hotel values(101,'Swagat','Pune',1234567891,5)
insert into Hotel values(102,'Heera Executive','Nandurbar',2234567891,4)
insert into Hotel values(103,'Anand','Burhanpur',3234567891,3)
insert into Hotel values(104,'Sai Palace','Nandurbar',4234567891,3)
insert into Hotel values(105,'Grand Plaza','Surat',4234567891,5)
insert into Hotel values(106,'Beachside Resort','Goa',5234567891,5)
insert into Hotel values(107,'Family Inn','Mumbai',6234567891,2)
insert into Hotel values(108,'Oceanview Hotel','Kokan',7234567891,4)
insert into Hotel values(109,'Jadhav','Delhi',8234567891,1)
insert into Hotel values(110,'Hyatt','Delhi',9234567891,4)
insert into Hotel values(111,'Imperial','Pune',1034567891,5)
insert into Hotel values(112,'The Raviz','Kerla',9234167891,3)
insert into Hotel values(113,'Lake Palace','Udaipur',9234567891,2)
insert into Hotel values(114,'The Raj Palace','Jaypur',9264567891,3)
insert into Hotel values(115,'Kohinoor','Chennai',9237567891,3)
insert into Hotel values(116,'Taj','Mumbai',9274567891,5)
insert into Hotel values(117,'Royal Bengal','Kolkata',7234567891,2)
insert into Hotel values(118,'Taj Falaknuma','Hyderabad',8234567891,1)
insert into Hotel values(119,'Hyatt','Pune',9334567891,2)
insert into Hotel values(120,'Swagat','Delhi',9134567891,3)

select * from Hotel
commit


3.
create table Room(
RID varchar2(20) constraint RID_pk primary key,
RTYPE varchar2(20),
RCAPACITY number(10),
RCOST number(10),
HID number(10),
constraint HID_fk foreign key(HID) references Hotel(HID))

insert into Room values('R-1','AC',2,2500,101)
insert into Room values('R-2','NON-AC',3,3000,120)
insert into Room values('R-3','AC',4,3500,101)
insert into Room values('R-4','AC',2,2500,102)
insert into Room values('R-5','NON-AC',2,2500,104)
insert into Room values('R-6','NON-AC',5,5000,110)
insert into Room values('R-7','AC',1,1000,111)
insert into Room values('R-8','AC',1,500,114)
insert into Room values('R-9','NON-AC',4,3000,105)
insert into Room values('R-10','AC',10,7000,115)
insert into Room values('R-11','NON-AC',8,6000,116)
insert into Room values('R-12','AC',15,10000,119)
insert into Room values('R-13','AC',2,500,109)
insert into Room values('R-14','NON-AC',2,500,109)
insert into Room values('R-15','AC',5,5000,117)
insert into Room values('R-16','AC',1,500,103)
insert into Room values('R-17','NON-AC',3,3500,106)
insert into Room values('R-18','AC',3,2500,108)
insert into Room values('R-19','AC',2,2500,101)
insert into Room values('R-20','AC',7,6500,120)

select * from Room
commit

4.
create table Transport(
T_ID number(10) constraint T_ID_PK primary key,
T_TYPE varchar2(20),
T_CAPACITY number(10),
T_COST number(10),
T_PICKUPPOINT varchar2(20))

insert into Transport values(201,'Flight',2,3000,'Pune')
insert into Transport values(202,'Train',4,2000,'Mumbai')
insert into Transport values(203,'Bus',6,6000,'Delhi')
insert into Transport values(204,'Flight',2,2500,'Surat')
insert into Transport values(205,'Flight',5,33000,'Kolkata')
insert into Transport values(206,'Train',1,300,'Burhanpur')
insert into Transport values(207,'Train',1,200,'Dhule')
insert into Transport values(208,'Flight',2,3000,'Pune')
insert into Transport values(209,'Taxi',2,1200,'Kerla')
insert into Transport values(210,'Car Rental',4,4000,'Goa')
insert into Transport values(211,'Bus',10,7000,'Kerla')
insert into Transport values(212,'Taxi',3,500,'Pune')
insert into Transport values(213,'Car Rental',1,300,'Nashik')
insert into Transport values(214,'Flight',1,2000,'Bangalore')
insert into Transport values(215,'Bus',6,7000,'Delhi')
insert into Transport values(216,'Train',15,3400,'Udaipur')
insert into Transport values(217,'Taxi',9,8900,'Chennai')
insert into Transport values(218,'Car Rental',3,9000,'Amritsar')
insert into Transport values(219,'Bus',4,1100,'Nagpur')
insert into Transport values(220,'Flight',1,2000,'Bhopal')

select * from Transport
commit

5.
create table Designation(
DID number(10) constraint DID1_pk primary key,
DTITLE varchar2(100),
DDPARTMENT varchar2(50),
DSALARY number(10),
DWORK_SCHEDULE varchar2(50)
)

insert into Designation values(301,'Travel Agent','Sale',2000,'4-hrs')
insert into Designation values(302,'Accountant','Accounts',4000,'2-hrs')
insert into Designation values(303,'Manager','Managements',6000,'8-hrs')
insert into Designation values(304,'Guide','Services',8000,'12-hrs')
insert into Designation values(305,'Reservation','Travel Counsellor',10000,'24-hrs')
insert into Designation values(306,'Travel Agent','Sale',2000,'4-hrs')
insert into Designation values(307,'Travel Agent','Sale',4000,'12-hrs')
insert into Designation values(308,'Accountant','Accounts',10000,'7-hrs')
insert into Designation values(309,'Manager','Managements',6000,'6-hrs')
insert into Designation values(310,'Guide','Services',12000,'24-hrs')
insert into Designation values(311,'Reservation','Travel Counsellor',20000,'5-hrs')
insert into Designation values(312,'Travel Agent','Sale',15000,'10-hrs')
insert into Designation values(313,'Manager','Managements',8000,'9-hrs')
insert into Designation values(314,'Accountant','Accounts',10000,'7-hrs')
insert into Designation values(315,'Guide','Services',3000,'1-hrs')
insert into Designation values(316,'Reservation','Travel Counsellor',8000,'1-hrs')
insert into Designation values(317,'Reservation','Travel Counsellor',8000,'1-hrs')
insert into Designation values(318,'Travel Agent','Sales',14000,'2-hrs')
insert into Designation values(319,'Guide','Services',15000,'12-hrs')
insert into Designation values(320,'Accountant','Accounts',7000,'4-hrs')

select * from Designation
commit

6.
create table Employee(
EID number(10) constraint EID1_pk primary key,
EFIRST_NAME varchar2(20),
ELAST_NAME varchar2(20),
ESALARY number(10),
DID number(10),
constraint fk_DID1 foreign key(DID) references Designation(DID))


insert into Employee values(001,'Harshada','Sali',100000,320)
insert into Employee values(002,'Kunal','Patil',500000,319)
insert into Employee values(003,'Aman','Pardeshi',25000,301)
insert into Employee values(004,'Harshada','Dange',100000,302)
insert into Employee values(005,'Dhanshri','Chaudhari',25000,301)
insert into Employee values(006,'Sudarshan','Gund',4000,319)
insert into Employee values(007,'Ashutosh','Nair',3000,318)
insert into Employee values(008,'Aditya','Shewatkar',60000,304)
insert into Employee values(009,'Anand','Marche',90000,307)
insert into Employee values(010,'Rohit','Marathe',8000,317)
insert into Employee values(011,'Piyush','Sali',8000,317)
insert into Employee values(012,'Anshi','Marche',12000,310)
insert into Employee values(013,'Dhruvi','Waghela',25000,301)
insert into Employee values(014,'Krishna','Mahajan',2000,306)
insert into Employee values(015,'Neha','Chaudhari',3000,311)
insert into Employee values(016,'Ashwini','Sali',7000,314)
insert into Employee values(017,'Aashu','Sali',25000,308)
insert into Employee values(018,'Pooja','Choudhari',4000,309)
insert into Employee values(019,'Komal','Suryavanshi',1000,312)
insert into Employee values(020,'Harshada','Sali',100000,320)

select * from Employee
commit

7.
create table Customer(
CID number(10) constraint CID_pk1 primary key,
CNAME varchar2(20),
Cphn_no number(10),
CEMAIL varchar2(50),
CADDRESS varchar2(20),
HID number(10),
T_ID number(10),
EID number(10),
constraint fk_HID foreign key(HID) references Hotel(HID),
constraint fk_T_ID_fk foreign key(T_ID) references Transport(T_ID),
constraint EID1_fk foreign key(EID) references Employee(EID))


insert into Customer values(701,'Jerry',0987654321,'jerry@gmail.com','Dubai',101,201,001)
insert into Customer values(702,'Henry',1987654321,'henry@gmail.com','Hong Kong',102,202,004)
insert into Customer values(703,'Jack',2987654321,'jack@gmail.com','Thailand',103,204,019)
insert into Customer values(704,'Joe',3987654321,'joe@gmail.com','Malaysia',104,205,018)
insert into Customer values(705,'Cherry',4987654321,'cherry@gmail.com','Singapore',105,206,017)
insert into Customer values(706,'Bobby',5987654321,'bobbyy@gmail.com','Landon',102,207,016)
insert into Customer values(707,'Frank',6987654321,'frank@gmail.com','Paries',107,208,001)
insert into Customer values(708,'Ben',7987654321,'ben@gmail.com','Dubai',110,209,020)
insert into Customer values(709,'Nick',8987654321,'nick@gmail.com','Nepal',113,211,015)
insert into Customer values(710,'Amy',9987654321,'amy@gmail.com','China',112,212,014)
insert into Customer values(711,'Jerry',9917654321,'jerry@gmail.com','Korea',120,213,012)
insert into Customer values(712,'Frank',0287654321,'frank@gmail.com','Japan',119,201,002)
insert into Customer values(713,'Harry',0387654321,'harry@gmail.com','Dubai',102,202,001)
insert into Customer values(714,'Mickey',0487654321,'mickey@gmail.com','Paries',101,204,007)
insert into Customer values(715,'Myra',0587654321,'myra@gmail.com','Landon',107,203,006)
insert into Customer values(716,'Lily',0687654321,'lily@gmail.com','Hong Kong',113,220,005)
insert into Customer values(717,'Oggy',0787654321,'oggy@gmail.com','Canada',118,218,004)
insert into Customer values(718,'Olivia',0887654321,'olivia@gmail.com','Italy',114,219,003)
insert into Customer values(719,'Thomas',0907654321,'thomas@gmail.com','Dubai',111,217,002)
insert into Customer values(720,'Olivia',0107654321,'olivia@gmail.com','Dubai',101,201,001)

select * from Customer
commit

update Customer
set CEMAIL =NULL
where CNAME='Jerry';

update Customer
set CEMAIL='jerry@gmail.com'
where CNAME='Jerry';


8.
create table Review(
R_ID number(10) constraint R_ID_pk primary key,
R_Date date,
R_Rating number(10),
R_Comment varchar2(100),
CID number(10),
constraint fk_CID foreign key(CID) references Customer(CID))


insert into Review values(801,'1-01-2025',2,'Amazing Experiance',701)
insert into Review values(802,'02-02-2025',5,'Great Services',702)
insert into Review values(803,'03-03-2025',4,'Well Organized',704)
insert into Review values(804,'04-01-2025',3,'Faced issues with customer services',702)
insert into Review values(805,'05-01-2025',5,'Exellent adventure',705)
insert into Review values(806,'06-02-2025',2,'Average experience',706)
insert into Review values(807,'07-02-2025',5,'Amazing experience',710)
insert into Review values(808,'08-02-2025',1,'Excellent service',712)
insert into Review values(809,'09-02-2025',2,'Little expensive',720)
insert into Review values(810,'02-02-2025',5,'Well organzied',719)
insert into Review values(811,'01-01-2025',2,'Excellent adventure',718)
insert into Review values(812,'12-12-2025',4,'Great services',709)
insert into Review values(813,'26-11-2025',3,'Faced issues with reservations',706)
insert into Review values(814,'31-01-2025',5,'The hotel were nice',705)
insert into Review values(815,'17-07-2025',1,'The communication from guide was great',703)
insert into Review values(816,'15-01-2025',2,'We had a wonderful trip',702)
insert into Review values(817,'01-03-2025',1,'The quality of rooms was good',701)
insert into Review values(818,'01-10-2025',3,'Nice management',701)
insert into Review values(819,'01-09-2025',5,'Average experience',720)
insert into Review values(820,'01-11-2025',5,'The communication from guide was great',701)

select * from Review
commit

9.
create table Destination(
D_ID number(10) constraint D_ID_pk primary key,
D_Name varchar2(50),
D_Description varchar2(100),
D_Location varchar2(50),
CID number(10),
constraint fk1_CID foreign key(CID) references Customer(CID))


insert into Destination values(901,'Kedarnath','Jyotirlinga Temple','Uttarakhand',701)
insert into Destination values(902,'Ujjain','Shri Mahakaleshwar Temple','Madhya Pradesh',702)
insert into Destination values(903,'Omkareshwar','The temple is dedicated to lord shiva','Madhya Pradesh',703)
insert into Destination values(904,'Bhimashankar','Located in the village of bhavgiri','Maharashtra',704)
insert into Destination values(905,'Trimbakeshwar','The foothills of brahmagiri mountain range','Maharashtra',705)
insert into Destination values(906,'Grishneshwar','The walls ofthe temple have colorful depicting lord vishnus avtars','Maharashtra',706)
insert into Destination values(907,'Rameshwar','A sacred hindu pilgrimage destination','Tamil Nadu',707)
insert into Destination values(908,'Nageshwar','It also known as Darukavana in the shiv puran','Gujarat',708)
insert into Destination values(909,'Baidyanath','Shri baba baidyanath jyotirlinga','Jharkhand',709)
insert into Destination values(910,'Somnath','1-Jyotirlinga Temple','The temple was built by moon god to show gratitude',710)
insert into Destination values(911,'Malikaarjuna','Seek blessings at a shaktipeeth','Uttarakhand',711)
insert into Destination values(912,'Kashi Vishwanath','The spritual haven of varanasi','Uttar pradesh',712)
insert into Destination values(913,'Kedarnath','Jyotirlinga temple','Uttarakhand',712)
insert into Destination values(914,'Kashi Vishwanath','The spritual haven of varanasi','Uttar pradesh',712)
insert into Destination values(915,'Kashi Vishwanath','The spritual haven of varanasi','Uttar pradesh',701)
insert into Destination values(916,'Dagdusheth Mandir','Shrimant Dagdusheth Halwai Ganpati Mandir','Pune,Maharashtra',720)
insert into Destination values(917,'Prem Mandir','Its dedicated to lord Radha Krishna','Uttar pradesh',717)
insert into Destination values(918,'Golden Temple','the temple is a gurudwara','Punjab',718)
insert into Destination values(919,'Shree Siddhivinayak Temple','Dedicated to ganesha','Mumbai,Maharashtra',719)
insert into Destination values(920,'Iskcon Temple','The temple dedicated to lord Radha Krishna','Pune,Maharashtra',720)

select * from Destination
commit

10.
create table Tour_Destination(
TID number(10),
D_ID number(10),
constraint fk_TID foreign key(TID) references Tour(TID),
constraint fk_D_ID foreign key(D_ID) references Destination(D_ID))


insert into Tour_Destination values(1,901)
insert into Tour_Destination values(2,902)
insert into Tour_Destination values(3,903)
insert into Tour_Destination values(4,904)
insert into Tour_Destination values(2,901)
insert into Tour_Destination values(2,901)
insert into Tour_Destination values(8,919)
insert into Tour_Destination values(10,918)
insert into Tour_Destination values(11,917)
insert into Tour_Destination values(1,920)
insert into Tour_Destination values(12,917)
insert into Tour_Destination values(17,916)
insert into Tour_Destination values(20,915)
insert into Tour_Destination values(1,914)
insert into Tour_Destination values(2,912)
insert into Tour_Destination values(3,902)
insert into Tour_Destination values(5,905)
insert into Tour_Destination values(5,905)
insert into Tour_Destination values(6,901)
insert into Tour_Destination values(8,901)

select * from Tour_Destination 
commit

select * from Tour_Destination
where D_ID=901;

delete from Tour_Destination
where D_ID=901;

delete from Destination 
where D_ID=901;

select * from Tour_Destination
select * from Destination

rollback
commit

11.
create table Booking(
BID number(10) constraint BID_pk primary key,
BDate date,
BAmount number(10),
BStatus varchar2(50),
TID number(10),
CID number(10),
constraint TID_fk foreign key(TID) references Tour(TID),
constraint CID_fk1 foreign key(CID) references Customer(CID))


insert into Booking values(501,'26-08-2003',25000,'Confirmed',1,701)
insert into Booking values(502,'27-09-1982',50000,'Pending',2,702)
insert into Booking values(503,'05-07-1972',50000,'Pending',3,702)
insert into Booking values(504,'07-03-2003',35000,'Confirmed',4,705)
insert into Booking values(505,'05-07-2003',4500,'Pending',5,706)
insert into Booking values(506,'25-11-2002',2400,'Cancelled',7,711)
insert into Booking values(507,'02-11-2025',2400,'Cancelled',9,720)
insert into Booking values(508,'10-09-2002',3000,'Confirmed',6,710)
insert into Booking values(509,'06-06-2025',6000,'Pending',4,703)
insert into Booking values(510,'07-02-2025',4000,'Confirmed',12,712)
insert into Booking values(511,'01-01-2025',3400,'Cancelled',17,717)
insert into Booking values(512,'02-01-2025',2400,'Pending',18,718)
insert into Booking values(513,'01-05-2024',5500,'Confirmed',20,720)
insert into Booking values(514,'26-08-2003',25000,'Confirmed',1,701)
insert into Booking values(515,'27-01-2024',1000,'Cancelled',1,701)
insert into Booking values(516,'14-01-2024',12400,'Pending',16,716)
insert into Booking values(517,'17-02-2024',3500,'Cancelled',17,717)
insert into Booking values(518,'02-01-2025',2400,'Pending',18,718)
insert into Booking values(519,'02-01-2025',2400,'Confirmed',11,715)
insert into Booking values(520,'26-03-2025',25000,'Pending',13,713)

select * from Booking
commit

12.
create table Payment(
PID number(10) constraint PID_pk1 primary key,
PMethod varchar2(50),
PDate date,
PAmount number(10),
PStatus varchar2(20),
BID number(10),
constraint fk_BID foreign key(BID) references Booking(BID))


insert into Payment values(601,'Credit Card','01-01-2025',1000,'Paid',501)
insert into Payment values(602,'Bank Transfer','02-01-2025',2000,'Unpaid',502)
insert into Payment values(603,'Debit Card','21-01-2025',3400,'Paid',504)
insert into Payment values(604,'Credit Card','22-01-2025',4000,'Unpaid',511)
insert into Payment values(605,'Bank Transfer','12-11-2025',2500,'Paid',503)
insert into Payment values(606,'Gpay','31-01-2024',2500,'Unpaid',513)
insert into Payment values(607,'Phonepay','02-12-2024',11000,'Paid',514)
insert into Payment values(608,'Bank Transfer','23-12-2024',5000,'Unpaid',518)
insert into Payment values(609,'Credit Card','20-09-2024',6000,'Paid',501)
insert into Payment values(610,'Debit Card','23-12-2024',7000,'Unpaid',517)
insert into Payment values(611,'Credit Card','01-01-2025',1000,'Paid',501)
insert into Payment values(612,'Gpay Card','01-01-2025',1000,'Paid',501)
insert into Payment values(613,'Phonepay','27-11-2024',3500,'Paid',520)
insert into Payment values(614,'Bank Transfer','01-01-2024',6500,'Unpaid',515)
insert into Payment values(615,'Credit Card','01-01-2024',6500,'Paid',517)
insert into Payment values(616,'Debit Card','24-11-2025',1500,'Unpaid',501)
insert into Payment values(617,'Credit Card','01-01-2025',1000,'Paid',501)
insert into Payment values(618,'Bank Transfer','02-01-2025',2400,'Paid',520)
insert into Payment values(619,'Credit Card','01-01-2025',1000,'Paid',502)
insert into Payment values(620,'Credit Card','01-01-2025',1000,'Paid',501)

select * from Payment
commit



_______________________________________________________________________________________________________________________________________________________________________________________________________________
 _________________________________________________________________________________________UPDATE STATEMENTS_________________________________________________________________________________________________

select * from Customer

update Customer
set CEMAIL =NULL
where CNAME='Jerry';

update Customer
set CEMAIL='jerry@gmail.com'
where CNAME='Jerry';

______________________________________________________________________________________________________________________________________________________________________________________________________________
______________________________________________________________________________________DELETING STATEMENTS__________________________________________________________________________________________________


select * from Tour_Destination
where D_ID=901;

delete from Tour_Destination
where D_ID=901;

delete from Destination 
where D_ID=901;

select * from Tour_Destination
select * from Destination

rollback
commit

______________________________________________________________________________________________________________________________________________________________________________________________________________