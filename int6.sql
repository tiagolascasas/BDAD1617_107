.mode columns
.headers on
.nullvalue NULL

DROP View IF EXISTS Res_days;

create view Res_days as
Select 	re.idReservation, re.beginning, re.ending from ClientReservation 
		left outer join Reservation re on re.idReservation = ClientReservation.idReservation;

select re.idReservation as "Reservation id", max( julianday(re.ending) - julianday(re.beginning))
		 as "Number of days"
from	Res_days re;
