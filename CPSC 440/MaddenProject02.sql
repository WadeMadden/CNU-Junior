drop schema if exists private cascade;
drop table if exists SeatRow cascade;
drop table if exists SeatNum cascade;
drop table if exists Seat cascade;
drop table if exists Customer cascade;
drop table if exists Ticket cascade;

create table SeatRow(
    row text primary key
);

create table SeatNum(
  	num int primary key  
);

create table Seat(
    SeatRow text not null,
    SeatNum int not null,
    Section text not null,
    Side text not null,
    PricingTier text not null,
    WheelChair boolean,
    
    
    constraint Seat_PK primary key(SeatRow, SeatNum),
    constraint SeatRow foreign key (SeatRow) references SeatRow(row),
    constraint SeatNum foreign key (SeatNum) references SeatNum(num)
);

create table Customer(
    CustomerID int primary key,
    FirstName text not null,
    LastName text not null
);

create schema private
	create table Customer(
        CustomerID int primary key,
        CreditCard text,
        
        constraint CustomerID foreign key (CustomerID) references Customer(CustomerID)
    )
;

create table Ticket(
    TicketNumber int primary key,
    CustomerID int not null,
    SeatRow text not null,
    SeatNumber int not null,
    ShowTime timestamp not null,
    
    constraint CustomerID foreign key (CustomerID) references Customer(CustomerID)
);  

alter table Ticket add unique(SeatRow, SeatNumber, ShowTime);
    
insert into SeatNum values(1);
insert into SeatNum values(2);
insert into SeatNum values(3);
insert into SeatNum values(4);
insert into SeatNum values(5);
insert into SeatNum values(6);
insert into SeatNum values(7);
insert into SeatNum values(8);
insert into SeatNum values(9);
insert into SeatNum values(10);
insert into SeatNum values(11);
insert into SeatNum values(12);
insert into SeatNum values(13);
insert into SeatNum values(14);
insert into SeatNum values(15);
insert into SeatNum values(101);
insert into SeatNum values(102);
insert into SeatNum values(103);
insert into SeatNum values(104);
insert into SeatNum values(105);
insert into SeatNum values(106);
insert into SeatNum values(107);
insert into SeatNum values(108);
insert into SeatNum values(109);
insert into SeatNum values(110);
insert into SeatNum values(111);
insert into SeatNum values(112);
insert into SeatNum values(113);
insert into SeatNum values(114);
insert into SeatNum values(115);
insert into SeatNum values(116);
insert into SeatNum values(117);
insert into SeatNum values(118);
insert into SeatNum values(119);
insert into SeatNum values(120);
insert into SeatNum values(121);
insert into SeatNum values(122);
insert into SeatNum values(123);
insert into SeatNum values(124);
insert into SeatNum values(125);
insert into SeatNum values(126);

insert into SeatRow values('A');
insert into SeatRow values('B');
insert into SeatRow values('C');
insert into SeatRow values('D');
insert into SeatRow values('E');
insert into SeatRow values('F');
insert into SeatRow values('G');
insert into SeatRow values('H');
insert into SeatRow values('J');
insert into SeatRow values('K');
insert into SeatRow values('L');
insert into SeatRow values('M');
insert into SeatRow values('N');
insert into SeatRow values('O');
insert into SeatRow values('P');
insert into SeatRow values('Q');
insert into SeatRow values('R');
insert into SeatRow values('AA');
insert into SeatRow values('BB');
insert into SeatRow values('CC');
insert into SeatRow values('DD');
insert into SeatRow values('EE');
insert into SeatRow values('FF');
insert into SeatRow values('GG');
insert into SeatRow values('HH');

-- main floor middle orchestra
insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Middle','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('A','B','C')
and N.num >= 1
and N.num <= 10;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Middle','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('D','E','F')
and N.num >= 1
and N.num <= 11;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Middle','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('G','H','J')
and N.num >= 1
and N.num <= 12;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Middle','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('K','L','M')
and N.num >= 1
and N.num <= 13;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Middle','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('N','O','P')
and N.num >= 1
and N.num <= 14;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Middle','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('Q','R')
and N.num >= 1
and N.num <= 15;

-- Balcony Middle Orchestra
insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Middle','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('AA')
and N.num >= 1
and N.num <= 13;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Middle','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('BB','CC','DD')
and N.num >= 1
and N.num <= 14;

-- Balcony Right Side
insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Right','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('AA','BB','CC')
and N.num >= 102
and N.num <= 124
and N.num%2 = 0;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Right','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('DD')
and N.num >= 102
and N.num <= 126
and N.num%2 = 0;

-- Balcony Left Side
insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Right','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('AA','BB','CC')
and N.num >= 101
and N.num <= 123
and N.num%2 = 1;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Right','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('DD')
and N.num >= 101
and N.num <= 125
and N.num%2 = 1;

-- Balcony  Middle UpperBalcony

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Middle','Upper Balcony',false
from SeatRow as R,
     SeatNum as N
where R.row in('EE','FF')
and N.num >= 1
and N.num <= 10;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Middle','Upper Balcony',false
from SeatRow as R,
     SeatNum as N
