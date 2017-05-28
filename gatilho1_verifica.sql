pragma foreign_keys = on;

insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (18, "2017-05-06", "single", 0, 11);
--Insertion above is valid, trigger should NOT fail

insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (19, "2017-05-06", "double", 0, 11);
--Insertion above was invalid because of meal type, trigger should fail

insert into Meal (idMeal, mealDate, typeOfMeal, idService, idPerson) values (20, "2017-10-10", "single", 0, 11);
--Insertion above was invalid because of date, trigger should fail
