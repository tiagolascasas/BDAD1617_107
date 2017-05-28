pragma foreign_keys = off;

drop table if exists Lang;
drop table if exists Reservation;
drop table if exists Room;
drop table if exists Meal;
drop table if exists Review;
drop table if exists CleaningTime;
drop table if exists Service;
drop table if exists HotelFeature;
drop table if exists Entretainment;
drop table if exists Restaurant;
drop table if exists Cleaning;
drop table if exists Employee;
drop table if exists Client;
drop table if exists Person;
drop table if exists ClientReservation;
drop table if exists LanguagePerson;
drop table if exists ClientEntretainment;

create table Lang
(
	idLang integer primary key,
	lang text unique not null
);

create table Reservation
(
	idReservation integer primary key,
	beginning date 	not null,
	ending date 	not null,
	foodRegime text not null,
	idRoom integer 	not null,
	constraint room_fkey foreign key (idRoom) references Room,
	constraint dateCheck check (ending > beginning),
	constraint regimeCheck check (	foodRegime = "single" or
									foodRegime = "double" or
									foodRegime = "triple")
);

create table Room
(
	idRoom integer primary key,
	lastCleaning date 	not null,
	numberOfBeds number not null,
	constraint nBeds check (numberOfBeds > 0 and numberOfBeds < 4)
);

create table Meal
(
	idMeal integer primary key,
	mealDate date 		not null,
	typeOfMeal text 	not null,
	idService integer 	not null,
	idPerson integer 	not null,
	constraint res_fkey foreign key (idService) references Restaurant,
	constraint cli_fkey foreign key (idPerson) references Client,
	constraint mealType check (	typeOfMeal = "single" or
								typeOfMeal = "double" or
								typeOfMeal = "triple")
);

create table Review
(
	idReview integer primary key,
	score numeric	not null,
	textReview text	not null,
	idReservation integer unique not null,
	constraint resv_fkey foreign key (idReservation) references Reservation,
	constraint scoreLimit check (score >= 1 and score <= 5)
);

create table CleaningTime
(
	idRoom integer primary key,
	idService integer	not null,
	beginning numeric	not null,
	ending numeric		not null,
	constraint uniqueHour unique (idService, beginning, ending),
	constraint room_fkey foreign key (idRoom) references Room,
	constraint cl_fkey foreign key (idService) references Cleaning,
	constraint hourCheck check (beginning < ending)
);

create table Service
(
	idService integer primary key,
	paymentPerShift real	not null,
	constraint validPay check (paymentPerShift > 0)
);

create table HotelFeature
(
	idService integer primary key,
	featureName text	not null,
	constraint ser_fkey foreign key (idService) references Service,
	constraint featureType check (	featureName = "Pool" or
									featureName = "Bar" or
									featureName = "Gym" or
									featureName = "Sauna")
);

create table Entretainment
(
	idService integer primary key,
	childrenRank text,		--can be null if participantType = all or adult
	entretainmentDate date	not null,
	beginning numeric		not null,
	ending numeric			not null,
	name text				not null,
	participantType text	not null,
	constraint ser_fkey foreign key (idService) references Service,
	constraint pType check (participantType = "children" or
							participantType = "adult" or
							participantType = "all"),
	constraint cRank check (childrenRank = "toddler" or
							childrenRank = "kid" or
							childrenRank = "teen" or
							childrenRank = "all children" or
							(childrenRank = null and participantType != "children"))
);

create table Restaurant
(
	idService integer primary key,
	closingHour numeric		not null,
	numberOfChairs numeric	not null,
	numberOfTables numeric	not null,
	openingHour numeric		not null,
	constraint ser_fkey foreign key (idService) references Service,
	constraint hourCheck check (closingHour > openingHour),
	constraint tableCheck check (numberOfChairs > numberOfTables)
);

create table Cleaning
(
	idService integer primary key,
	constraint ser_fkey foreign key (idService) references Service
);

create table Person
(
	idPerson integer primary key,
	birthDate date	not null,
	name text		not null
);

create table Employee
(
	idPerson integer primary key,
	shiftsPerMonth numeric	not null,
	idService integer		not null,
	constraint per_fkey foreign key (idPerson) references Person,
	constraint ser_fkey foreign key (idService) references Service
);

create table Client
(
	idPerson integer primary key,
	isChild boolean		not null default 0,
	childRank text,		--
	idParent integer,	-- both can be null if isChild is set to false
	constraint per_fkey foreign key (idPerson) references Person,
	constraint parent_fkey foreign key (idParent) references Client,
	constraint rankCheck check (isChild and childRank = "toddler" or
								isChild and childRank = "kid" or
								isChild and childRank = "teen" or
								(not isChild and childRank = null and idParent = null))
);

create table ClientReservation
(
	idPerson integer,
	idReservation integer,
	primary key (idPerson, idReservation),
	constraint per_fkey foreign key (idPerson) references Person,
	constraint resv_fkey foreign key (idReservation) references Reservation
);

create table LanguagePerson
(
	idPerson integer,
	idLang integer,
	primary key (idPerson, idLang),
	constraint per_fkey foreign key (idPerson) references Person,
	constraint lang_fkey foreign key (idLang) references Lang
);

create table ClientEntretainment
(
	idPerson integer,
	idService integer,
	primary key (idPerson, idService),
	constraint per_fkey foreign key (idPerson) references Person,
	constraint ser_fkey foreign key (idService) references Entretainment
);
