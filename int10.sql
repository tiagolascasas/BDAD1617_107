.mode columns
.headers on
.nullvalue NULL

select avg(entertPerWeek) as "Average", count(week) as "N. of weeks with entretainment"
from (
	select strftime("%W", entretainmentDate) as week, count(*) as entertPerWeek
	from Entretainment
	group by week
);
