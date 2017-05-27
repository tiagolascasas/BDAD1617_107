pragma foreign_keys = on;

--Languages
insert into Lang (idLang, lang) values (0, "English");
insert into Lang (idLang, lang) values (1, "Portuguese");
insert into Lang (idLang, lang) values (2, "French");
insert into Lang (idLang, lang) values (3, "German");
insert into Lang (idLang, lang) values (4, "Italian");
insert into Lang (idLang, lang) values (5, "Spanish");
insert into Lang (idLang, lang) values (6, "Swedish");
insert into Lang (idLang, lang) values (7, "Chinese");


--Clients (including children): it assumes that any Client over 12 years of age is an adult,
--as that is what is the most common situation in the hotel business
insert into Person (idPerson, birthDate, name) values (10, "1974-01-08", "Morgan Griffin");
insert into Client (idPerson, isChild, childRank, idParent) values (10, 0, null, null);
insert into Person (idPerson, birthDate, name) values (11, "1975-03-09", "Eleanor Turner");
insert into Client (idPerson, isChild, childRank, idParent) values (11, 0, null, null);
insert into Person (idPerson, birthDate, name) values (12, "1976-04-10", "Aidan Gibbons");
insert into Client (idPerson, isChild, childRank, idParent) values (12, 0, null, null);
insert into Person (idPerson, birthDate, name) values (13, "1980-09-01", "Ethan Slater");
insert into Client (idPerson, isChild, childRank, idParent) values (13, 0, null, null);
insert into Person (idPerson, birthDate, name) values (14, "1984-05-12", "Daniel Naylor");
insert into Client (idPerson, isChild, childRank, idParent) values (14, 0, null, null);
insert into Person (idPerson, birthDate, name) values (15, "2012-02-1", "Kiera Slater");
insert into Client (idPerson, isChild, childRank, idParent) values (15, 1, "kid", 13);	--son of 13
insert into Person (idPerson, birthDate, name) values (16, "2013-12-2", "Anna Slater");
insert into Client (idPerson, isChild, childRank, idParent) values (16, 1, "kid", 13);	--son of 13
insert into Person (idPerson, birthDate, name) values (17, "2014-13-03", "Aaliyah Griffin");
insert into Client (idPerson, isChild, childRank, idParent) values (17, 1, "toddler", 10);	--son of 10
insert into Person (idPerson, birthDate, name) values (18, "2015-08-30", "Jessica Gibbons");
insert into Client (idPerson, isChild, childRank, idParent) values (18, 1, "toddler", 12);	--son of 12
insert into Person (idPerson, birthDate, name) values (20, "1965-05-18", "Katherine Cartwright");
insert into Client (idPerson, isChild, childRank, idParent) values (20, 0, null, null);
insert into Person (idPerson, birthDate, name) values (21, "1966-04-07", "Nicole Forster");
insert into Client (idPerson, isChild, childRank, idParent) values (21, 0, null, null);

--Rooms
insert into Room (idRoom, lastCleaning, numberOfBeds) values (1, "2017-04-01", 3);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (2, "2017-04-01", 3);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (3, "2017-04-01", 3);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (4, "2017-04-01", 3);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (5, "2017-04-01", 2);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (6, "2017-04-01", 2);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (7, "2017-04-01", 2);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (8, "2017-04-01", 2);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (9, "2017-04-01", 2);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (10, "2017-04-01", 2);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (11, "2017-04-01", 2);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (12, "2017-04-01", 1);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (13, "2017-04-01", 1);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (14, "2017-04-01", 1);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (15, "2017-04-01", 1);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (16, "2017-04-01", 1);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (17, "2017-04-01", 1);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (18, "2017-04-01", 1);
insert into Room (idRoom, lastCleaning, numberOfBeds) values (19, "2017-04-01", 1);

