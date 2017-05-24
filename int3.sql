.mode columns
.headers on
.nullvalue NULL


select idRoom, sum(diff)
from (
	--Get, for each reservation, the number of days of its room
	select Room.idRoom, julianday(ending) - julianday(beginning) as diff
	from Room, Reservation
	where Reservation.idRoom = Room.idRoom
)
group by idRoom;

