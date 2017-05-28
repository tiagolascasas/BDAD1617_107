.mode columns
.headers on
.nullvalue NULL

select  em.idPerson as "Employee ID", se.paymentPerShift as "Payment per Shift",
		em.shiftsPerMonth as "Shifts per Month",
		(se.paymentPerShift * em.shiftsPerMonth) as "Total per Month" 
from 	Employee em 
		left outer join Service se on em.idService = se.idService 
group by em.idService 
order by (se.paymentPerShift * em.shiftsPerMonth) DESC LIMIT 10;

