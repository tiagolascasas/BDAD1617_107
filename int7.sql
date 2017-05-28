.mode columns
.headers on
.nullvalue NULL

select e.name as "Activity Name", count(c.idPerson) as Viewers
FROM ClientEntretainment c
	LEFT JOIN Entretainment e ON e.idService = c.idService
group by c.idservice, e.name;

