.mode columns
.headers on
.nullvalue NULL

select  re.idPerson as "Person's id",
		rw.score as "Score Given",
		count(ce.idService) as "Services Enjoyed"
from 	Review rw left outer join ClientReservation re
			on re.idReservation = rw.idReservation
	 	left outer join ClientEntretainment ce
			on ce.idPerson = re.idPerson 
where 	re.idPerson is not null
group 	by ce.idService order by rw.score DESC;

