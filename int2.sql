.mode columns
.headers on
.nullvalue NULL

select name, beginning
from Person, Client, Reservation, ClientReservation
where Person.idPerson = Client.idPerson and
		ClientReservation.idPerson = Client.idPerson and
		ClientReservation.idReservation = Reservation.idReservation and
		strftime("%s", beginning) >= strftime("%s", CURRENT_DATE)
order by date(beginning);
