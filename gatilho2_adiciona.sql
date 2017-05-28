pragma foreign_keys = on;

create trigger gatilho2
after delete on Employee
for each row
begin
	delete from Person where idPerson = Old.idPerson;
	
end;
