pragma foreign_keys = on;

.mode columns
.headers on
.nullvalue NULL

select  Person.idPerson, lang
from Person, LanguagePerson, Lang
where Person.idPerson = LanguagePerson.idPerson and
	LanguagePerson.idLang = Lang.idLang;	--Show all pairs person-language

delete from Lang where lang = "English";	--remove language "English"

select  Person.idPerson, lang
from Person, LanguagePerson, Lang
where Person.idPerson = LanguagePerson.idPerson and
	LanguagePerson.idLang = Lang.idLang;	-- all pairs person-english should have been removed
