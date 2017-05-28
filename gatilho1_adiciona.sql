pragma foreign_keys = on;

create trigger gatilho1
before insert on Meal
begin
	select case
	when ( (select foodRegime	--Check if the type of meal is valid
		 	from Client, Reservation, ClientReservation
			where 	Client.idPerson = ClientReservation.idPerson and
					Reservation.idReservation = ClientReservation.idReservation and
					strftime("%s", beginning) <= strftime("%s", New.mealDate) and				--Since there are no overlapping reservations,
					strftime("%s", ending) >= strftime("%s", New.mealDate)) != New.typeOfMeal or	--the date falls in a maximum of one reservation
		   (select count(*)		--Check if the date is valid (if it is, it will fall on exactly one reservation)
			from Client, Reservation, ClientReservation
			where 	Client.idPerson = ClientReservation.idPerson and
				    Reservation.idReservation = ClientReservation.idReservation and
				    strftime("%s", beginning) <= strftime("%s", New.mealDate) and
				    strftime("%s", ending) >= strftime("%s", New.mealDate)) != 1)
	then raise (abort, "Invalid type of meal or date")
end;
end;
