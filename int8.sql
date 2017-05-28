.mode columns
.headers on
.nullvalue NULL

DROP View IF EXISTS family;

create view family as
		select c.idPerson , count(c1.idPerson)+1 as Count
		from Client c
		left outer join Client c1 on c.idPerson = c1.idParent
		group by c.idPerson;


select  cr.idReservation as "Reservation Id", 
		SUM(f.Count) as "Number of people" 
from family f 
		left outer join ClientReservation cr on cr.idPerson = f.idPerson group by cr.idReservation order by SUM(f.count) DESC; 