where R.row in('GG','HH')
and N.num >= 1
and N.num <= 11;

-- Balcony Right UpperBalcony
insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Right','Upper Balcony',false
from SeatRow as R,
     SeatNum as N
where R.row in('EE','FF')
and N.num >= 102
and N.num <= 122
and N.num%2 = 0;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Right','Upper Balcony',false
from SeatRow as R,
     SeatNum as N
where R.row in('GG')
and N.num >= 102
and N.num <= 120
and N.num%2 = 0;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Right','Upper Balcony',false
from SeatRow as R,
     SeatNum as N
where R.row in('HH')
and N.num >= 102
and N.num <= 118
and N.num%2 = 0;

-- Balcony Left UpperBalcony
insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Right','Upper Balcony',false
from SeatRow as R,
     SeatNum as N
where R.row in('EE','FF')
and N.num >= 101
and N.num <= 121
and N.num%2 = 1;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Right','Upper Balcony',false
from SeatRow as R,
     SeatNum as N
where R.row in('GG')
and N.num >= 101
and N.num <= 119
and N.num%2 = 1;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Balcony','Right','Upper Balcony',false
from SeatRow as R,
     SeatNum as N
where R.row in('HH')
and N.num >= 101
and N.num <= 117
and N.num%2 = 1;



-- Main Floor, Right, Orchestra
insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Right','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('A')
and N.num >= 102
and N.num <= 106
and N.num%2 = 0;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Right','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('B','C','D','E')
and N.num >= 102
and N.num <= 106
and N.num%2 = 0;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Right','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('F','G','H','J')
and N.num >= 102
and N.num <= 106
and N.num%2 = 0;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Right','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('K','L','M','N')
and N.num >= 102
and N.num <= 106
and N.num%2 = 0;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Right','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('O','P','Q','R')
and N.num >= 102
and N.num <= 106
and N.num%2 = 0;

-- Main Floor, Left, Orchestra
insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Left','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('A')
and N.num >= 101
and N.num <= 105
and N.num%2 = 1;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Left','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('B','C','D','E')
and N.num >= 101
and N.num <= 105
and N.num%2 = 1;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Left','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('F','G','H','J')
and N.num >= 101
and N.num <= 105
and N.num%2 = 1;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Left','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('K','L','M','N')
and N.num >= 101
and N.num <= 105
and N.num%2 = 1;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Left','Orchestra',false
from SeatRow as R,
     SeatNum as N
where R.row in('O','P','Q','R')
and N.num >= 101
and N.num <= 105
and N.num%2 = 1;

-- Main Floor, Right, Side, nonWheelChair
insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Right','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('A')
and N.num >= 108
and N.num <= 114
and N.num%2 = 0;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Right','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('B','C','D','E')
and N.num >= 108
and N.num <= 116
and N.num%2 = 0;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Right','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('F','G','H','J')
and N.num >= 108
and N.num <= 118
and N.num%2 = 0;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Right','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('K','L','M','N')
and N.num >= 108
and N.num <= 120
and N.num%2 = 0;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Right','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('O')
and N.num >= 108
and N.num <= 122
and N.num%2 = 0;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Right','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('P','Q','R')
and N.num = 108;

-- Main Floor, Left, Side, nonWheelChair
insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Left','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('A')
and N.num >= 107
and N.num <= 113
and N.num%2 = 1;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Left','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('B','C','D','E')
and N.num >= 107
and N.num <= 115
and N.num%2 = 1;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Left','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('F','G','H','J')
and N.num >= 107
and N.num <= 117
and N.num%2 = 1;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Left','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('K','L','M','N')
and N.num >= 107
and N.num <= 119
and N.num%2 = 1;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Left','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('O')
and N.num >= 107
and N.num <= 121
and N.num%2 = 1;

insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Left','Side',false
from SeatRow as R,
     SeatNum as N
where R.row in('P','Q','R')
and N.num = 107;

-- Main Floor, Right, Side, Wheelchair
insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Right','Side',true
from SeatRow as R,
     SeatNum as N
where R.row in('P','Q','R')
and N.num >= 110
and N.num <= 122
and N.num%2 = 0;

-- Main Floor, Left, Side, Wheelchair
insert into Seat(SeatRow,SeatNum,Side,Section,PricingTier,WheelChair)
select R.row,N.num,'Main Floor','Left','Side',true
from SeatRow as R,
     SeatNum as N
where R.row in('P','Q','R')
and N.num >= 109
and N.num <= 121
and N.num%2 = 1;

insert into Customer values (1234, 'Mike', 'Johnson');
insert into private.Customer values (1234, '1234 5678 8765 4321');
insert into Ticket values (1,1234,'A',6,'2017-12-15 00:14:00');
insert into Ticket values (2,1234,'A',8,'2017-12-15 00:14:00');
insert into Ticket values (3,1234,'A',10,'2017-12-15 00:14:00');
insert into Ticket values (4,1234,'A',9,'2017-12-15 00:14:00');