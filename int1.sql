.mode columns
.headers on
.nullvalue NULL

select lang, count(*) 
from LanguagePerson, Lang
where LanguagePerson.idLang = Lang.idLang
group by lang;