--Reservations (which have foreign keys to Room)
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (1, "2017-04-14", "2017-04-23", "triple", 1);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (2, "2017-04-26", "2017-04-28", "double", 5);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (3, "2017-05-12", "2017-05-23", "single", 12);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (4, "2017-06-01", "2017-06-11", "double", 6);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (5, "2017-05-02", "2017-05-26", "single", 13);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (6, "2017-05-15", "2017-05-30", "single", 14);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (7, "2017-06-11", "2017-06-13", "single", 15);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (8, "2017-04-12", "2017-04-25", "double", 2);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (9, "2017-05-08", "2017-05-10", "triple", 3);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (10, "2017-05-10", "2017-05-21", "double", 7);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (11, "2017-06-11", "2017-06-16", "double", 8);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (12, "2017-06-17", "2017-06-27", "single", 16);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (13, "2017-07-17", "2017-07-27", "single", 16);
insert into Reservation (idReservation, beginning, ending, foodRegime, idRoom) values (14, "2017-08-01", "2017-08-13", "single", 15);

--Reviews (since reviews are optional, there can be some reservations without reviews)
insert into Review (idReview, score, textReview, idReservation) values (1, 3, "Could have some tea bags available. It had coffee, but no tea.", 1);
insert into Review (idReview, score, textReview, idReservation) values (2, 5, "Location, property decor, staff were amazing", 2);
insert into Review (idReview, score, textReview, idReservation) values (3, 5, "Loved facilities and decoration of the place! A little gem in the heart of Porto!", 3);
insert into Review (idReview, score, textReview, idReservation) values (4, 5, "Great location, loved the old renovated building. Staff was very friendly, place was really clean, not very noisy.", 4);
insert into Review (idReview, score, textReview, idReservation) values (5, 4, "Nice apartment on the historic zone, at walking distance from a lot of historic buildings. As with many areas in Porto, there is a lot of construction, so noise may be an issue for some. Not for me.", 5);
insert into Review (idReview, score, textReview, idReservation) values (6, 3, "Kinda hard to get to and find parking for.", 6);

--ClientReservation
insert into ClientReservation (idPerson, idReservation) values (13, 1);
insert into ClientReservation (idPerson, idReservation) values (15, 1);
insert into ClientReservation (idPerson, idReservation) values (16, 1);
insert into ClientReservation (idPerson, idReservation) values (10, 2);
insert into ClientReservation (idPerson, idReservation) values (17, 2);
insert into ClientReservation (idPerson, idReservation) values (12, 4);
insert into ClientReservation (idPerson, idReservation) values (18, 4);
insert into ClientReservation (idPerson, idReservation) values (11, 5);
insert into ClientReservation (idPerson, idReservation) values (14, 6);
insert into ClientReservation (idPerson, idReservation) values (20, 8);
insert into ClientReservation (idPerson, idReservation) values (21, 8);

--Service - 4 distinct "child" associations

--Restaurant - only one, as most hotels don't have more than one Restaurant
insert into Service (idService, paymentPerShift) values (0, 30.0);
insert into Restaurant (idService, closingHour, numberOfChairs, numberOfTables, openingHour) values (0, 22, 50, 20, 7);

--Cleaning - there is one cleaning service, which is from a pratical point of view enough for a small hotel
insert into Service (idService, paymentPerShift) values (1, 20.5);
insert into Cleaning (idService) values (1);

--HotelFeature - one of each type, though it could have more than one (an hotel could choose to build a second pool, for example)
insert into Service (idService, paymentPerShift) values (2, 26.0);
insert into HotelFeature (idService, featureName) values (2, "Pool");
insert into Service (idService, paymentPerShift) values (3, 26.0);
insert into HotelFeature (idService, featureName) values (3, "Bar");
insert into Service (idService, paymentPerShift) values (4, 23.0);
insert into HotelFeature (idService, featureName) values (4, "Sauna");
insert into Service (idService, paymentPerShift) values (5, 30.0);
insert into HotelFeature (idService, featureName) values (5, "Gym");

--Entretainment
insert into Service (idService, paymentPerShift) values (6, 26.0);
insert into Entretainment (idService, childrenRank, entretainmentDate, beginning, ending, name, participantType)
			values (6, null, "2017-04-01", 16, 17, "Performance comparison between different C++ compilers", "adult");

insert into Service (idService, paymentPerShift) values (7, 26.0);
insert into Entretainment (idService, childrenRank, entretainmentDate, beginning, ending, name, participantType)
			values (7, "toddler", "2017-04-01", 14, 15, "magic show", "children");

insert into Service (idService, paymentPerShift) values (8, 26.0);
insert into Entretainment (idService, childrenRank, entretainmentDate, beginning, ending, name, participantType)
			values (8, "kid", "2017-04-02", 16, 17, "football match", "children");

