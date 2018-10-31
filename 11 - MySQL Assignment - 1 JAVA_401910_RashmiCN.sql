create table BOOK (
	bookId BIGINT not null,
	title  varchar(255) not null,
	price  decimal(5,7) not null,
	volume integer not null,
	publishDate DATE not null,
	constraint book_pk primary key (bookId));
	
create table SUBJECT (
	subjectId BIGINT not null primary key,
	subtitle  varchar(255) not null,
	durationInHours  integer not null,
	foreign key references BOOK(bookId,title,price,volume,publishDate));