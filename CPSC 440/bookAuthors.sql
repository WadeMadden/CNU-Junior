drop table if exists Book cascade;
drop table if exists Author cascade;
drop table if exists BookAuthor cascade;

create table Book (
   	Title text,
    Edition int,
    Publisher text,
    ISBN NUMERIC(13) primary key
);

create table Author (
    ID int primary key,
    Name text
);

create table BookAuthor (
    AuthorID int,
    BookISBN NUMERIC(13),
    constraint BA_FK1 foreign key (AuthorID) references Author(ID),
    constraint BA_FK2 foreign key (BookISBN) references Book(ISBN)
);  



insert into Book (Title, Edition, Publisher, ISBN) values
	('Object Oriented Design and Patterns',2,'Wiley',9780471744870),
    ('Intro to Java Programming, Comprehensive Version',10,'Pearson',9780133761313),
    ('Advanced Engineeing Mathematics',10,'Wiley',9780470458365),
    ('Computer Architecture',5,'Elsevier Science',9780123838728)
;

insert into Author (ID, Name) values
	(1,'Cay s. Horstmann'),
    (2,'Y. Daniel Liang'),
    (3,'Erwing O. Kreyszig'),
    (4,'John L. Hennessy'),
    (5,'David A. Patterson')
;

insert into BookAuthor (AuthorID, BookISBN) values
	(1,9780471744870),
    (2,9780133761313),
    (3,9780470458365),
    (4,9780123838728),
    (5,9780123838728)
;