insert into Service (idService, paymentPerShift) values (9, 26.0);
insert into Entretainment (idService, childrenRank, entretainmentDate, beginning, ending, name, participantType)
			values (9, "all children", "2017-04-03", 16, 17, "movies", "children");

insert into Service (idService, paymentPerShift) values (10, 26.0);
insert into Entretainment (idService, childrenRank, entretainmentDate, beginning, ending, name, participantType)
			values (10, null, "2017-04-05", 21, 23, "exotic animals display", "all");

insert into Service (idService, paymentPerShift) values (11, 26.0);
insert into Entretainment (idService, childrenRank, entretainmentDate, beginning, ending, name, participantType)
			values (11, null, "2017-07-05", 11, 12, "basketball match", "all");

insert into Service (idService, paymentPerShift) values (12, 26.0);
insert into Entretainment (idService, childrenRank, entretainmentDate, beginning, ending, name, participantType)
			values (12, null, "2017-06-02", 16, 17, "theatre", "all");

insert into Service (idService, paymentPerShift) values (13, 26.0);
insert into Entretainment (idService, childrenRank, entretainmentDate, beginning, ending, name, participantType)
			values (13, null, "2017-06-03", 21, 22, "karaoke", "all");

insert into Service (idService, paymentPerShift) values (14, 26.0);
insert into Entretainment (idService, childrenRank, entretainmentDate, beginning, ending, name, participantType)
			values (14, null, "2017-06-04", 18, 20, "paintball", "all");

--ClientEntretainment
insert into ClientEntretainment (idPerson, idService) values (10, 6);
insert into ClientEntretainment (idPerson, idService) values (10, 10);
insert into ClientEntretainment (idPerson, idService) values (11, 6);
insert into ClientEntretainment (idPerson, idService) values (11, 10);
insert into ClientEntretainment (idPerson, idService) values (12, 6);
insert into ClientEntretainment (idPerson, idService) values (12, 10);
insert into ClientEntretainment (idPerson, idService) values (13, 6);
insert into ClientEntretainment (idPerson, idService) values (14, 10);
insert into ClientEntretainment (idPerson, idService) values (15, 8);	--15 and 16 are kids
insert into ClientEntretainment (idPerson, idService) values (15, 10);
insert into ClientEntretainment (idPerson, idService) values (16, 8);
insert into ClientEntretainment (idPerson, idService) values (16, 9);
insert into ClientEntretainment (idPerson, idService) values (17, 7);	--17 and 18 are toddlers
insert into ClientEntretainment (idPerson, idService) values (17, 8);
insert into ClientEntretainment (idPerson, idService) values (17, 10);
insert into ClientEntretainment (idPerson, idService) values (18, 7);
insert into ClientEntretainment (idPerson, idService) values (20, 10);
insert into ClientEntretainment (idPerson, idService) values (20, 6);
insert into ClientEntretainment (idPerson, idService) values (21, 10);

--CleaningTime - when considering the hours, 12:30 becomes 1230, for example
insert into CleaningTime (idRoom, idService, beginning, ending) values (1, 1, 1200, 1220);
insert into CleaningTime (idRoom, idService, beginning, ending) values (2, 1, 1220, 1240);
insert into CleaningTime (idRoom, idService, beginning, ending) values (3, 1, 1240, 1300);
insert into CleaningTime (idRoom, idService, beginning, ending) values (4, 1, 1320, 1340);
insert into CleaningTime (idRoom, idService, beginning, ending) values (5, 1, 1340, 1400);
insert into CleaningTime (idRoom, idService, beginning, ending) values (6, 1, 1400, 1420);
insert into CleaningTime (idRoom, idService, beginning, ending) values (7, 1, 1420, 1440);
insert into CleaningTime (idRoom, idService, beginning, ending) values (8, 1, 1440, 1500);
insert into CleaningTime (idRoom, idService, beginning, ending) values (9, 1, 1500, 1520);
insert into CleaningTime (idRoom, idService, beginning, ending) values (10, 1, 1520, 1540);
insert into CleaningTime (idRoom, idService, beginning, ending) values (11, 1, 1540, 1600);
insert into CleaningTime (idRoom, idService, beginning, ending) values (12, 1, 1600, 1620);
insert into CleaningTime (idRoom, idService, beginning, ending) values (13, 1, 1620, 1640);
insert into CleaningTime (idRoom, idService, beginning, ending) values (14, 1, 1640, 1700);
insert into CleaningTime (idRoom, idService, beginning, ending) values (15, 1, 1700, 1720);
insert into CleaningTime (idRoom, idService, beginning, ending) values (16, 1, 1720, 1740);
insert into CleaningTime (idRoom, idService, beginning, ending) values (17, 1, 1740, 1800);
insert into CleaningTime (idRoom, idService, beginning, ending) values (18, 1, 1800, 1820);
insert into CleaningTime (idRoom, idService, beginning, ending) values (19, 1, 1820, 1840);

