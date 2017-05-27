.mode columns
.headers on
.nullvalue NULL


select idRoom, sum(diff)
from (
	--For each reservation, make a table with its room id and the number of days
	select Room.idRoom, julianday(ending) - julianday(beginning) as diff
	from Room, Reservation
	where Reservation.idRoom = Room.idRoom
)
group by idRoom; --For the same room, add the number of days of its multiple reservations
