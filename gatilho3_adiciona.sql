pragma foreign_keys = on;

create trigger gatilho3
before insert on ClientEntretainment
begin
	select case
	when
	(
		(select count(*)
		from
		(
			select *
			from Client, Entretainment
			where	Client.idPerson = New.idPerson and
					New.idService = Entretainment.idService and
					(participantType = "all" or
					participantType = "adult" and isChild = 0 or
					participantType = "children" and (childrenRank = childRank or childrenRank = "all children") and isChild = 1)
		)) <= 0
	)
	then raise (abort, "The Entretainment activity is not compatible with the Client's rank")
end;
end;