--Meal
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (0, "2017-04-14", "triple", 0, 13); 	--inserted meals for three clients of a single reservation during three days
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (1, "2017-04-14", "triple", 0, 15);	--note that the "triple" argument is not related to the number of people,
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (2, "2017-04-14", "triple", 0, 16);	--but the number of meals the client associated can have on that day
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (3, "2017-04-15", "triple", 0, 13);
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (4, "2017-04-15", "triple", 0, 15);
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (5, "2017-04-15", "triple", 0, 16);
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (6, "2017-04-16", "triple", 0, 13);
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (7, "2017-04-16", "triple", 0, 15);
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (8, "2017-04-16", "triple", 0, 16);
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (9, "2017-04-12", "double", 0, 20);	--inserted meals for two clients of a single reservation during two days
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (10, "2017-04-13", "double", 0, 20);
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (11, "2017-04-12", "double", 0, 21);
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (12, "2017-04-13", "double", 0, 21);
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (13, "2017-05-02", "single", 0, 11);--inserted meals for one client of a single reservation during five days
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (14, "2017-05-03", "single", 0, 11);
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (15, "2017-05-04", "single", 0, 11);
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (16, "2017-05-05", "single", 0, 11);
insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (17, "2017-05-06", "single", 0, 11);


--Employees - each employee can only work at one service, but a service can have many employees
insert into Person (idPerson, birthDate, name) values (0, "1980-07-01", "Nicholas Chapman");
insert into Employee (idPerson, shiftsPerMonth, idService) values (0, 30, 0);	--restaurant
insert into Person (idPerson, birthDate, name) values (1, "1981-04-15", "Anna Mahmood");
insert into Employee (idPerson, shiftsPerMonth, idService) values (1, 25, 0);	--restaurant
insert into Person (idPerson, birthDate, name) values (2, "1982-03-23", "Noah Ryan");
insert into Employee (idPerson, shiftsPerMonth, idService) values (2, 27, 0);	--restaurant
insert into Person (idPerson, birthDate, name) values (3, "1983-02-03", "Freddie Wong");
insert into Employee (idPerson, shiftsPerMonth, idService) values (3, 35, 1);	--cleaning
insert into Person (idPerson, birthDate, name) values (4, "1984-11-04", "Francesca Harding");
insert into Employee (idPerson, shiftsPerMonth, idService) values (4, 33, 1);	--cleaning
insert into Person (idPerson, birthDate, name) values (5, "1985-10-05", "Zak	Barlow");
insert into Employee (idPerson, shiftsPerMonth, idService) values (5, 31, 2);	--pool
insert into Person (idPerson, birthDate, name) values (6, "1970-08-06", "Freya Knight");
insert into Employee (idPerson, shiftsPerMonth, idService) values (6, 30, 3);	--bar
insert into Person (idPerson, birthDate, name) values (7, "1974-02-07", "Isabelle Chapman");
insert into Employee (idPerson, shiftsPerMonth, idService) values (7, 29, 4);	--sauna
insert into Person (idPerson, birthDate, name) values (8, "1975-02-07", "Luke Gallagher");
insert into Employee (idPerson, shiftsPerMonth, idService) values (8, 29, 5);	--gym
insert into Person (idPerson, birthDate, name) values (9, "1978-9-14", "Billy Reid");
insert into Employee (idPerson, shiftsPerMonth, idService) values (9, 29, 6);	--entretainment
insert into Person (idPerson, birthDate, name) values (22, "1954-11-12", "Molly Davison");
insert into Employee (idPerson, shiftsPerMonth, idService) values (22, 29, 7);	--entretainment
insert into Person (idPerson, birthDate, name) values (23, "1992-02-17", "Ava Holmes");
insert into Employee (idPerson, shiftsPerMonth, idService) values (23, 29, 8);	--entretainment
insert into Person (idPerson, birthDate, name) values (24, "1990-07-05", "Zachary Morley");
insert into Employee (idPerson, shiftsPerMonth, idService) values (24, 29, 9);	--entretainment
insert into Person (idPerson, birthDate, name) values (25, "19786-04-30", "Kai Godfrey");
insert into Employee (idPerson, shiftsPerMonth, idService) values (25, 29, 9);	--entretainment
insert into Person (idPerson, birthDate, name) values (26, "1977-03-22", "Mollie Coates");
insert into Employee (idPerson, shiftsPerMonth, idService) values (26, 29, 10);	--entretainment
insert into Person (idPerson, birthDate, name) values (27, "1987-01-26", "Daisy Leach");
insert into Employee (idPerson, shiftsPerMonth, idService) values (27, 29, 10);	--entretainment

