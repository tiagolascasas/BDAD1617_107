pragma foreign_keys = on;

insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (18, "2017-05-06", "single", 0, 11);

select * from Meal;	--Insertion above is valid, should show up on this select

insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (19, "2017-05-06", "double", 0, 11);

select * from Meal;	--Insertion above was invalid because of meal type, shouldn't show up on this select

insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (20, "2017-10-10", "single", 0, 11);

select * from Meal;	--Insertion above was invalid because of date, shouldn't show up on this select
