pragma foreign_keys = on;

create trigger gatilho2
before delete on Lang
for each row
begin
	delete from LanguagePerson where idLang = Old.idLang;
end;
