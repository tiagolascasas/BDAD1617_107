pragma foreign_keys = on;

.mode columns
.headers on
.nullvalue NULL

select  Person.idPerson, lang
from Person, LanguagePerson, Lang
where Person.idPerson = LanguagePerson.idPerson and
	LanguagePerson.idLang = Lang.idLang;

delete from Lang where lang = "English";

select  Person.idPerson, lang
from Person, LanguagePerson, Lang
where Person.idPerson = LanguagePerson.idPerson and
	LanguagePerson.idLang = Lang.idLang;