--LanguagePerson
insert into LanguagePerson (idPerson, idLang) values (0, 0);
insert into LanguagePerson (idPerson, idLang) values (0, 1);
insert into LanguagePerson (idPerson, idLang) values (1, 0);
insert into LanguagePerson (idPerson, idLang) values (1, 2);
insert into LanguagePerson (idPerson, idLang) values (2, 0);
insert into LanguagePerson (idPerson, idLang) values (2, 3);
insert into LanguagePerson (idPerson, idLang) values (3, 0);
insert into LanguagePerson (idPerson, idLang) values (3, 2);
insert into LanguagePerson (idPerson, idLang) values (4, 0);
insert into LanguagePerson (idPerson, idLang) values (4, 1);
insert into LanguagePerson (idPerson, idLang) values (4, 4);
insert into LanguagePerson (idPerson, idLang) values (5, 0);
insert into LanguagePerson (idPerson, idLang) values (5, 2);
insert into LanguagePerson (idPerson, idLang) values (6, 0);
insert into LanguagePerson (idPerson, idLang) values (6, 6);
insert into LanguagePerson (idPerson, idLang) values (7, 0);
insert into LanguagePerson (idPerson, idLang) values (7, 7);
insert into LanguagePerson (idPerson, idLang) values (7, 2);
insert into LanguagePerson (idPerson, idLang) values (8, 0);
insert into LanguagePerson (idPerson, idLang) values (9, 0);
insert into LanguagePerson (idPerson, idLang) values (9, 2);
insert into LanguagePerson (idPerson, idLang) values (10, 2);
insert into LanguagePerson (idPerson, idLang) values (11, 2);
insert into LanguagePerson (idPerson, idLang) values (11, 3);
insert into LanguagePerson (idPerson, idLang) values (12, 0);
insert into LanguagePerson (idPerson, idLang) values (12, 4);
insert into LanguagePerson (idPerson, idLang) values (13, 0);
insert into LanguagePerson (idPerson, idLang) values (13, 6);
insert into LanguagePerson (idPerson, idLang) values (14, 0);
insert into LanguagePerson (idPerson, idLang) values (15, 0);
insert into LanguagePerson (idPerson, idLang) values (16, 0);
insert into LanguagePerson (idPerson, idLang) values (17, 0);
insert into LanguagePerson (idPerson, idLang) values (18, 0);
insert into LanguagePerson (idPerson, idLang) values (20, 0);
insert into LanguagePerson (idPerson, idLang) values (20, 1);
insert into LanguagePerson (idPerson, idLang) values (21, 0);
insert into LanguagePerson (idPerson, idLang) values (22, 0);
insert into LanguagePerson (idPerson, idLang) values (22, 2);
insert into LanguagePerson (idPerson, idLang) values (23, 0);
insert into LanguagePerson (idPerson, idLang) values (24, 0);
insert into LanguagePerson (idPerson, idLang) values (25, 0);
insert into LanguagePerson (idPerson, idLang) values (25, 5);
insert into LanguagePerson (idPerson, idLang) values (26, 0);
insert into LanguagePerson (idPerson, idLang) values (26, 2);
insert into LanguagePerson (idPerson, idLang) values (27, 0);
insert into LanguagePerson (idPerson, idLang) values (27, 3);
