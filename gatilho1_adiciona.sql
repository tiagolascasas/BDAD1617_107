pragma foreign_keys = on;

create trigger gatilho1
before insert on Meal
begin
	select case
	when ( (select foodRegime	--Check if the type of meal is valid
		 	from Client, Reservation, ClientReservation
			where 	Client.idPerson = ClientReservation.idPerson and
					Reservation.idReservation = ClientReservation.idReservation and
					strftime("%s", beginning) < strftime("%s", New.mealDate) and
					strftime("%s", ending) > strftime("%s", New.mealDate)) != New.typeOfMeal or
		   (select count(*)		--Check if the date is valid
			from Client, Reservation, ClientReservation
			where 	Client.idPerson = ClientReservation.idPerson and
				    Reservation.idReservation = ClientReservation.idReservation and
				    strftime("%s", beginning) < strftime("%s", New.mealDate) and
				    strftime("%s", ending) > strftime("%s", New.mealDate)) <= 0)
	then raise (abort, "Invalid type of meal or date")
end;
end;
