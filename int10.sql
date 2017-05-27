.mode columns
.headers on
.nullvalue NULL

select avg(entertPerWeek)
from (
	select strftime("%W", entretainmentDate) as week, count(*) as entertPerWeek
	from Entretainment
	group by week
);
